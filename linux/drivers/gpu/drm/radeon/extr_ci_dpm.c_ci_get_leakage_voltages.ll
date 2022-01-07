; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_get_leakage_voltages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_get_leakage_voltages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ci_power_info = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i64*, i64* }
%struct.TYPE_7__ = type { i64, i64*, i64* }

@ATOM_PP_PLATFORM_CAP_EVV = common dso_local global i32 0, align 4
@CISLANDS_MAX_LEAKAGE_COUNT = common dso_local global i32 0, align 4
@ATOM_VIRTUAL_VOLTAGE_ID0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @ci_get_leakage_voltages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ci_get_leakage_voltages(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.ci_power_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %10 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %9)
  store %struct.ci_power_info* %10, %struct.ci_power_info** %3, align 8
  %11 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %12 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %15 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ATOM_PP_PLATFORM_CAP_EVV, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %78

25:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %74, %25
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @CISLANDS_MAX_LEAKAGE_COUNT, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %77

30:                                               ; preds = %26
  %31 = load i64, i64* @ATOM_VIRTUAL_VOLTAGE_ID0, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  store i64 %34, i64* %5, align 8
  %35 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @radeon_atom_get_voltage_evv(%struct.radeon_device* %35, i64 %36, i64* %6)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %74

40:                                               ; preds = %30
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %73

43:                                               ; preds = %40
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %5, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %73

47:                                               ; preds = %43
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %50 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i64*, i64** %51, align 8
  %53 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %54 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i64, i64* %52, i64 %56
  store i64 %48, i64* %57, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %60 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %64 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i64, i64* %62, i64 %66
  store i64 %58, i64* %67, align 8
  %68 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %69 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %70, align 8
  br label %73

73:                                               ; preds = %47, %43, %40
  br label %74

74:                                               ; preds = %73, %39
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %26

77:                                               ; preds = %26
  br label %170

78:                                               ; preds = %1
  %79 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %80 = call i64 @radeon_atom_get_leakage_id_from_vbios(%struct.radeon_device* %79, i64* %4)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %169

82:                                               ; preds = %78
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %165, %82
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @CISLANDS_MAX_LEAKAGE_COUNT, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %168

87:                                               ; preds = %83
  %88 = load i64, i64* @ATOM_VIRTUAL_VOLTAGE_ID0, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %88, %90
  store i64 %91, i64* %5, align 8
  %92 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %93 = load i64, i64* %5, align 8
  %94 = load i64, i64* %4, align 8
  %95 = call i64 @radeon_atom_get_leakage_vddc_based_on_leakage_params(%struct.radeon_device* %92, i64* %6, i64* %7, i64 %93, i64 %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %164

97:                                               ; preds = %87
  %98 = load i64, i64* %6, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %130

100:                                              ; preds = %97
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* %5, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %130

104:                                              ; preds = %100
  %105 = load i64, i64* %6, align 8
  %106 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %107 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = load i64*, i64** %108, align 8
  %110 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %111 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds i64, i64* %109, i64 %113
  store i64 %105, i64* %114, align 8
  %115 = load i64, i64* %5, align 8
  %116 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %117 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load i64*, i64** %118, align 8
  %120 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %121 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i64, i64* %119, i64 %123
  store i64 %115, i64* %124, align 8
  %125 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %126 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %127, align 8
  br label %130

130:                                              ; preds = %104, %100, %97
  %131 = load i64, i64* %7, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %163

133:                                              ; preds = %130
  %134 = load i64, i64* %7, align 8
  %135 = load i64, i64* %5, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %163

137:                                              ; preds = %133
  %138 = load i64, i64* %7, align 8
  %139 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %140 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  %142 = load i64*, i64** %141, align 8
  %143 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %144 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds i64, i64* %142, i64 %146
  store i64 %138, i64* %147, align 8
  %148 = load i64, i64* %5, align 8
  %149 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %150 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = load i64*, i64** %151, align 8
  %153 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %154 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds i64, i64* %152, i64 %156
  store i64 %148, i64* %157, align 8
  %158 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %159 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %160, align 8
  br label %163

163:                                              ; preds = %137, %133, %130
  br label %164

164:                                              ; preds = %163, %87
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %8, align 4
  br label %83

168:                                              ; preds = %83
  br label %169

169:                                              ; preds = %168, %78
  br label %170

170:                                              ; preds = %169, %77
  ret void
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i64 @radeon_atom_get_voltage_evv(%struct.radeon_device*, i64, i64*) #1

declare dso_local i64 @radeon_atom_get_leakage_id_from_vbios(%struct.radeon_device*, i64*) #1

declare dso_local i64 @radeon_atom_get_leakage_vddc_based_on_leakage_params(%struct.radeon_device*, i64*, i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
