; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_dpm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_dpm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, %struct.rv6xx_power_info* }
%struct.rv6xx_power_info = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i8* }
%struct.radeon_atom_ss = type { i32 }
%struct.atom_clock_dividers = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@R600_VOLTAGERESPONSETIME_DFLT = common dso_local global i64 0, align 8
@R600_BACKBIASRESPONSETIME_DFLT = common dso_local global i64 0, align 8
@COMPUTE_ENGINE_PLL_PARAM = common dso_local global i32 0, align 4
@R600_REFERENCEDIVIDER_DFLT = common dso_local global i8* null, align 8
@COMPUTE_MEMORY_PLL_PARAM = common dso_local global i32 0, align 4
@CHIP_RV670 = common dso_local global i64 0, align 8
@SET_VOLTAGE_TYPE_ASIC_VDDC = common dso_local global i32 0, align 4
@ASIC_INTERNAL_ENGINE_SS = common dso_local global i32 0, align 4
@ASIC_INTERNAL_MEMORY_SS = common dso_local global i32 0, align 4
@THERMAL_TYPE_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rv6xx_dpm_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_atom_ss, align 4
  %5 = alloca %struct.atom_clock_dividers, align 8
  %6 = alloca %struct.rv6xx_power_info*, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.rv6xx_power_info* @kzalloc(i32 64, i32 %8)
  store %struct.rv6xx_power_info* %9, %struct.rv6xx_power_info** %6, align 8
  %10 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %6, align 8
  %11 = icmp eq %struct.rv6xx_power_info* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %163

15:                                               ; preds = %1
  %16 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %6, align 8
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  store %struct.rv6xx_power_info* %16, %struct.rv6xx_power_info** %20, align 8
  %21 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %22 = call i32 @r600_get_platform_caps(%struct.radeon_device* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %163

27:                                               ; preds = %15
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = call i32 @rv6xx_parse_power_table(%struct.radeon_device* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %2, align 4
  br label %163

34:                                               ; preds = %27
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load i64, i64* @R600_VOLTAGERESPONSETIME_DFLT, align 8
  %43 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %44 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i64 %42, i64* %46, align 8
  br label %47

47:                                               ; preds = %41, %34
  %48 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load i64, i64* @R600_BACKBIASRESPONSETIME_DFLT, align 8
  %56 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %57 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i64 %55, i64* %59, align 8
  br label %60

60:                                               ; preds = %54, %47
  %61 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %62 = load i32, i32* @COMPUTE_ENGINE_PLL_PARAM, align 4
  %63 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %61, i32 %62, i32 0, i32 0, %struct.atom_clock_dividers* %5)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %5, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr i8, i8* %68, i64 1
  %70 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %6, align 8
  %71 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %70, i32 0, i32 10
  store i8* %69, i8** %71, align 8
  br label %76

72:                                               ; preds = %60
  %73 = load i8*, i8** @R600_REFERENCEDIVIDER_DFLT, align 8
  %74 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %6, align 8
  %75 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %74, i32 0, i32 10
  store i8* %73, i8** %75, align 8
  br label %76

76:                                               ; preds = %72, %66
  %77 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %78 = load i32, i32* @COMPUTE_MEMORY_PLL_PARAM, align 4
  %79 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %77, i32 %78, i32 0, i32 0, %struct.atom_clock_dividers* %5)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %5, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr i8, i8* %84, i64 1
  %86 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %6, align 8
  %87 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %86, i32 0, i32 9
  store i8* %85, i8** %87, align 8
  br label %92

88:                                               ; preds = %76
  %89 = load i8*, i8** @R600_REFERENCEDIVIDER_DFLT, align 8
  %90 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %6, align 8
  %91 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %90, i32 0, i32 9
  store i8* %89, i8** %91, align 8
  br label %92

92:                                               ; preds = %88, %82
  %93 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %94 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @CHIP_RV670, align 8
  %97 = icmp sge i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %6, align 8
  %100 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  br label %104

101:                                              ; preds = %92
  %102 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %6, align 8
  %103 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %102, i32 0, i32 0
  store i32 0, i32* %103, align 8
  br label %104

104:                                              ; preds = %101, %98
  %105 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %106 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDC, align 4
  %107 = call i32 @radeon_atom_is_voltage_gpio(%struct.radeon_device* %105, i32 %106, i32 0)
  %108 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %6, align 8
  %109 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %108, i32 0, i32 8
  store i32 %107, i32* %109, align 8
  %110 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %6, align 8
  %111 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  %112 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %113 = load i32, i32* @ASIC_INTERNAL_ENGINE_SS, align 4
  %114 = call i8* @radeon_atombios_get_asic_ss_info(%struct.radeon_device* %112, %struct.radeon_atom_ss* %4, i32 %113, i32 0)
  %115 = ptrtoint i8* %114 to i32
  %116 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %6, align 8
  %117 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %119 = load i32, i32* @ASIC_INTERNAL_MEMORY_SS, align 4
  %120 = call i8* @radeon_atombios_get_asic_ss_info(%struct.radeon_device* %118, %struct.radeon_atom_ss* %4, i32 %119, i32 0)
  %121 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %6, align 8
  %122 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %121, i32 0, i32 7
  store i8* %120, i8** %122, align 8
  %123 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %6, align 8
  %124 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %123, i32 0, i32 2
  store i32 0, i32* %124, align 8
  %125 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %6, align 8
  %126 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %104
  %130 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %6, align 8
  %131 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %130, i32 0, i32 7
  %132 = load i8*, i8** %131, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %129, %104
  %135 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %6, align 8
  %136 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %135, i32 0, i32 3
  store i32 1, i32* %136, align 4
  br label %140

137:                                              ; preds = %129
  %138 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %6, align 8
  %139 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %138, i32 0, i32 3
  store i32 0, i32* %139, align 4
  br label %140

140:                                              ; preds = %137, %134
  %141 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %6, align 8
  %142 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %141, i32 0, i32 4
  store i32 1, i32* %142, align 8
  %143 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %6, align 8
  %144 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %140
  %148 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %149 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @THERMAL_TYPE_NONE, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %147
  %155 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %6, align 8
  %156 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %155, i32 0, i32 5
  store i32 1, i32* %156, align 4
  br label %160

157:                                              ; preds = %147, %140
  %158 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %6, align 8
  %159 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %158, i32 0, i32 5
  store i32 0, i32* %159, align 4
  br label %160

160:                                              ; preds = %157, %154
  %161 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %6, align 8
  %162 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %161, i32 0, i32 6
  store i32 1, i32* %162, align 8
  store i32 0, i32* %2, align 4
  br label %163

163:                                              ; preds = %160, %32, %25, %12
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local %struct.rv6xx_power_info* @kzalloc(i32, i32) #1

declare dso_local i32 @r600_get_platform_caps(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_parse_power_table(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atom_get_clock_dividers(%struct.radeon_device*, i32, i32, i32, %struct.atom_clock_dividers*) #1

declare dso_local i32 @radeon_atom_is_voltage_gpio(%struct.radeon_device*, i32, i32) #1

declare dso_local i8* @radeon_atombios_get_asic_ss_info(%struct.radeon_device*, %struct.radeon_atom_ss*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
