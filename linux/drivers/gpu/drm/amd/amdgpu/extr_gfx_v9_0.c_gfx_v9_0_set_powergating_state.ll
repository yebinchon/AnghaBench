; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_set_powergating_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_set_powergating_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@AMD_PG_STATE_GATE = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_RLC_SMU_HS = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_CP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @gfx_v9_0_set_powergating_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v9_0_set_powergating_state(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @AMD_PG_STATE_GATE, align 4
  %11 = icmp eq i32 %9, %10
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 1, i32 0
  store i32 %13, i32* %6, align 4
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %96 [
    i32 130, label %17
    i32 129, label %17
    i32 128, label %82
  ]

17:                                               ; preds = %2, %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %22 = call i32 @amdgpu_gfx_off_ctrl(%struct.amdgpu_device* %21, i32 0)
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @cancel_delayed_work_sync(i32* %25)
  br label %27

27:                                               ; preds = %20, %17
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %29 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @AMD_PG_SUPPORT_RLC_SMU_HS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %36 = call i32 @gfx_v9_0_enable_sck_slow_down_on_power_up(%struct.amdgpu_device* %35, i32 1)
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %38 = call i32 @gfx_v9_0_enable_sck_slow_down_on_power_down(%struct.amdgpu_device* %37, i32 1)
  br label %44

39:                                               ; preds = %27
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %41 = call i32 @gfx_v9_0_enable_sck_slow_down_on_power_up(%struct.amdgpu_device* %40, i32 0)
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %43 = call i32 @gfx_v9_0_enable_sck_slow_down_on_power_down(%struct.amdgpu_device* %42, i32 0)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @AMD_PG_SUPPORT_CP, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %53 = call i32 @gfx_v9_0_enable_cp_power_gating(%struct.amdgpu_device* %52, i32 1)
  br label %57

54:                                               ; preds = %44
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %56 = call i32 @gfx_v9_0_enable_cp_power_gating(%struct.amdgpu_device* %55, i32 0)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %59 = call i32 @is_support_sw_smu(%struct.amdgpu_device* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 3
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @smu_set_gfx_cgpg(i32* %66, i32 %67)
  br label %69

69:                                               ; preds = %64, %61, %57
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @gfx_v9_0_update_gfx_cg_power_gating(%struct.amdgpu_device* %70, i32 %71)
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @gfx_v9_0_update_gfx_mg_power_gating(%struct.amdgpu_device* %73, i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %80 = call i32 @amdgpu_gfx_off_ctrl(%struct.amdgpu_device* %79, i32 1)
  br label %81

81:                                               ; preds = %78, %69
  br label %97

82:                                               ; preds = %2
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %82
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %87 = call i32 @amdgpu_gfx_off_ctrl(%struct.amdgpu_device* %86, i32 0)
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = call i32 @cancel_delayed_work_sync(i32* %90)
  br label %95

92:                                               ; preds = %82
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %94 = call i32 @amdgpu_gfx_off_ctrl(%struct.amdgpu_device* %93, i32 1)
  br label %95

95:                                               ; preds = %92, %85
  br label %97

96:                                               ; preds = %2
  br label %97

97:                                               ; preds = %96, %95, %81
  ret i32 0
}

declare dso_local i32 @amdgpu_gfx_off_ctrl(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @gfx_v9_0_enable_sck_slow_down_on_power_up(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gfx_v9_0_enable_sck_slow_down_on_power_down(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gfx_v9_0_enable_cp_power_gating(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @is_support_sw_smu(%struct.amdgpu_device*) #1

declare dso_local i32 @smu_set_gfx_cgpg(i32*, i32) #1

declare dso_local i32 @gfx_v9_0_update_gfx_cg_power_gating(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gfx_v9_0_update_gfx_mg_power_gating(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
