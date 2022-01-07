; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_pm_misc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_pm_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i64, i32, %struct.TYPE_5__*, %struct.radeon_power_state*, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.radeon_power_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.radeon_voltage }
%struct.radeon_voltage = type { i64, i32, i32 }

@VOLTAGE_SW = common dso_local global i64 0, align 8
@SET_VOLTAGE_TYPE_ASIC_VDDC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Setting: vddc: %d\0A\00", align 1
@PM_METHOD_PROFILE = common dso_local global i64 0, align 8
@CHIP_BARTS = common dso_local global i64 0, align 8
@PM_PROFILE_MID_MH_IDX = common dso_local global i64 0, align 8
@PM_PROFILE_LOW_MH_IDX = common dso_local global i64 0, align 8
@PM_PROFILE_HIGH_MH_IDX = common dso_local global i64 0, align 8
@SET_VOLTAGE_TYPE_ASIC_VDDCI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Setting: vddci: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evergreen_pm_misc(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_power_state*, align 8
  %6 = alloca %struct.radeon_voltage*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 7
  %18 = load %struct.radeon_power_state*, %struct.radeon_power_state** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.radeon_power_state, %struct.radeon_power_state* %18, i64 %20
  store %struct.radeon_power_state* %21, %struct.radeon_power_state** %5, align 8
  %22 = load %struct.radeon_power_state*, %struct.radeon_power_state** %5, align 8
  %23 = getelementptr inbounds %struct.radeon_power_state, %struct.radeon_power_state* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store %struct.radeon_voltage* %28, %struct.radeon_voltage** %6, align 8
  %29 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %30 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VOLTAGE_SW, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %164

34:                                               ; preds = %1
  %35 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %36 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 65280
  %39 = icmp eq i32 %38, 65280
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %164

41:                                               ; preds = %34
  %42 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %43 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %41
  %47 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %48 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %49, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %46
  %56 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %57 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %58 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDC, align 4
  %61 = call i32 @radeon_atom_set_voltage(%struct.radeon_device* %56, i32 %59, i32 %60)
  %62 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %63 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  store i32 %64, i32* %67, align 8
  %68 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %69 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %55, %46, %41
  %73 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PM_METHOD_PROFILE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %125

79:                                               ; preds = %72
  %80 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %81 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @CHIP_BARTS, align 8
  %84 = icmp sge i64 %82, %83
  br i1 %84, label %85, label %125

85:                                               ; preds = %79
  %86 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %87 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 8
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %125

91:                                               ; preds = %85
  %92 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %93 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @PM_PROFILE_MID_MH_IDX, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %105, label %98

98:                                               ; preds = %91
  %99 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %100 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %125

105:                                              ; preds = %98, %91
  %106 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %107 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 7
  %109 = load %struct.radeon_power_state*, %struct.radeon_power_state** %108, align 8
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.radeon_power_state, %struct.radeon_power_state* %109, i64 %111
  %113 = getelementptr inbounds %struct.radeon_power_state, %struct.radeon_power_state* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %116 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 6
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = load i64, i64* @PM_PROFILE_HIGH_MH_IDX, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  store %struct.radeon_voltage* %124, %struct.radeon_voltage** %6, align 8
  br label %125

125:                                              ; preds = %105, %98, %85, %79, %72
  %126 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %127 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 65280
  %130 = icmp eq i32 %129, 65280
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  br label %164

132:                                              ; preds = %125
  %133 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %134 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %163

137:                                              ; preds = %132
  %138 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %139 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %142 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %140, %144
  br i1 %145, label %146, label %163

146:                                              ; preds = %137
  %147 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %148 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %149 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDCI, align 4
  %152 = call i32 @radeon_atom_set_voltage(%struct.radeon_device* %147, i32 %150, i32 %151)
  %153 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %154 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %157 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 5
  store i32 %155, i32* %158, align 8
  %159 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %160 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %146, %137, %132
  br label %164

164:                                              ; preds = %40, %131, %163, %1
  ret void
}

declare dso_local i32 @radeon_atom_set_voltage(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
