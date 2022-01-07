; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_get_irq_props.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_get_irq_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdesc_handle = type { i32 }
%struct.spu_mdesc_info = type { i32, %struct.ino_blob* }
%struct.ino_blob = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ino\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"NO 'ino'\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdesc_handle*, i32, %struct.spu_mdesc_info*)* @get_irq_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_irq_props(%struct.mdesc_handle* %0, i32 %1, %struct.spu_mdesc_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mdesc_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.spu_mdesc_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ino_blob*, align 8
  store %struct.mdesc_handle* %0, %struct.mdesc_handle** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.spu_mdesc_info* %2, %struct.spu_mdesc_info** %7, align 8
  %12 = load %struct.mdesc_handle*, %struct.mdesc_handle** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32* @mdesc_get_property(%struct.mdesc_handle* %12, i32 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = call i32 @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %74

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = udiv i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = load %struct.spu_mdesc_info*, %struct.spu_mdesc_info** %7, align 8
  %27 = getelementptr inbounds %struct.spu_mdesc_info, %struct.spu_mdesc_info* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.spu_mdesc_info*, %struct.spu_mdesc_info** %7, align 8
  %29 = getelementptr inbounds %struct.spu_mdesc_info, %struct.spu_mdesc_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = mul i64 8, %31
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.ino_blob* @kzalloc(i32 %33, i32 %34)
  %36 = load %struct.spu_mdesc_info*, %struct.spu_mdesc_info** %7, align 8
  %37 = getelementptr inbounds %struct.spu_mdesc_info, %struct.spu_mdesc_info* %36, i32 0, i32 1
  store %struct.ino_blob* %35, %struct.ino_blob** %37, align 8
  %38 = load %struct.spu_mdesc_info*, %struct.spu_mdesc_info** %7, align 8
  %39 = getelementptr inbounds %struct.spu_mdesc_info, %struct.spu_mdesc_info* %38, i32 0, i32 1
  %40 = load %struct.ino_blob*, %struct.ino_blob** %39, align 8
  %41 = icmp ne %struct.ino_blob* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %21
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %74

45:                                               ; preds = %21
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %70, %45
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.spu_mdesc_info*, %struct.spu_mdesc_info** %7, align 8
  %49 = getelementptr inbounds %struct.spu_mdesc_info, %struct.spu_mdesc_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %46
  %53 = load %struct.spu_mdesc_info*, %struct.spu_mdesc_info** %7, align 8
  %54 = getelementptr inbounds %struct.spu_mdesc_info, %struct.spu_mdesc_info* %53, i32 0, i32 1
  %55 = load %struct.ino_blob*, %struct.ino_blob** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.ino_blob, %struct.ino_blob* %55, i64 %57
  store %struct.ino_blob* %58, %struct.ino_blob** %11, align 8
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  %61 = load %struct.ino_blob*, %struct.ino_blob** %11, align 8
  %62 = getelementptr inbounds %struct.ino_blob, %struct.ino_blob* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ino_blob*, %struct.ino_blob** %11, align 8
  %69 = getelementptr inbounds %struct.ino_blob, %struct.ino_blob* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %52
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %46

73:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %42, %17
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32* @mdesc_get_property(%struct.mdesc_handle*, i32, i8*, i32*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local %struct.ino_blob* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
