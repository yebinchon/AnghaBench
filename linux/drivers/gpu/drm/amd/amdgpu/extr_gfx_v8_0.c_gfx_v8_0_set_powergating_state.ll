; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_set_powergating_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_set_powergating_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32 }

@AMD_PG_STATE_GATE = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_GFX_SMG = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_RLC_SMU_HS = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_CP = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_GFX_DMG = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_GFX_QUICK_MG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @gfx_v8_0_set_powergating_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v8_0_set_powergating_state(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %9, %struct.amdgpu_device** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @AMD_PG_STATE_GATE, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %7, align 4
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %15 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %171

18:                                               ; preds = %2
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AMD_PG_SUPPORT_GFX_SMG, align 4
  %23 = load i32, i32* @AMD_PG_SUPPORT_RLC_SMU_HS, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @AMD_PG_SUPPORT_CP, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @AMD_PG_SUPPORT_GFX_DMG, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %21, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %33 = call i32 @amdgpu_gfx_rlc_enter_safe_mode(%struct.amdgpu_device* %32)
  br label %34

34:                                               ; preds = %31, %18
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %153 [
    i32 132, label %38
    i32 129, label %38
    i32 131, label %104
    i32 130, label %104
    i32 128, label %104
  ]

38:                                               ; preds = %34, %34
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @AMD_PG_SUPPORT_RLC_SMU_HS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %47 = call i32 @cz_enable_sck_slow_down_on_power_up(%struct.amdgpu_device* %46, i32 1)
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %49 = call i32 @cz_enable_sck_slow_down_on_power_down(%struct.amdgpu_device* %48, i32 1)
  br label %55

50:                                               ; preds = %38
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %52 = call i32 @cz_enable_sck_slow_down_on_power_up(%struct.amdgpu_device* %51, i32 0)
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %54 = call i32 @cz_enable_sck_slow_down_on_power_down(%struct.amdgpu_device* %53, i32 0)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @AMD_PG_SUPPORT_CP, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %64 = call i32 @cz_enable_cp_power_gating(%struct.amdgpu_device* %63, i32 1)
  br label %68

65:                                               ; preds = %55
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %67 = call i32 @cz_enable_cp_power_gating(%struct.amdgpu_device* %66, i32 0)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @cz_update_gfx_cg_power_gating(%struct.amdgpu_device* %69, i32 %70)
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %73 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @AMD_PG_SUPPORT_GFX_SMG, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %68
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %83 = call i32 @gfx_v8_0_enable_gfx_static_mg_power_gating(%struct.amdgpu_device* %82, i32 1)
  br label %87

84:                                               ; preds = %78, %68
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %86 = call i32 @gfx_v8_0_enable_gfx_static_mg_power_gating(%struct.amdgpu_device* %85, i32 0)
  br label %87

87:                                               ; preds = %84, %81
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @AMD_PG_SUPPORT_GFX_DMG, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %99 = call i32 @gfx_v8_0_enable_gfx_dynamic_mg_power_gating(%struct.amdgpu_device* %98, i32 1)
  br label %103

100:                                              ; preds = %94, %87
  %101 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %102 = call i32 @gfx_v8_0_enable_gfx_dynamic_mg_power_gating(%struct.amdgpu_device* %101, i32 0)
  br label %103

103:                                              ; preds = %100, %97
  br label %154

104:                                              ; preds = %34, %34, %34
  %105 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %106 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @AMD_PG_SUPPORT_GFX_SMG, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %104
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %116 = call i32 @gfx_v8_0_enable_gfx_static_mg_power_gating(%struct.amdgpu_device* %115, i32 1)
  br label %120

117:                                              ; preds = %111, %104
  %118 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %119 = call i32 @gfx_v8_0_enable_gfx_static_mg_power_gating(%struct.amdgpu_device* %118, i32 0)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %122 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @AMD_PG_SUPPORT_GFX_DMG, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %120
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %132 = call i32 @gfx_v8_0_enable_gfx_dynamic_mg_power_gating(%struct.amdgpu_device* %131, i32 1)
  br label %136

133:                                              ; preds = %127, %120
  %134 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %135 = call i32 @gfx_v8_0_enable_gfx_dynamic_mg_power_gating(%struct.amdgpu_device* %134, i32 0)
  br label %136

136:                                              ; preds = %133, %130
  %137 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %138 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @AMD_PG_SUPPORT_GFX_QUICK_MG, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %136
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %148 = call i32 @polaris11_enable_gfx_quick_mg_power_gating(%struct.amdgpu_device* %147, i32 1)
  br label %152

149:                                              ; preds = %143, %136
  %150 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %151 = call i32 @polaris11_enable_gfx_quick_mg_power_gating(%struct.amdgpu_device* %150, i32 0)
  br label %152

152:                                              ; preds = %149, %146
  br label %154

153:                                              ; preds = %34
  br label %154

154:                                              ; preds = %153, %152, %103
  %155 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %156 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @AMD_PG_SUPPORT_GFX_SMG, align 4
  %159 = load i32, i32* @AMD_PG_SUPPORT_RLC_SMU_HS, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @AMD_PG_SUPPORT_CP, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @AMD_PG_SUPPORT_GFX_DMG, align 4
  %164 = or i32 %162, %163
  %165 = and i32 %157, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %154
  %168 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %169 = call i32 @amdgpu_gfx_rlc_exit_safe_mode(%struct.amdgpu_device* %168)
  br label %170

170:                                              ; preds = %167, %154
  store i32 0, i32* %3, align 4
  br label %171

171:                                              ; preds = %170, %17
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_gfx_rlc_enter_safe_mode(%struct.amdgpu_device*) #1

declare dso_local i32 @cz_enable_sck_slow_down_on_power_up(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @cz_enable_sck_slow_down_on_power_down(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @cz_enable_cp_power_gating(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @cz_update_gfx_cg_power_gating(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gfx_v8_0_enable_gfx_static_mg_power_gating(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gfx_v8_0_enable_gfx_dynamic_mg_power_gating(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @polaris11_enable_gfx_quick_mg_power_gating(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_gfx_rlc_exit_safe_mode(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
