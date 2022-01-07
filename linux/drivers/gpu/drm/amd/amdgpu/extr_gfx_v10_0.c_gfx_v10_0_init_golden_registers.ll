; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_init_golden_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_init_golden_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@golden_settings_gc_10_1 = common dso_local global i32 0, align 4
@golden_settings_gc_10_0_nv10 = common dso_local global i32 0, align 4
@golden_settings_gc_10_1_1 = common dso_local global i32 0, align 4
@golden_settings_gc_10_1_nv14 = common dso_local global i32 0, align 4
@golden_settings_gc_10_1_2 = common dso_local global i32 0, align 4
@golden_settings_gc_10_1_2_nv12 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v10_0_init_golden_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v10_0_init_golden_registers(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %3 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %4 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %39 [
    i32 130, label %6
    i32 128, label %17
    i32 129, label %28
  ]

6:                                                ; preds = %1
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %8 = load i32, i32* @golden_settings_gc_10_1, align 4
  %9 = load i32, i32* @golden_settings_gc_10_1, align 4
  %10 = call i32 @ARRAY_SIZE(i32 %9)
  %11 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %7, i32 %8, i32 %10)
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %13 = load i32, i32* @golden_settings_gc_10_0_nv10, align 4
  %14 = load i32, i32* @golden_settings_gc_10_0_nv10, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %12, i32 %13, i32 %15)
  br label %40

17:                                               ; preds = %1
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %19 = load i32, i32* @golden_settings_gc_10_1_1, align 4
  %20 = load i32, i32* @golden_settings_gc_10_1_1, align 4
  %21 = call i32 @ARRAY_SIZE(i32 %20)
  %22 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %18, i32 %19, i32 %21)
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %24 = load i32, i32* @golden_settings_gc_10_1_nv14, align 4
  %25 = load i32, i32* @golden_settings_gc_10_1_nv14, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %23, i32 %24, i32 %26)
  br label %40

28:                                               ; preds = %1
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %30 = load i32, i32* @golden_settings_gc_10_1_2, align 4
  %31 = load i32, i32* @golden_settings_gc_10_1_2, align 4
  %32 = call i32 @ARRAY_SIZE(i32 %31)
  %33 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %29, i32 %30, i32 %32)
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %35 = load i32, i32* @golden_settings_gc_10_1_2_nv12, align 4
  %36 = load i32, i32* @golden_settings_gc_10_1_2_nv12, align 4
  %37 = call i32 @ARRAY_SIZE(i32 %36)
  %38 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %34, i32 %35, i32 %37)
  br label %40

39:                                               ; preds = %1
  br label %40

40:                                               ; preds = %39, %28, %17, %6
  ret void
}

declare dso_local i32 @soc15_program_register_sequence(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
