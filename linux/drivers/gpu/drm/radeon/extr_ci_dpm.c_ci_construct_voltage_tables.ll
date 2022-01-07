; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_construct_voltage_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_construct_voltage_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.ci_power_info = type { i64, i64, i64, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@CISLANDS_VOLTAGE_CONTROL_BY_GPIO = common dso_local global i64 0, align 8
@VOLTAGE_TYPE_VDDC = common dso_local global i32 0, align 4
@VOLTAGE_OBJ_GPIO_LUT = common dso_local global i32 0, align 4
@CISLANDS_VOLTAGE_CONTROL_BY_SVID2 = common dso_local global i64 0, align 8
@SMU7_MAX_LEVELS_VDDC = common dso_local global i64 0, align 8
@VOLTAGE_TYPE_VDDCI = common dso_local global i32 0, align 4
@SMU7_MAX_LEVELS_VDDCI = common dso_local global i64 0, align 8
@VOLTAGE_TYPE_MVDDC = common dso_local global i32 0, align 4
@SMU7_MAX_LEVELS_MVDD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @ci_construct_voltage_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_construct_voltage_tables(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.ci_power_info*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %6)
  store %struct.ci_power_info* %7, %struct.ci_power_info** %4, align 8
  %8 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %9 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CISLANDS_VOLTAGE_CONTROL_BY_GPIO, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = load i32, i32* @VOLTAGE_TYPE_VDDC, align 4
  %16 = load i32, i32* @VOLTAGE_OBJ_GPIO_LUT, align 4
  %17 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %18 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %17, i32 0, i32 5
  %19 = call i32 @radeon_atom_get_voltage_table(%struct.radeon_device* %14, i32 %15, i32 %16, %struct.TYPE_10__* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %167

24:                                               ; preds = %13
  br label %47

25:                                               ; preds = %1
  %26 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %27 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CISLANDS_VOLTAGE_CONTROL_BY_SVID2, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %33 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %39 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %38, i32 0, i32 5
  %40 = call i32 @ci_get_svi2_voltage_table(%struct.radeon_device* %32, i32* %37, %struct.TYPE_10__* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %167

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45, %25
  br label %47

47:                                               ; preds = %46, %24
  %48 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %49 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SMU7_MAX_LEVELS_VDDC, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %56 = load i64, i64* @SMU7_MAX_LEVELS_VDDC, align 8
  %57 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %58 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %57, i32 0, i32 5
  %59 = call i32 @si_trim_voltage_table_to_fit_state_table(%struct.radeon_device* %55, i64 %56, %struct.TYPE_10__* %58)
  br label %60

60:                                               ; preds = %54, %47
  %61 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %62 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CISLANDS_VOLTAGE_CONTROL_BY_GPIO, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %60
  %67 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %68 = load i32, i32* @VOLTAGE_TYPE_VDDCI, align 4
  %69 = load i32, i32* @VOLTAGE_OBJ_GPIO_LUT, align 4
  %70 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %71 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %70, i32 0, i32 4
  %72 = call i32 @radeon_atom_get_voltage_table(%struct.radeon_device* %67, i32 %68, i32 %69, %struct.TYPE_10__* %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %167

77:                                               ; preds = %66
  br label %100

78:                                               ; preds = %60
  %79 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %80 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CISLANDS_VOLTAGE_CONTROL_BY_SVID2, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %78
  %85 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %86 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %87 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %92 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %91, i32 0, i32 4
  %93 = call i32 @ci_get_svi2_voltage_table(%struct.radeon_device* %85, i32* %90, %struct.TYPE_10__* %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %84
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %2, align 4
  br label %167

98:                                               ; preds = %84
  br label %99

99:                                               ; preds = %98, %78
  br label %100

100:                                              ; preds = %99, %77
  %101 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %102 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @SMU7_MAX_LEVELS_VDDCI, align 8
  %106 = icmp sgt i64 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %109 = load i64, i64* @SMU7_MAX_LEVELS_VDDCI, align 8
  %110 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %111 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %110, i32 0, i32 4
  %112 = call i32 @si_trim_voltage_table_to_fit_state_table(%struct.radeon_device* %108, i64 %109, %struct.TYPE_10__* %111)
  br label %113

113:                                              ; preds = %107, %100
  %114 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %115 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @CISLANDS_VOLTAGE_CONTROL_BY_GPIO, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %113
  %120 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %121 = load i32, i32* @VOLTAGE_TYPE_MVDDC, align 4
  %122 = load i32, i32* @VOLTAGE_OBJ_GPIO_LUT, align 4
  %123 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %124 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %123, i32 0, i32 3
  %125 = call i32 @radeon_atom_get_voltage_table(%struct.radeon_device* %120, i32 %121, i32 %122, %struct.TYPE_10__* %124)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %119
  %129 = load i32, i32* %5, align 4
  store i32 %129, i32* %2, align 4
  br label %167

130:                                              ; preds = %119
  br label %153

131:                                              ; preds = %113
  %132 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %133 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @CISLANDS_VOLTAGE_CONTROL_BY_SVID2, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %152

137:                                              ; preds = %131
  %138 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %139 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %140 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %145 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %144, i32 0, i32 3
  %146 = call i32 @ci_get_svi2_voltage_table(%struct.radeon_device* %138, i32* %143, %struct.TYPE_10__* %145)
  store i32 %146, i32* %5, align 4
  %147 = load i32, i32* %5, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %137
  %150 = load i32, i32* %5, align 4
  store i32 %150, i32* %2, align 4
  br label %167

151:                                              ; preds = %137
  br label %152

152:                                              ; preds = %151, %131
  br label %153

153:                                              ; preds = %152, %130
  %154 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %155 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @SMU7_MAX_LEVELS_MVDD, align 8
  %159 = icmp sgt i64 %157, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %153
  %161 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %162 = load i64, i64* @SMU7_MAX_LEVELS_MVDD, align 8
  %163 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %164 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %163, i32 0, i32 3
  %165 = call i32 @si_trim_voltage_table_to_fit_state_table(%struct.radeon_device* %161, i64 %162, %struct.TYPE_10__* %164)
  br label %166

166:                                              ; preds = %160, %153
  store i32 0, i32* %2, align 4
  br label %167

167:                                              ; preds = %166, %149, %128, %96, %75, %43, %22
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atom_get_voltage_table(%struct.radeon_device*, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @ci_get_svi2_voltage_table(%struct.radeon_device*, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @si_trim_voltage_table_to_fit_state_table(%struct.radeon_device*, i64, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
