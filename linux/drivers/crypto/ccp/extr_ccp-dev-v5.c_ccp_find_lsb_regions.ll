; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v5.c_ccp_find_lsb_regions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v5.c_ccp_find_lsb_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_cmd_queue = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@MAX_LSB_CNT = common dso_local global i32 0, align 4
@LSB_REGION_WIDTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Queue %d can access %d LSB regions\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccp_cmd_queue*, i32)* @ccp_find_lsb_regions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_find_lsb_regions(%struct.ccp_cmd_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.ccp_cmd_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ccp_cmd_queue* %0, %struct.ccp_cmd_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %3, align 8
  %9 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = shl i32 1, %10
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %12

12:                                               ; preds = %31, %2
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @MAX_LSB_CNT, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %3, align 8
  %23 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @bitmap_set(i32 %24, i32 %25, i32 1)
  br label %27

27:                                               ; preds = %21, %16
  %28 = load i32, i32* @LSB_REGION_WIDTH, align 4
  %29 = load i32, i32* %4, align 4
  %30 = ashr i32 %29, %28
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %12

34:                                               ; preds = %12
  %35 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %3, align 8
  %36 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MAX_LSB_CNT, align 4
  %39 = call i32 @bitmap_weight(i32 %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %3, align 8
  %41 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %3, align 8
  %46 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %34
  br label %56

53:                                               ; preds = %34
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  br label %56

56:                                               ; preds = %53, %52
  %57 = phi i32 [ 0, %52 ], [ %55, %53 ]
  ret i32 %57
}

declare dso_local i32 @bitmap_set(i32, i32, i32) #1

declare dso_local i32 @bitmap_weight(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
