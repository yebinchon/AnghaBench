; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_get_performance_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_get_performance_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.smu8_hwmgr* }
%struct.smu8_hwmgr = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.pp_hw_power_state = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i64, i64, i32 }
%struct.smu8_power_state = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PHM_PerformanceLevelDesignation_PowerContainment = common dso_local global i64 0, align 8
@SMU8_NUM_NBPMEMORYCLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.pp_hw_power_state*, i64, i32, %struct.TYPE_7__*)* @smu8_get_performance_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_get_performance_level(%struct.pp_hwmgr* %0, %struct.pp_hw_power_state* %1, i64 %2, i32 %3, %struct.TYPE_7__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pp_hwmgr*, align 8
  %8 = alloca %struct.pp_hw_power_state*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.smu8_power_state*, align 8
  %13 = alloca %struct.smu8_hwmgr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %7, align 8
  store %struct.pp_hw_power_state* %1, %struct.pp_hw_power_state** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %11, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %17 = icmp eq %struct.TYPE_7__* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %5
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %20 = icmp eq %struct.pp_hwmgr* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load %struct.pp_hw_power_state*, %struct.pp_hw_power_state** %8, align 8
  %23 = icmp eq %struct.pp_hw_power_state* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21, %18, %5
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %140

27:                                               ; preds = %21
  %28 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %29 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %28, i32 0, i32 0
  %30 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %29, align 8
  store %struct.smu8_hwmgr* %30, %struct.smu8_hwmgr** %13, align 8
  %31 = load %struct.pp_hw_power_state*, %struct.pp_hw_power_state** %8, align 8
  %32 = call %struct.smu8_power_state* @cast_const_smu8_power_state(%struct.pp_hw_power_state* %31)
  store %struct.smu8_power_state* %32, %struct.smu8_power_state** %12, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.smu8_power_state*, %struct.smu8_power_state** %12, align 8
  %35 = getelementptr inbounds %struct.smu8_power_state, %struct.smu8_power_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = icmp sgt i32 %33, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %27
  %40 = load %struct.smu8_power_state*, %struct.smu8_power_state** %12, align 8
  %41 = getelementptr inbounds %struct.smu8_power_state, %struct.smu8_power_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  br label %46

44:                                               ; preds = %27
  %45 = load i32, i32* %10, align 4
  br label %46

46:                                               ; preds = %44, %39
  %47 = phi i32 [ %43, %39 ], [ %45, %44 ]
  store i32 %47, i32* %14, align 4
  %48 = load %struct.smu8_power_state*, %struct.smu8_power_state** %12, align 8
  %49 = getelementptr inbounds %struct.smu8_power_state, %struct.smu8_power_state* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* @PHM_PerformanceLevelDesignation_PowerContainment, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %97

61:                                               ; preds = %46
  store i32 1, i32* %15, align 4
  br label %62

62:                                               ; preds = %93, %61
  %63 = load i32, i32* %15, align 4
  %64 = load %struct.smu8_power_state*, %struct.smu8_power_state** %12, align 8
  %65 = getelementptr inbounds %struct.smu8_power_state, %struct.smu8_power_state* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %96

68:                                               ; preds = %62
  %69 = load %struct.smu8_power_state*, %struct.smu8_power_state** %12, align 8
  %70 = getelementptr inbounds %struct.smu8_power_state, %struct.smu8_power_state* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %13, align 8
  %78 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %76, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %68
  %82 = load %struct.smu8_power_state*, %struct.smu8_power_state** %12, align 8
  %83 = getelementptr inbounds %struct.smu8_power_state, %struct.smu8_power_state* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %96

92:                                               ; preds = %68
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %15, align 4
  br label %62

96:                                               ; preds = %81, %62
  br label %97

97:                                               ; preds = %96, %46
  %98 = load i32, i32* %14, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %97
  %101 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %13, align 8
  %102 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* @SMU8_NUM_NBPMEMORYCLOCK, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 8
  br label %121

112:                                              ; preds = %97
  %113 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %13, align 8
  %114 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 8
  br label %121

121:                                              ; preds = %112, %100
  %122 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %123 = load %struct.smu8_power_state*, %struct.smu8_power_state** %12, align 8
  %124 = getelementptr inbounds %struct.smu8_power_state, %struct.smu8_power_state* %123, i32 0, i32 1
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @smu8_convert_8Bit_index_to_voltage(%struct.pp_hwmgr* %122, i32 %130)
  %132 = add nsw i32 %131, 2
  %133 = sdiv i32 %132, 4
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 3
  store i64 0, i64* %137, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 2
  store i64 0, i64* %139, align 8
  store i32 0, i32* %6, align 4
  br label %140

140:                                              ; preds = %121, %24
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local %struct.smu8_power_state* @cast_const_smu8_power_state(%struct.pp_hw_power_state*) #1

declare dso_local i32 @smu8_convert_8Bit_index_to_voltage(%struct.pp_hwmgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
