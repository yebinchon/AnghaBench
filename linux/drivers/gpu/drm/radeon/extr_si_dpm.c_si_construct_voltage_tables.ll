; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_construct_voltage_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_construct_voltage_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.rv7xx_power_info = type { i32, i64 }
%struct.evergreen_power_info = type { %struct.TYPE_10__, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.si_power_info = type { i32, %struct.TYPE_10__, %struct.TYPE_10__, i64, i64 }

@VOLTAGE_TYPE_VDDC = common dso_local global i32 0, align 4
@VOLTAGE_OBJ_GPIO_LUT = common dso_local global i32 0, align 4
@SISLANDS_MAX_NO_VREG_STEPS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VOLTAGE_TYPE_VDDCI = common dso_local global i32 0, align 4
@VOLTAGE_TYPE_MVDDC = common dso_local global i32 0, align 4
@VOLTAGE_OBJ_PHASE_LUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @si_construct_voltage_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_construct_voltage_tables(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.rv7xx_power_info*, align 8
  %5 = alloca %struct.evergreen_power_info*, align 8
  %6 = alloca %struct.si_power_info*, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %8)
  store %struct.rv7xx_power_info* %9, %struct.rv7xx_power_info** %4, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %10)
  store %struct.evergreen_power_info* %11, %struct.evergreen_power_info** %5, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = call %struct.si_power_info* @si_get_pi(%struct.radeon_device* %12)
  store %struct.si_power_info* %13, %struct.si_power_info** %6, align 8
  %14 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %15 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %1
  %19 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %20 = load i32, i32* @VOLTAGE_TYPE_VDDC, align 4
  %21 = load i32, i32* @VOLTAGE_OBJ_GPIO_LUT, align 4
  %22 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %23 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %22, i32 0, i32 2
  %24 = call i32 @radeon_atom_get_voltage_table(%struct.radeon_device* %19, i32 %20, i32 %21, %struct.TYPE_10__* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %195

29:                                               ; preds = %18
  %30 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %31 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SISLANDS_MAX_NO_VREG_STEPS, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %38 = load i64, i64* @SISLANDS_MAX_NO_VREG_STEPS, align 8
  %39 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %40 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %39, i32 0, i32 2
  %41 = call i32 @si_trim_voltage_table_to_fit_state_table(%struct.radeon_device* %37, i64 %38, %struct.TYPE_10__* %40)
  br label %42

42:                                               ; preds = %36, %29
  br label %67

43:                                               ; preds = %1
  %44 = load %struct.si_power_info*, %struct.si_power_info** %6, align 8
  %45 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  %49 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %50 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %56 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %55, i32 0, i32 2
  %57 = call i32 @si_get_svi2_voltage_table(%struct.radeon_device* %49, i32* %54, %struct.TYPE_10__* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %195

62:                                               ; preds = %48
  br label %66

63:                                               ; preds = %43
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %195

66:                                               ; preds = %62
  br label %67

67:                                               ; preds = %66, %42
  %68 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %69 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %97

72:                                               ; preds = %67
  %73 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %74 = load i32, i32* @VOLTAGE_TYPE_VDDCI, align 4
  %75 = load i32, i32* @VOLTAGE_OBJ_GPIO_LUT, align 4
  %76 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %77 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %76, i32 0, i32 0
  %78 = call i32 @radeon_atom_get_voltage_table(%struct.radeon_device* %73, i32 %74, i32 %75, %struct.TYPE_10__* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %2, align 4
  br label %195

83:                                               ; preds = %72
  %84 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %85 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @SISLANDS_MAX_NO_VREG_STEPS, align 8
  %89 = icmp sgt i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %92 = load i64, i64* @SISLANDS_MAX_NO_VREG_STEPS, align 8
  %93 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %94 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %93, i32 0, i32 0
  %95 = call i32 @si_trim_voltage_table_to_fit_state_table(%struct.radeon_device* %91, i64 %92, %struct.TYPE_10__* %94)
  br label %96

96:                                               ; preds = %90, %83
  br label %97

97:                                               ; preds = %96, %67
  %98 = load %struct.si_power_info*, %struct.si_power_info** %6, align 8
  %99 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %97
  %103 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %104 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %105 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %110 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %109, i32 0, i32 0
  %111 = call i32 @si_get_svi2_voltage_table(%struct.radeon_device* %103, i32* %108, %struct.TYPE_10__* %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %102
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %2, align 4
  br label %195

116:                                              ; preds = %102
  br label %117

117:                                              ; preds = %116, %97
  %118 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %119 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %160

122:                                              ; preds = %117
  %123 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %124 = load i32, i32* @VOLTAGE_TYPE_MVDDC, align 4
  %125 = load i32, i32* @VOLTAGE_OBJ_GPIO_LUT, align 4
  %126 = load %struct.si_power_info*, %struct.si_power_info** %6, align 8
  %127 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %126, i32 0, i32 2
  %128 = call i32 @radeon_atom_get_voltage_table(%struct.radeon_device* %123, i32 %124, i32 %125, %struct.TYPE_10__* %127)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %122
  %132 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %133 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %132, i32 0, i32 0
  store i32 0, i32* %133, align 8
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %2, align 4
  br label %195

135:                                              ; preds = %122
  %136 = load %struct.si_power_info*, %struct.si_power_info** %6, align 8
  %137 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %135
  %142 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %143 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %142, i32 0, i32 0
  store i32 0, i32* %143, align 8
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %2, align 4
  br label %195

146:                                              ; preds = %135
  %147 = load %struct.si_power_info*, %struct.si_power_info** %6, align 8
  %148 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @SISLANDS_MAX_NO_VREG_STEPS, align 8
  %152 = icmp sgt i64 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %146
  %154 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %155 = load i64, i64* @SISLANDS_MAX_NO_VREG_STEPS, align 8
  %156 = load %struct.si_power_info*, %struct.si_power_info** %6, align 8
  %157 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %156, i32 0, i32 2
  %158 = call i32 @si_trim_voltage_table_to_fit_state_table(%struct.radeon_device* %154, i64 %155, %struct.TYPE_10__* %157)
  br label %159

159:                                              ; preds = %153, %146
  br label %160

160:                                              ; preds = %159, %117
  %161 = load %struct.si_power_info*, %struct.si_power_info** %6, align 8
  %162 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %194

165:                                              ; preds = %160
  %166 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %167 = load i32, i32* @VOLTAGE_TYPE_VDDC, align 4
  %168 = load i32, i32* @VOLTAGE_OBJ_PHASE_LUT, align 4
  %169 = load %struct.si_power_info*, %struct.si_power_info** %6, align 8
  %170 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %169, i32 0, i32 1
  %171 = call i32 @radeon_atom_get_voltage_table(%struct.radeon_device* %166, i32 %167, i32 %168, %struct.TYPE_10__* %170)
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %165
  %175 = load %struct.si_power_info*, %struct.si_power_info** %6, align 8
  %176 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %175, i32 0, i32 0
  store i32 0, i32* %176, align 8
  br label %177

177:                                              ; preds = %174, %165
  %178 = load %struct.si_power_info*, %struct.si_power_info** %6, align 8
  %179 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %190, label %183

183:                                              ; preds = %177
  %184 = load %struct.si_power_info*, %struct.si_power_info** %6, align 8
  %185 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @SISLANDS_MAX_NO_VREG_STEPS, align 8
  %189 = icmp sgt i64 %187, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %183, %177
  %191 = load %struct.si_power_info*, %struct.si_power_info** %6, align 8
  %192 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %191, i32 0, i32 0
  store i32 0, i32* %192, align 8
  br label %193

193:                                              ; preds = %190, %183
  br label %194

194:                                              ; preds = %193, %160
  store i32 0, i32* %2, align 4
  br label %195

195:                                              ; preds = %194, %141, %131, %114, %81, %63, %60, %27
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.si_power_info* @si_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atom_get_voltage_table(%struct.radeon_device*, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @si_trim_voltage_table_to_fit_state_table(%struct.radeon_device*, i64, %struct.TYPE_10__*) #1

declare dso_local i32 @si_get_svi2_voltage_table(%struct.radeon_device*, i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
