; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_dpm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_dpm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, %struct.rv7xx_power_info* }
%struct.rv7xx_power_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.atom_clock_dividers = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@R600_VOLTAGERESPONSETIME_DFLT = common dso_local global i64 0, align 8
@R600_BACKBIASRESPONSETIME_DFLT = common dso_local global i64 0, align 8
@COMPUTE_ENGINE_PLL_PARAM = common dso_local global i32 0, align 4
@R600_REFERENCEDIVIDER_DFLT = common dso_local global i64 0, align 8
@RV770_RLP_DFLT = common dso_local global i32 0, align 4
@RV770_RMP_DFLT = common dso_local global i32 0, align 4
@RV770_LHP_DFLT = common dso_local global i32 0, align 4
@RV770_LMP_DFLT = common dso_local global i32 0, align 4
@SET_VOLTAGE_TYPE_ASIC_VDDC = common dso_local global i32 0, align 4
@SET_VOLTAGE_TYPE_ASIC_MVDDC = common dso_local global i32 0, align 4
@RV770_ASI_DFLT = common dso_local global i32 0, align 4
@RV770_HASI_DFLT = common dso_local global i32 0, align 4
@RV770_VRC_DFLT = common dso_local global i32 0, align 4
@THERMAL_TYPE_NONE = common dso_local global i64 0, align 8
@RADEON_IS_MOBILITY = common dso_local global i32 0, align 4
@SMC_RAM_END = common dso_local global i32 0, align 4
@RV770_SMC_TABLE_ADDRESS = common dso_local global i32 0, align 4
@RV770_SMC_SOFT_REGISTERS_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rv770_dpm_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.rv7xx_power_info*, align 8
  %5 = alloca %struct.atom_clock_dividers, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.rv7xx_power_info* @kzalloc(i32 144, i32 %7)
  store %struct.rv7xx_power_info* %8, %struct.rv7xx_power_info** %4, align 8
  %9 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %10 = icmp eq %struct.rv7xx_power_info* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %172

