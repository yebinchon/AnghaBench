; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_init_golden_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_init_golden_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@iceland_mgcg_cgcg_init = common dso_local global i32 0, align 4
@golden_settings_iceland_a11 = common dso_local global i32 0, align 4
@iceland_golden_common_all = common dso_local global i32 0, align 4
@fiji_mgcg_cgcg_init = common dso_local global i32 0, align 4
@golden_settings_fiji_a10 = common dso_local global i32 0, align 4
@fiji_golden_common_all = common dso_local global i32 0, align 4
@tonga_mgcg_cgcg_init = common dso_local global i32 0, align 4
@golden_settings_tonga_a11 = common dso_local global i32 0, align 4
@tonga_golden_common_all = common dso_local global i32 0, align 4
@golden_settings_vegam_a11 = common dso_local global i32 0, align 4
@vegam_golden_common_all = common dso_local global i32 0, align 4
@golden_settings_polaris11_a11 = common dso_local global i32 0, align 4
@polaris11_golden_common_all = common dso_local global i32 0, align 4
@golden_settings_polaris10_a11 = common dso_local global i32 0, align 4
@polaris10_golden_common_all = common dso_local global i32 0, align 4
@ixCG_ACLK_CNTL = common dso_local global i32 0, align 4
@cz_mgcg_cgcg_init = common dso_local global i32 0, align 4
@cz_golden_settings_a11 = common dso_local global i32 0, align 4
@cz_golden_common_all = common dso_local global i32 0, align 4
@stoney_mgcg_cgcg_init = common dso_local global i32 0, align 4
@stoney_golden_settings_a11 = common dso_local global i32 0, align 4
@stoney_golden_common_all = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v8_0_init_golden_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v8_0_init_golden_registers(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %3 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %4 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %175 [
    i32 129, label %6
    i32 135, label %22
    i32 130, label %38
    i32 128, label %54
    i32 133, label %65
    i32 132, label %65
    i32 134, label %76
    i32 136, label %143
    i32 131, label %159
  ]

6:                                                ; preds = %1
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %8 = load i32, i32* @iceland_mgcg_cgcg_init, align 4
  %9 = load i32, i32* @iceland_mgcg_cgcg_init, align 4
  %10 = call i32 @ARRAY_SIZE(i32 %9)
  %11 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %7, i32 %8, i32 %10)
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %13 = load i32, i32* @golden_settings_iceland_a11, align 4
  %14 = load i32, i32* @golden_settings_iceland_a11, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %12, i32 %13, i32 %15)
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %18 = load i32, i32* @iceland_golden_common_all, align 4
  %19 = load i32, i32* @iceland_golden_common_all, align 4
  %20 = call i32 @ARRAY_SIZE(i32 %19)
  %21 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %17, i32 %18, i32 %20)
  br label %176

22:                                               ; preds = %1
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %24 = load i32, i32* @fiji_mgcg_cgcg_init, align 4
  %25 = load i32, i32* @fiji_mgcg_cgcg_init, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %23, i32 %24, i32 %26)
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %29 = load i32, i32* @golden_settings_fiji_a10, align 4
  %30 = load i32, i32* @golden_settings_fiji_a10, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %28, i32 %29, i32 %31)
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %34 = load i32, i32* @fiji_golden_common_all, align 4
  %35 = load i32, i32* @fiji_golden_common_all, align 4
  %36 = call i32 @ARRAY_SIZE(i32 %35)
  %37 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %33, i32 %34, i32 %36)
  br label %176

38:                                               ; preds = %1
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %40 = load i32, i32* @tonga_mgcg_cgcg_init, align 4
  %41 = load i32, i32* @tonga_mgcg_cgcg_init, align 4
  %42 = call i32 @ARRAY_SIZE(i32 %41)
  %43 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %39, i32 %40, i32 %42)
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %45 = load i32, i32* @golden_settings_tonga_a11, align 4
  %46 = load i32, i32* @golden_settings_tonga_a11, align 4
  %47 = call i32 @ARRAY_SIZE(i32 %46)
  %48 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %44, i32 %45, i32 %47)
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %50 = load i32, i32* @tonga_golden_common_all, align 4
  %51 = load i32, i32* @tonga_golden_common_all, align 4
  %52 = call i32 @ARRAY_SIZE(i32 %51)
  %53 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %49, i32 %50, i32 %52)
  br label %176

54:                                               ; preds = %1
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %56 = load i32, i32* @golden_settings_vegam_a11, align 4
  %57 = load i32, i32* @golden_settings_vegam_a11, align 4
  %58 = call i32 @ARRAY_SIZE(i32 %57)
  %59 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %55, i32 %56, i32 %58)
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %61 = load i32, i32* @vegam_golden_common_all, align 4
  %62 = load i32, i32* @vegam_golden_common_all, align 4
  %63 = call i32 @ARRAY_SIZE(i32 %62)
  %64 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %60, i32 %61, i32 %63)
  br label %176

