; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_dscl.c_dpp1_dscl_set_overscan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_dscl.c_dpp1_dscl_set_overscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn10_dpp = type { i32 }
%struct.scaler_data = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@DSCL_EXT_OVERSCAN_LEFT_RIGHT = common dso_local global i32 0, align 4
@EXT_OVERSCAN_LEFT = common dso_local global i32 0, align 4
@EXT_OVERSCAN_RIGHT = common dso_local global i32 0, align 4
@DSCL_EXT_OVERSCAN_TOP_BOTTOM = common dso_local global i32 0, align 4
@EXT_OVERSCAN_BOTTOM = common dso_local global i32 0, align 4
@EXT_OVERSCAN_TOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcn10_dpp*, %struct.scaler_data*)* @dpp1_dscl_set_overscan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpp1_dscl_set_overscan(%struct.dcn10_dpp* %0, %struct.scaler_data* %1) #0 {
  %3 = alloca %struct.dcn10_dpp*, align 8
  %4 = alloca %struct.scaler_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dcn10_dpp* %0, %struct.dcn10_dpp** %3, align 8
  store %struct.scaler_data* %1, %struct.scaler_data** %4, align 8
  %9 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %10 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %14 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %18 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %21 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %19, %23
  %25 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %26 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %24, %28
  store i32 %29, i32* %7, align 4
  %30 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %31 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %34 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %32, %36
  %38 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %39 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %37, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %2
  %46 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %45, %2
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %50, %47
  %53 = load i32, i32* @DSCL_EXT_OVERSCAN_LEFT_RIGHT, align 4
  %54 = load i32, i32* @EXT_OVERSCAN_LEFT, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @EXT_OVERSCAN_RIGHT, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @REG_SET_2(i32 %53, i32 0, i32 %54, i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* @DSCL_EXT_OVERSCAN_TOP_BOTTOM, align 4
  %60 = load i32, i32* @EXT_OVERSCAN_BOTTOM, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @EXT_OVERSCAN_TOP, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @REG_SET_2(i32 %59, i32 0, i32 %60, i32 %61, i32 %62, i32 %63)
  ret void
}

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
