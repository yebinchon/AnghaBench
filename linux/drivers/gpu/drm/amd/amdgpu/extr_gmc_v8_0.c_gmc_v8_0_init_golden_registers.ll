; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v8_0.c_gmc_v8_0_init_golden_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v8_0.c_gmc_v8_0_init_golden_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@fiji_mgcg_cgcg_init = common dso_local global i32 0, align 4
@golden_settings_fiji_a10 = common dso_local global i32 0, align 4
@tonga_mgcg_cgcg_init = common dso_local global i32 0, align 4
@golden_settings_tonga_a11 = common dso_local global i32 0, align 4
@golden_settings_polaris11_a11 = common dso_local global i32 0, align 4
@golden_settings_polaris10_a11 = common dso_local global i32 0, align 4
@cz_mgcg_cgcg_init = common dso_local global i32 0, align 4
@stoney_mgcg_cgcg_init = common dso_local global i32 0, align 4
@golden_settings_stoney_common = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gmc_v8_0_init_golden_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmc_v8_0_init_golden_registers(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %3 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %4 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %57 [
    i32 134, label %6
    i32 129, label %17
    i32 132, label %28
    i32 131, label %28
    i32 128, label %28
    i32 133, label %34
    i32 135, label %40
    i32 130, label %46
  ]

6:                                                ; preds = %1
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %8 = load i32, i32* @fiji_mgcg_cgcg_init, align 4
  %9 = load i32, i32* @fiji_mgcg_cgcg_init, align 4
  %10 = call i32 @ARRAY_SIZE(i32 %9)
  %11 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %7, i32 %8, i32 %10)
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %13 = load i32, i32* @golden_settings_fiji_a10, align 4
  %14 = load i32, i32* @golden_settings_fiji_a10, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %12, i32 %13, i32 %15)
  br label %58

17:                                               ; preds = %1
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %19 = load i32, i32* @tonga_mgcg_cgcg_init, align 4
  %20 = load i32, i32* @tonga_mgcg_cgcg_init, align 4
  %21 = call i32 @ARRAY_SIZE(i32 %20)
  %22 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %18, i32 %19, i32 %21)
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %24 = load i32, i32* @golden_settings_tonga_a11, align 4
  %25 = load i32, i32* @golden_settings_tonga_a11, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %23, i32 %24, i32 %26)
  br label %58

28:                                               ; preds = %1, %1, %1
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %30 = load i32, i32* @golden_settings_polaris11_a11, align 4
  %31 = load i32, i32* @golden_settings_polaris11_a11, align 4
  %32 = call i32 @ARRAY_SIZE(i32 %31)
  %33 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %29, i32 %30, i32 %32)
  br label %58

34:                                               ; preds = %1
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %36 = load i32, i32* @golden_settings_polaris10_a11, align 4
  %37 = load i32, i32* @golden_settings_polaris10_a11, align 4
  %38 = call i32 @ARRAY_SIZE(i32 %37)
  %39 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %35, i32 %36, i32 %38)
  br label %58

40:                                               ; preds = %1
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %42 = load i32, i32* @cz_mgcg_cgcg_init, align 4
  %43 = load i32, i32* @cz_mgcg_cgcg_init, align 4
  %44 = call i32 @ARRAY_SIZE(i32 %43)
  %45 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %41, i32 %42, i32 %44)
  br label %58

46:                                               ; preds = %1
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %48 = load i32, i32* @stoney_mgcg_cgcg_init, align 4
  %49 = load i32, i32* @stoney_mgcg_cgcg_init, align 4
  %50 = call i32 @ARRAY_SIZE(i32 %49)
  %51 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %47, i32 %48, i32 %50)
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %53 = load i32, i32* @golden_settings_stoney_common, align 4
  %54 = load i32, i32* @golden_settings_stoney_common, align 4
  %55 = call i32 @ARRAY_SIZE(i32 %54)
  %56 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %52, i32 %53, i32 %55)
  br label %58

57:                                               ; preds = %1
  br label %58

58:                                               ; preds = %57, %46, %40, %34, %28, %17, %6
  ret void
}

declare dso_local i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
