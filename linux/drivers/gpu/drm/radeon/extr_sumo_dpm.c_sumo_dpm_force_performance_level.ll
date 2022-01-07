; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_dpm_force_performance_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_dpm_force_performance_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sumo_power_info = type { i64, %struct.radeon_ps }
%struct.radeon_ps = type { i32 }
%struct.sumo_ps = type { i32 }

@RADEON_DPM_FORCED_LEVEL_HIGH = common dso_local global i32 0, align 4
@RADEON_DPM_FORCED_LEVEL_LOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sumo_dpm_force_performance_level(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sumo_power_info*, align 8
  %7 = alloca %struct.radeon_ps*, align 8
  %8 = alloca %struct.sumo_ps*, align 8
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %11 = call %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device* %10)
  store %struct.sumo_power_info* %11, %struct.sumo_power_info** %6, align 8
  %12 = load %struct.sumo_power_info*, %struct.sumo_power_info** %6, align 8
  %13 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %12, i32 0, i32 1
  store %struct.radeon_ps* %13, %struct.radeon_ps** %7, align 8
  %14 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  %15 = call %struct.sumo_ps* @sumo_get_ps(%struct.radeon_ps* %14)
  store %struct.sumo_ps* %15, %struct.sumo_ps** %8, align 8
  %16 = load %struct.sumo_ps*, %struct.sumo_ps** %8, align 8
  %17 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sle i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %141

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @RADEON_DPM_FORCED_LEVEL_HIGH, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %70

25:                                               ; preds = %21
  %26 = load %struct.sumo_power_info*, %struct.sumo_power_info** %6, align 8
  %27 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %32 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  %33 = call i32 @sumo_enable_boost(%struct.radeon_device* %31, %struct.radeon_ps* %32, i32 0)
  br label %34

34:                                               ; preds = %30, %25
  %35 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %36 = load %struct.sumo_ps*, %struct.sumo_ps** %8, align 8
  %37 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  %40 = call i32 @sumo_power_level_enable(%struct.radeon_device* %35, i32 %39, i32 1)
  %41 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %42 = load %struct.sumo_ps*, %struct.sumo_ps** %8, align 8
  %43 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  %46 = call i32 @sumo_set_forced_level(%struct.radeon_device* %41, i32 %45)
  %47 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %48 = call i32 @sumo_set_forced_mode_enabled(%struct.radeon_device* %47)
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %60, %34
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.sumo_ps*, %struct.sumo_ps** %8, align 8
  %52 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 1
  %55 = icmp slt i32 %50, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  %57 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @sumo_power_level_enable(%struct.radeon_device* %57, i32 %58, i32 0)
  br label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %49

63:                                               ; preds = %49
  %64 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %65 = call i32 @sumo_set_forced_mode(%struct.radeon_device* %64, i32 0)
  %66 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %67 = call i32 @sumo_set_forced_mode_enabled(%struct.radeon_device* %66)
  %68 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %69 = call i32 @sumo_set_forced_mode(%struct.radeon_device* %68, i32 0)
  br label %135

70:                                               ; preds = %21
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @RADEON_DPM_FORCED_LEVEL_LOW, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %110

74:                                               ; preds = %70
  %75 = load %struct.sumo_power_info*, %struct.sumo_power_info** %6, align 8
  %76 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %81 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  %82 = call i32 @sumo_enable_boost(%struct.radeon_device* %80, %struct.radeon_ps* %81, i32 0)
  br label %83

83:                                               ; preds = %79, %74
  %84 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %85 = call i32 @sumo_power_level_enable(%struct.radeon_device* %84, i32 0, i32 1)
  %86 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %87 = call i32 @sumo_set_forced_level(%struct.radeon_device* %86, i32 0)
  %88 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %89 = call i32 @sumo_set_forced_mode_enabled(%struct.radeon_device* %88)
  store i32 1, i32* %9, align 4
  br label %90

90:                                               ; preds = %100, %83
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.sumo_ps*, %struct.sumo_ps** %8, align 8
  %93 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @sumo_power_level_enable(%struct.radeon_device* %97, i32 %98, i32 0)
  br label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %90

103:                                              ; preds = %90
  %104 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %105 = call i32 @sumo_set_forced_mode(%struct.radeon_device* %104, i32 0)
  %106 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %107 = call i32 @sumo_set_forced_mode_enabled(%struct.radeon_device* %106)
  %108 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %109 = call i32 @sumo_set_forced_mode(%struct.radeon_device* %108, i32 0)
  br label %134

110:                                              ; preds = %70
  store i32 0, i32* %9, align 4
  br label %111

111:                                              ; preds = %121, %110
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.sumo_ps*, %struct.sumo_ps** %8, align 8
  %114 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %111
  %118 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @sumo_power_level_enable(%struct.radeon_device* %118, i32 %119, i32 1)
  br label %121

121:                                              ; preds = %117
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %111

124:                                              ; preds = %111
  %125 = load %struct.sumo_power_info*, %struct.sumo_power_info** %6, align 8
  %126 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %131 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  %132 = call i32 @sumo_enable_boost(%struct.radeon_device* %130, %struct.radeon_ps* %131, i32 1)
  br label %133

133:                                              ; preds = %129, %124
  br label %134

134:                                              ; preds = %133, %103
  br label %135

135:                                              ; preds = %134, %63
  %136 = load i32, i32* %5, align 4
  %137 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %138 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  store i32 %136, i32* %140, align 4
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %135, %20
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.sumo_ps* @sumo_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @sumo_enable_boost(%struct.radeon_device*, %struct.radeon_ps*, i32) #1

declare dso_local i32 @sumo_power_level_enable(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @sumo_set_forced_level(%struct.radeon_device*, i32) #1

declare dso_local i32 @sumo_set_forced_mode_enabled(%struct.radeon_device*) #1

declare dso_local i32 @sumo_set_forced_mode(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
