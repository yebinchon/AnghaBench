; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_transform_v.c_program_overscan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_transform_v.c_program_overscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_transform = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.scaler_data = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@VISUAL_CONFIRM_DISABLE = common dso_local global i64 0, align 8
@EXT_OVERSCAN_LEFT_RIGHT = common dso_local global i32 0, align 4
@EXT_OVERSCAN_LEFT = common dso_local global i32 0, align 4
@EXT_OVERSCAN_RIGHT = common dso_local global i32 0, align 4
@EXT_OVERSCAN_TOP_BOTTOM = common dso_local global i32 0, align 4
@EXT_OVERSCAN_TOP = common dso_local global i32 0, align 4
@EXT_OVERSCAN_BOTTOM = common dso_local global i32 0, align 4
@mmSCLV_EXT_OVERSCAN_LEFT_RIGHT = common dso_local global i32 0, align 4
@mmSCLV_EXT_OVERSCAN_TOP_BOTTOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_transform*, %struct.scaler_data*)* @program_overscan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_overscan(%struct.dce_transform* %0, %struct.scaler_data* %1) #0 {
  %3 = alloca %struct.dce_transform*, align 8
  %4 = alloca %struct.scaler_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dce_transform* %0, %struct.dce_transform** %3, align 8
  store %struct.scaler_data* %1, %struct.scaler_data** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %10 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %13 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %11, %15
  %17 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %18 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %16, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %23 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %26 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %24, %28
  %30 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %31 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %29, %33
  store i32 %34, i32* %8, align 4
  %35 = load %struct.dce_transform*, %struct.dce_transform** %3, align 8
  %36 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @VISUAL_CONFIRM_DISABLE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %2
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 2
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 2
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %46, %2
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %54, %51
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %64 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @EXT_OVERSCAN_LEFT_RIGHT, align 4
  %68 = load i32, i32* @EXT_OVERSCAN_LEFT, align 4
  %69 = call i32 @set_reg_field_value(i32 %62, i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @EXT_OVERSCAN_LEFT_RIGHT, align 4
  %73 = load i32, i32* @EXT_OVERSCAN_RIGHT, align 4
  %74 = call i32 @set_reg_field_value(i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %77 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @EXT_OVERSCAN_TOP_BOTTOM, align 4
  %81 = load i32, i32* @EXT_OVERSCAN_TOP, align 4
  %82 = call i32 @set_reg_field_value(i32 %75, i32 %79, i32 %80, i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @EXT_OVERSCAN_TOP_BOTTOM, align 4
  %86 = load i32, i32* @EXT_OVERSCAN_BOTTOM, align 4
  %87 = call i32 @set_reg_field_value(i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = load %struct.dce_transform*, %struct.dce_transform** %3, align 8
  %89 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = load i32, i32* @mmSCLV_EXT_OVERSCAN_LEFT_RIGHT, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @dm_write_reg(%struct.TYPE_10__* %91, i32 %92, i32 %93)
  %95 = load %struct.dce_transform*, %struct.dce_transform** %3, align 8
  %96 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = load i32, i32* @mmSCLV_EXT_OVERSCAN_TOP_BOTTOM, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @dm_write_reg(%struct.TYPE_10__* %98, i32 %99, i32 %100)
  ret void
}

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
