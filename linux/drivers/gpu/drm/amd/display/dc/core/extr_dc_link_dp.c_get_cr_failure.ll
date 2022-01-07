; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_get_cr_failure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_get_cr_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.lane_status = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LINK_TRAINING_SUCCESS = common dso_local global i32 0, align 4
@LANE_COUNT_ONE = common dso_local global i32 0, align 4
@LINK_TRAINING_CR_FAIL_LANE0 = common dso_local global i32 0, align 4
@LANE_COUNT_TWO = common dso_local global i32 0, align 4
@LINK_TRAINING_CR_FAIL_LANE1 = common dso_local global i32 0, align 4
@LANE_COUNT_FOUR = common dso_local global i32 0, align 4
@LINK_TRAINING_CR_FAIL_LANE23 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %union.lane_status*)* @get_cr_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cr_failure(i32 %0, %union.lane_status* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.lane_status*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %union.lane_status* %1, %union.lane_status** %4, align 8
  %6 = load i32, i32* @LINK_TRAINING_SUCCESS, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @LANE_COUNT_ONE, align 4
  %9 = icmp uge i32 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %union.lane_status*, %union.lane_status** %4, align 8
  %12 = getelementptr inbounds %union.lane_status, %union.lane_status* %11, i64 0
  %13 = bitcast %union.lane_status* %12 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = load i32, i32* @LINK_TRAINING_CR_FAIL_LANE0, align 4
  store i32 %18, i32* %5, align 4
  br label %61

19:                                               ; preds = %10, %2
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @LANE_COUNT_TWO, align 4
  %22 = icmp uge i32 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load %union.lane_status*, %union.lane_status** %4, align 8
  %25 = getelementptr inbounds %union.lane_status, %union.lane_status* %24, i64 1
  %26 = bitcast %union.lane_status* %25 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @LINK_TRAINING_CR_FAIL_LANE1, align 4
  store i32 %31, i32* %5, align 4
  br label %60

32:                                               ; preds = %23, %19
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @LANE_COUNT_FOUR, align 4
  %35 = icmp uge i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load %union.lane_status*, %union.lane_status** %4, align 8
  %38 = getelementptr inbounds %union.lane_status, %union.lane_status* %37, i64 2
  %39 = bitcast %union.lane_status* %38 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @LINK_TRAINING_CR_FAIL_LANE23, align 4
  store i32 %44, i32* %5, align 4
  br label %59

45:                                               ; preds = %36, %32
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @LANE_COUNT_FOUR, align 4
  %48 = icmp uge i32 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load %union.lane_status*, %union.lane_status** %4, align 8
  %51 = getelementptr inbounds %union.lane_status, %union.lane_status* %50, i64 3
  %52 = bitcast %union.lane_status* %51 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* @LINK_TRAINING_CR_FAIL_LANE23, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %56, %49, %45
  br label %59

59:                                               ; preds = %58, %43
  br label %60

60:                                               ; preds = %59, %30
  br label %61

61:                                               ; preds = %60, %17
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
