; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v9_0.c_gmc_v9_0_init_golden_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v9_0.c_gmc_v9_0_init_golden_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@golden_settings_mmhub_1_0_0 = common dso_local global i32 0, align 4
@golden_settings_athub_1_0_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gmc_v9_0_init_golden_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmc_v9_0_init_golden_registers(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %3 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %4 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %30 [
    i32 130, label %6
    i32 128, label %12
    i32 129, label %23
    i32 131, label %24
  ]

6:                                                ; preds = %1
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %8 = call i32 @amdgpu_sriov_vf(%struct.amdgpu_device* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %31

11:                                               ; preds = %6
  br label %12

12:                                               ; preds = %1, %11
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %14 = load i32, i32* @golden_settings_mmhub_1_0_0, align 4
  %15 = load i32, i32* @golden_settings_mmhub_1_0_0, align 4
  %16 = call i32 @ARRAY_SIZE(i32 %15)
  %17 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %13, i32 %14, i32 %16)
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %19 = load i32, i32* @golden_settings_athub_1_0_0, align 4
  %20 = load i32, i32* @golden_settings_athub_1_0_0, align 4
  %21 = call i32 @ARRAY_SIZE(i32 %20)
  %22 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %18, i32 %19, i32 %21)
  br label %31

23:                                               ; preds = %1
  br label %31

24:                                               ; preds = %1
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %26 = load i32, i32* @golden_settings_athub_1_0_0, align 4
  %27 = load i32, i32* @golden_settings_athub_1_0_0, align 4
  %28 = call i32 @ARRAY_SIZE(i32 %27)
  %29 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %25, i32 %26, i32 %28)
  br label %31

30:                                               ; preds = %1
  br label %31

31:                                               ; preds = %30, %24, %23, %12, %10
  ret void
}

declare dso_local i32 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @soc15_program_register_sequence(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