65:                                               ; preds = %1, %1
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %67 = load i32, i32* @golden_settings_polaris11_a11, align 4
  %68 = load i32, i32* @golden_settings_polaris11_a11, align 4
  %69 = call i32 @ARRAY_SIZE(i32 %68)
  %70 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %66, i32 %67, i32 %69)
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %72 = load i32, i32* @polaris11_golden_common_all, align 4
  %73 = load i32, i32* @polaris11_golden_common_all, align 4
  %74 = call i32 @ARRAY_SIZE(i32 %73)
  %75 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %71, i32 %72, i32 %74)
  br label %176

76:                                               ; preds = %1
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %78 = load i32, i32* @golden_settings_polaris10_a11, align 4
  %79 = load i32, i32* @golden_settings_polaris10_a11, align 4
  %80 = call i32 @ARRAY_SIZE(i32 %79)
  %81 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %77, i32 %78, i32 %80)
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %83 = load i32, i32* @polaris10_golden_common_all, align 4
  %84 = load i32, i32* @polaris10_golden_common_all, align 4
  %85 = call i32 @ARRAY_SIZE(i32 %84)
  %86 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %82, i32 %83, i32 %85)
  %87 = load i32, i32* @ixCG_ACLK_CNTL, align 4
  %88 = call i32 @WREG32_SMC(i32 %87, i32 28)
  %89 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %90 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 199
  br i1 %94, label %95, label %142

95:                                               ; preds = %76
  %96 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %97 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 2871
  br i1 %101, label %102, label %109

102:                                              ; preds = %95
  %103 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %104 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 4098
  br i1 %108, label %137, label %109

109:                                              ; preds = %102, %95
  %110 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %111 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %110, i32 0, i32 1
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 1192
  br i1 %115, label %116, label %123

116:                                              ; preds = %109
  %117 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %118 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %117, i32 0, i32 1
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 4163
  br i1 %122, label %137, label %123

123:                                              ; preds = %116, %109
  %124 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %125 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %124, i32 0, i32 1
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 38016
  br i1 %129, label %130, label %142

130:                                              ; preds = %123
  %131 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %132 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %131, i32 0, i32 1
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 5762
  br i1 %136, label %137, label %142

137:                                              ; preds = %130, %116, %102
  %138 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %139 = call i32 @amdgpu_atombios_i2c_channel_trans(%struct.amdgpu_device* %138, i32 16, i32 150, i32 30, i32 221)
  %140 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %141 = call i32 @amdgpu_atombios_i2c_channel_trans(%struct.amdgpu_device* %140, i32 16, i32 150, i32 31, i32 208)
  br label %142

142:                                              ; preds = %137, %130, %123, %76
  br label %176

143:                                              ; preds = %1
  %144 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %145 = load i32, i32* @cz_mgcg_cgcg_init, align 4
  %146 = load i32, i32* @cz_mgcg_cgcg_init, align 4
  %147 = call i32 @ARRAY_SIZE(i32 %146)
  %148 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %144, i32 %145, i32 %147)
  %149 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %150 = load i32, i32* @cz_golden_settings_a11, align 4
  %151 = load i32, i32* @cz_golden_settings_a11, align 4
  %152 = call i32 @ARRAY_SIZE(i32 %151)
  %153 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %149, i32 %150, i32 %152)
  %154 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %155 = load i32, i32* @cz_golden_common_all, align 4
  %156 = load i32, i32* @cz_golden_common_all, align 4
  %157 = call i32 @ARRAY_SIZE(i32 %156)
  %158 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %154, i32 %155, i32 %157)
  br label %176

159:                                              ; preds = %1
  %160 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %161 = load i32, i32* @stoney_mgcg_cgcg_init, align 4
  %162 = load i32, i32* @stoney_mgcg_cgcg_init, align 4
  %163 = call i32 @ARRAY_SIZE(i32 %162)
  %164 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %160, i32 %161, i32 %163)
  %165 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %166 = load i32, i32* @stoney_golden_settings_a11, align 4
  %167 = load i32, i32* @stoney_golden_settings_a11, align 4
  %168 = call i32 @ARRAY_SIZE(i32 %167)
  %169 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %165, i32 %166, i32 %168)
  %170 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %171 = load i32, i32* @stoney_golden_common_all, align 4
  %172 = load i32, i32* @stoney_golden_common_all, align 4
  %173 = call i32 @ARRAY_SIZE(i32 %172)
  %174 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %170, i32 %171, i32 %173)
  br label %176

175:                                              ; preds = %1
  br label %176

176:                                              ; preds = %175, %159, %143, %142, %65, %54, %38, %22, %6
  ret void
}

declare dso_local i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @WREG32_SMC(i32, i32) #1

declare dso_local i32 @amdgpu_atombios_i2c_channel_trans(%struct.amdgpu_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
