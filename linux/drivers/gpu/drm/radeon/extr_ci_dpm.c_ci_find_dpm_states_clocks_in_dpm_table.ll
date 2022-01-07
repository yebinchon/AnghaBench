; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_find_dpm_states_clocks_in_dpm_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_find_dpm_states_clocks_in_dpm_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.radeon_ps = type { i32 }
%struct.ci_power_info = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ci_single_dpm_table, %struct.ci_single_dpm_table }
%struct.ci_single_dpm_table = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.ci_ps = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }

@DPMTABLE_OD_UPDATE_SCLK = common dso_local global i32 0, align 4
@CISLAND_MINIMUM_ENGINE_CLOCK = common dso_local global i64 0, align 8
@DPMTABLE_UPDATE_SCLK = common dso_local global i32 0, align 4
@DPMTABLE_OD_UPDATE_MCLK = common dso_local global i32 0, align 4
@DPMTABLE_UPDATE_MCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*)* @ci_find_dpm_states_clocks_in_dpm_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ci_find_dpm_states_clocks_in_dpm_table(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca %struct.ci_power_info*, align 8
  %6 = alloca %struct.ci_ps*, align 8
  %7 = alloca %struct.ci_single_dpm_table*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ci_single_dpm_table*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %4, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %12)
  store %struct.ci_power_info* %13, %struct.ci_power_info** %5, align 8
  %14 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %15 = call %struct.ci_ps* @ci_get_ps(%struct.radeon_ps* %14)
  store %struct.ci_ps* %15, %struct.ci_ps** %6, align 8
  %16 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %17 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store %struct.ci_single_dpm_table* %18, %struct.ci_single_dpm_table** %7, align 8
  %19 = load %struct.ci_ps*, %struct.ci_ps** %6, align 8
  %20 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = load %struct.ci_ps*, %struct.ci_ps** %6, align 8
  %23 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %8, align 8
  %30 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %31 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store %struct.ci_single_dpm_table* %32, %struct.ci_single_dpm_table** %9, align 8
  %33 = load %struct.ci_ps*, %struct.ci_ps** %6, align 8
  %34 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %33, i32 0, i32 1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = load %struct.ci_ps*, %struct.ci_ps** %6, align 8
  %37 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %10, align 8
  %44 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %45 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  store i64 0, i64* %11, align 8
  br label %46

46:                                               ; preds = %64, %2
  %47 = load i64, i64* %11, align 8
  %48 = load %struct.ci_single_dpm_table*, %struct.ci_single_dpm_table** %7, align 8
  %49 = getelementptr inbounds %struct.ci_single_dpm_table, %struct.ci_single_dpm_table* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %47, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %46
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.ci_single_dpm_table*, %struct.ci_single_dpm_table** %7, align 8
  %55 = getelementptr inbounds %struct.ci_single_dpm_table, %struct.ci_single_dpm_table* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %53, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %67

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %11, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %11, align 8
  br label %46

67:                                               ; preds = %62, %46
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.ci_single_dpm_table*, %struct.ci_single_dpm_table** %7, align 8
  %70 = getelementptr inbounds %struct.ci_single_dpm_table, %struct.ci_single_dpm_table* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp uge i64 %68, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load i32, i32* @DPMTABLE_OD_UPDATE_SCLK, align 4
  %75 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %76 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %90

79:                                               ; preds = %67
  %80 = load i64, i64* @CISLAND_MINIMUM_ENGINE_CLOCK, align 8
  %81 = load i64, i64* @CISLAND_MINIMUM_ENGINE_CLOCK, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i32, i32* @DPMTABLE_UPDATE_SCLK, align 4
  %85 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %86 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %83, %79
  br label %90

90:                                               ; preds = %89, %73
  store i64 0, i64* %11, align 8
  br label %91

91:                                               ; preds = %109, %90
  %92 = load i64, i64* %11, align 8
  %93 = load %struct.ci_single_dpm_table*, %struct.ci_single_dpm_table** %9, align 8
  %94 = getelementptr inbounds %struct.ci_single_dpm_table, %struct.ci_single_dpm_table* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ult i64 %92, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %91
  %98 = load i64, i64* %10, align 8
  %99 = load %struct.ci_single_dpm_table*, %struct.ci_single_dpm_table** %9, align 8
  %100 = getelementptr inbounds %struct.ci_single_dpm_table, %struct.ci_single_dpm_table* %99, i32 0, i32 1
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = load i64, i64* %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %98, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  br label %112

108:                                              ; preds = %97
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %11, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %11, align 8
  br label %91

112:                                              ; preds = %107, %91
  %113 = load i64, i64* %11, align 8
  %114 = load %struct.ci_single_dpm_table*, %struct.ci_single_dpm_table** %9, align 8
  %115 = getelementptr inbounds %struct.ci_single_dpm_table, %struct.ci_single_dpm_table* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp uge i64 %113, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %112
  %119 = load i32, i32* @DPMTABLE_OD_UPDATE_MCLK, align 4
  %120 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %121 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %118, %112
  %125 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %126 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %131 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %129, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %124
  %137 = load i32, i32* @DPMTABLE_UPDATE_MCLK, align 4
  %138 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %139 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %136, %124
  ret void
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.ci_ps* @ci_get_ps(%struct.radeon_ps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
