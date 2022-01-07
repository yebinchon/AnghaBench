; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_init_golden_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_init_golden_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32 }

@golden_settings_gc_9_0 = common dso_local global i32 0, align 4
@golden_settings_gc_9_0_vg10 = common dso_local global i32 0, align 4
@golden_settings_gc_9_2_1 = common dso_local global i32 0, align 4
@golden_settings_gc_9_2_1_vg12 = common dso_local global i32 0, align 4
@golden_settings_gc_9_0_vg20 = common dso_local global i32 0, align 4
@golden_settings_gc_9_4_1_arct = common dso_local global i32 0, align 4
@golden_settings_gc_9_1 = common dso_local global i32 0, align 4
@golden_settings_gc_9_1_rv2 = common dso_local global i32 0, align 4
@golden_settings_gc_9_1_rv1 = common dso_local global i32 0, align 4
@golden_settings_gc_9_1_rn = common dso_local global i32 0, align 4
@golden_settings_gc_9_x_common = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v9_0_init_golden_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v9_0_init_golden_registers(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %3 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %4 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %74 [
    i32 130, label %6
    i32 129, label %17
    i32 128, label %28
    i32 133, label %39
    i32 132, label %45
    i32 131, label %68
  ]

6:                                                ; preds = %1
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %8 = load i32, i32* @golden_settings_gc_9_0, align 4
  %9 = load i32, i32* @golden_settings_gc_9_0, align 4
  %10 = call i64 @ARRAY_SIZE(i32 %9)
  %11 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %7, i32 %8, i64 %10)
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %13 = load i32, i32* @golden_settings_gc_9_0_vg10, align 4
  %14 = load i32, i32* @golden_settings_gc_9_0_vg10, align 4
  %15 = call i64 @ARRAY_SIZE(i32 %14)
  %16 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %12, i32 %13, i64 %15)
  br label %75

17:                                               ; preds = %1
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %19 = load i32, i32* @golden_settings_gc_9_2_1, align 4
  %20 = load i32, i32* @golden_settings_gc_9_2_1, align 4
  %21 = call i64 @ARRAY_SIZE(i32 %20)
  %22 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %18, i32 %19, i64 %21)
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %24 = load i32, i32* @golden_settings_gc_9_2_1_vg12, align 4
  %25 = load i32, i32* @golden_settings_gc_9_2_1_vg12, align 4
  %26 = call i64 @ARRAY_SIZE(i32 %25)
  %27 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %23, i32 %24, i64 %26)
  br label %75

28:                                               ; preds = %1
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %30 = load i32, i32* @golden_settings_gc_9_0, align 4
  %31 = load i32, i32* @golden_settings_gc_9_0, align 4
  %32 = call i64 @ARRAY_SIZE(i32 %31)
  %33 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %29, i32 %30, i64 %32)
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %35 = load i32, i32* @golden_settings_gc_9_0_vg20, align 4
  %36 = load i32, i32* @golden_settings_gc_9_0_vg20, align 4
  %37 = call i64 @ARRAY_SIZE(i32 %36)
  %38 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %34, i32 %35, i64 %37)
  br label %75

39:                                               ; preds = %1
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %41 = load i32, i32* @golden_settings_gc_9_4_1_arct, align 4
  %42 = load i32, i32* @golden_settings_gc_9_4_1_arct, align 4
  %43 = call i64 @ARRAY_SIZE(i32 %42)
  %44 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %40, i32 %41, i64 %43)
  br label %75

45:                                               ; preds = %1
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %47 = load i32, i32* @golden_settings_gc_9_1, align 4
  %48 = load i32, i32* @golden_settings_gc_9_1, align 4
  %49 = call i64 @ARRAY_SIZE(i32 %48)
  %50 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %46, i32 %47, i64 %49)
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %53, 8
  br i1 %54, label %55, label %61

55:                                               ; preds = %45
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %57 = load i32, i32* @golden_settings_gc_9_1_rv2, align 4
  %58 = load i32, i32* @golden_settings_gc_9_1_rv2, align 4
  %59 = call i64 @ARRAY_SIZE(i32 %58)
  %60 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %56, i32 %57, i64 %59)
  br label %67

61:                                               ; preds = %45
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %63 = load i32, i32* @golden_settings_gc_9_1_rv1, align 4
  %64 = load i32, i32* @golden_settings_gc_9_1_rv1, align 4
  %65 = call i64 @ARRAY_SIZE(i32 %64)
  %66 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %62, i32 %63, i64 %65)
  br label %67

67:                                               ; preds = %61, %55
  br label %75

68:                                               ; preds = %1
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %70 = load i32, i32* @golden_settings_gc_9_1_rn, align 4
  %71 = load i32, i32* @golden_settings_gc_9_1_rn, align 4
  %72 = call i64 @ARRAY_SIZE(i32 %71)
  %73 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %69, i32 %70, i64 %72)
  br label %86

74:                                               ; preds = %1
  br label %75

75:                                               ; preds = %74, %67, %39, %28, %17, %6
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %77 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 133
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %82 = load i32, i32* @golden_settings_gc_9_x_common, align 4
  %83 = load i32, i32* @golden_settings_gc_9_x_common, align 4
  %84 = call i64 @ARRAY_SIZE(i32 %83)
  %85 = call i32 @soc15_program_register_sequence(%struct.amdgpu_device* %81, i32 %82, i64 %84)
  br label %86

86:                                               ; preds = %68, %80, %75
  ret void
}

declare dso_local i32 @soc15_program_register_sequence(%struct.amdgpu_device*, i32, i64) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