14:                                               ; preds = %1
  %15 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %16 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  store %struct.rv7xx_power_info* %15, %struct.rv7xx_power_info** %19, align 8
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = call i32 @rv770_get_max_vddc(%struct.radeon_device* %20)
  %22 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %23 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %22, i32 0, i32 27
  store i64 0, i64* %23, align 8
  %24 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %25 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %24, i32 0, i32 26
  store i64 0, i64* %25, align 8
  %26 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %27 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %26, i32 0, i32 25
  store i64 0, i64* %27, align 8
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = call i32 @r600_get_platform_caps(%struct.radeon_device* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %14
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %172

34:                                               ; preds = %14
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = call i32 @rv7xx_parse_power_table(%struct.radeon_device* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %172

41:                                               ; preds = %34
  %42 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %43 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load i64, i64* @R600_VOLTAGERESPONSETIME_DFLT, align 8
  %50 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i64 %49, i64* %53, align 8
  br label %54

54:                                               ; preds = %48, %41
  %55 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load i64, i64* @R600_BACKBIASRESPONSETIME_DFLT, align 8
  %63 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store i64 %62, i64* %66, align 8
  br label %67

67:                                               ; preds = %61, %54
  %68 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %69 = load i32, i32* @COMPUTE_ENGINE_PLL_PARAM, align 4
  %70 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %68, i32 %69, i32 0, i32 0, %struct.atom_clock_dividers* %5)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %5, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 1
  %77 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %78 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %77, i32 0, i32 24
  store i64 %76, i64* %78, align 8
  br label %83

79:                                               ; preds = %67
  %80 = load i64, i64* @R600_REFERENCEDIVIDER_DFLT, align 8
  %81 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %82 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %81, i32 0, i32 24
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %79, %73
  %84 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %85 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %84, i32 0, i32 0
  store i32 30000, i32* %85, align 8
  %86 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %87 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %86, i32 0, i32 1
  store i32 30000, i32* %87, align 4
  %88 = load i32, i32* @RV770_RLP_DFLT, align 4
  %89 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %90 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %89, i32 0, i32 23
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @RV770_RMP_DFLT, align 4
  %92 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %93 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %92, i32 0, i32 22
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @RV770_LHP_DFLT, align 4
  %95 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %96 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %95, i32 0, i32 21
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @RV770_LMP_DFLT, align 4
  %98 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %99 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %98, i32 0, i32 20
  store i32 %97, i32* %99, align 8
  %100 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %101 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDC, align 4
  %102 = call i8* @radeon_atom_is_voltage_gpio(%struct.radeon_device* %100, i32 %101, i32 0)
  %103 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %104 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %103, i32 0, i32 19
  store i8* %102, i8** %104, align 8
  %105 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %106 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_MVDDC, align 4
  %107 = call i8* @radeon_atom_is_voltage_gpio(%struct.radeon_device* %105, i32 %106, i32 0)
  %108 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %109 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %108, i32 0, i32 18
  store i8* %107, i8** %109, align 8
  %110 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %111 = call i32 @rv770_get_engine_memory_ss(%struct.radeon_device* %110)
  %112 = load i32, i32* @RV770_ASI_DFLT, align 4
  %113 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %114 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %113, i32 0, i32 17
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* @RV770_HASI_DFLT, align 4
  %116 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %117 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %116, i32 0, i32 16
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @RV770_VRC_DFLT, align 4
  %119 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %120 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %119, i32 0, i32 15
  store i32 %118, i32* %120, align 8
  %121 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %122 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %121, i32 0, i32 2
  store i32 0, i32* %122, align 8
  %123 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %124 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %123, i32 0, i32 3
  store i32 1, i32* %124, align 4
  %125 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %126 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %125, i32 0, i32 4
  store i32 1, i32* %126, align 8
  %127 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %128 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %127, i32 0, i32 5
  store i32 1, i32* %128, align 4
  %129 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %130 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %129, i32 0, i32 6
  store i32 1, i32* %130, align 8
  %131 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %132 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @THERMAL_TYPE_NONE, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %83
  %138 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %139 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %138, i32 0, i32 7
  store i32 1, i32* %139, align 4
  br label %143

140:                                              ; preds = %83
  %141 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %142 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %141, i32 0, i32 7
  store i32 0, i32* %142, align 4
  br label %143

143:                                              ; preds = %140, %137
  %144 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %145 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %144, i32 0, i32 8
  store i32 1, i32* %145, align 8
  %146 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %147 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @RADEON_IS_MOBILITY, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %143
  %153 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %154 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %153, i32 0, i32 9
  store i32 1, i32* %154, align 4
  br label %158

155:                                              ; preds = %143
  %156 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %157 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %156, i32 0, i32 9
  store i32 0, i32* %157, align 4
  br label %158

158:                                              ; preds = %155, %152
  %159 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %160 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %159, i32 0, i32 10
  store i32 1, i32* %160, align 8
  %161 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %162 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %161, i32 0, i32 14
  store i64 0, i64* %162, align 8
  %163 = load i32, i32* @SMC_RAM_END, align 4
  %164 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %165 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %164, i32 0, i32 13
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* @RV770_SMC_TABLE_ADDRESS, align 4
  %167 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %168 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %167, i32 0, i32 12
  store i32 %166, i32* %168, align 8
  %169 = load i32, i32* @RV770_SMC_SOFT_REGISTERS_START, align 4
  %170 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %171 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %170, i32 0, i32 11
  store i32 %169, i32* %171, align 4
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %158, %39, %32, %11
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local %struct.rv7xx_power_info* @kzalloc(i32, i32) #1

declare dso_local i32 @rv770_get_max_vddc(%struct.radeon_device*) #1

declare dso_local i32 @r600_get_platform_caps(%struct.radeon_device*) #1

declare dso_local i32 @rv7xx_parse_power_table(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atom_get_clock_dividers(%struct.radeon_device*, i32, i32, i32, %struct.atom_clock_dividers*) #1

declare dso_local i8* @radeon_atom_is_voltage_gpio(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @rv770_get_engine_memory_ss(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
