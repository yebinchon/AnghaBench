; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_spu_map_ino.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_spu_map_ino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.spu_mdesc_info = type { i32 }
%struct.spu_queue = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.spu_mdesc_info*, i8*, %struct.spu_queue*, i32)* @spu_map_ino to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_map_ino(%struct.platform_device* %0, %struct.spu_mdesc_info* %1, i8* %2, %struct.spu_queue* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.spu_mdesc_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.spu_queue*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %7, align 8
  store %struct.spu_mdesc_info* %1, %struct.spu_mdesc_info** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.spu_queue* %3, %struct.spu_queue** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.spu_queue*, %struct.spu_queue** %10, align 8
  %15 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.spu_queue*, %struct.spu_queue** %10, align 8
  %18 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %17, i32 0, i32 2
  %19 = call i64 @sun4v_ncs_qhandle_to_devino(i32 %16, i32* %18)
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %12, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %62

25:                                               ; preds = %5
  %26 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %27 = load %struct.spu_mdesc_info*, %struct.spu_mdesc_info** %8, align 8
  %28 = load %struct.spu_queue*, %struct.spu_queue** %10, align 8
  %29 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @find_devino_index(%struct.platform_device* %26, %struct.spu_mdesc_info* %27, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %6, align 4
  br label %62

36:                                               ; preds = %25
  %37 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.spu_queue*, %struct.spu_queue** %10, align 8
  %46 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.spu_queue*, %struct.spu_queue** %10, align 8
  %48 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @sprintf(i32 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %50, i32 %51)
  %53 = load %struct.spu_queue*, %struct.spu_queue** %10, align 8
  %54 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.spu_queue*, %struct.spu_queue** %10, align 8
  %58 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.spu_queue*, %struct.spu_queue** %10, align 8
  %61 = call i32 @request_irq(i32 %55, i32 %56, i32 0, i32 %59, %struct.spu_queue* %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %36, %34, %22
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i64 @sun4v_ncs_qhandle_to_devino(i32, i32*) #1

declare dso_local i32 @find_devino_index(%struct.platform_device*, %struct.spu_mdesc_info*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.spu_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
