; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik.c_cik_init_golden_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik.c_cik_init_golden_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32 }

@bonaire_mgcg_cgcg_init = common dso_local global i32 0, align 4
@bonaire_golden_registers = common dso_local global i32 0, align 4
@bonaire_golden_common_registers = common dso_local global i32 0, align 4
@bonaire_golden_spm_registers = common dso_local global i32 0, align 4
@kalindi_mgcg_cgcg_init = common dso_local global i32 0, align 4
@kalindi_golden_registers = common dso_local global i32 0, align 4
@kalindi_golden_common_registers = common dso_local global i32 0, align 4
@kalindi_golden_spm_registers = common dso_local global i32 0, align 4
@godavari_golden_registers = common dso_local global i32 0, align 4
@spectre_mgcg_cgcg_init = common dso_local global i32 0, align 4
@spectre_golden_registers = common dso_local global i32 0, align 4
@spectre_golden_common_registers = common dso_local global i32 0, align 4
@spectre_golden_spm_registers = common dso_local global i32 0, align 4
@hawaii_mgcg_cgcg_init = common dso_local global i32 0, align 4
@hawaii_golden_registers = common dso_local global i32 0, align 4
@hawaii_golden_common_registers = common dso_local global i32 0, align 4
@hawaii_golden_spm_registers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @cik_init_golden_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cik_init_golden_registers(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %3 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %4 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %114 [
    i32 132, label %9
    i32 130, label %30
    i32 128, label %51
    i32 129, label %72
    i32 131, label %93
  ]

9:                                                ; preds = %1
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %11 = load i32, i32* @bonaire_mgcg_cgcg_init, align 4
  %12 = load i32, i32* @bonaire_mgcg_cgcg_init, align 4
  %13 = call i32 @ARRAY_SIZE(i32 %12)
  %14 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %10, i32 %11, i32 %13)
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %16 = load i32, i32* @bonaire_golden_registers, align 4
  %17 = load i32, i32* @bonaire_golden_registers, align 4
  %18 = call i32 @ARRAY_SIZE(i32 %17)
  %19 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %15, i32 %16, i32 %18)
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %21 = load i32, i32* @bonaire_golden_common_registers, align 4
  %22 = load i32, i32* @bonaire_golden_common_registers, align 4
  %23 = call i32 @ARRAY_SIZE(i32 %22)
  %24 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %20, i32 %21, i32 %23)
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %26 = load i32, i32* @bonaire_golden_spm_registers, align 4
  %27 = load i32, i32* @bonaire_golden_spm_registers, align 4
  %28 = call i32 @ARRAY_SIZE(i32 %27)
  %29 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %25, i32 %26, i32 %28)
  br label %115

30:                                               ; preds = %1
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %32 = load i32, i32* @kalindi_mgcg_cgcg_init, align 4
  %33 = load i32, i32* @kalindi_mgcg_cgcg_init, align 4
  %34 = call i32 @ARRAY_SIZE(i32 %33)
  %35 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %31, i32 %32, i32 %34)
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %37 = load i32, i32* @kalindi_golden_registers, align 4
  %38 = load i32, i32* @kalindi_golden_registers, align 4
  %39 = call i32 @ARRAY_SIZE(i32 %38)
  %40 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %36, i32 %37, i32 %39)
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %42 = load i32, i32* @kalindi_golden_common_registers, align 4
  %43 = load i32, i32* @kalindi_golden_common_registers, align 4
  %44 = call i32 @ARRAY_SIZE(i32 %43)
  %45 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %41, i32 %42, i32 %44)
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %47 = load i32, i32* @kalindi_golden_spm_registers, align 4
  %48 = load i32, i32* @kalindi_golden_spm_registers, align 4
  %49 = call i32 @ARRAY_SIZE(i32 %48)
  %50 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %46, i32 %47, i32 %49)
  br label %115

51:                                               ; preds = %1
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %53 = load i32, i32* @kalindi_mgcg_cgcg_init, align 4
  %54 = load i32, i32* @kalindi_mgcg_cgcg_init, align 4
  %55 = call i32 @ARRAY_SIZE(i32 %54)
  %56 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %52, i32 %53, i32 %55)
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %58 = load i32, i32* @godavari_golden_registers, align 4
  %59 = load i32, i32* @godavari_golden_registers, align 4
  %60 = call i32 @ARRAY_SIZE(i32 %59)
  %61 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %57, i32 %58, i32 %60)
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %63 = load i32, i32* @kalindi_golden_common_registers, align 4
  %64 = load i32, i32* @kalindi_golden_common_registers, align 4
  %65 = call i32 @ARRAY_SIZE(i32 %64)
  %66 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %62, i32 %63, i32 %65)
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %68 = load i32, i32* @kalindi_golden_spm_registers, align 4
  %69 = load i32, i32* @kalindi_golden_spm_registers, align 4
  %70 = call i32 @ARRAY_SIZE(i32 %69)
  %71 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %67, i32 %68, i32 %70)
  br label %115

72:                                               ; preds = %1
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %74 = load i32, i32* @spectre_mgcg_cgcg_init, align 4
  %75 = load i32, i32* @spectre_mgcg_cgcg_init, align 4
  %76 = call i32 @ARRAY_SIZE(i32 %75)
  %77 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %73, i32 %74, i32 %76)
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %79 = load i32, i32* @spectre_golden_registers, align 4
  %80 = load i32, i32* @spectre_golden_registers, align 4
  %81 = call i32 @ARRAY_SIZE(i32 %80)
  %82 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %78, i32 %79, i32 %81)
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %84 = load i32, i32* @spectre_golden_common_registers, align 4
  %85 = load i32, i32* @spectre_golden_common_registers, align 4
  %86 = call i32 @ARRAY_SIZE(i32 %85)
  %87 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %83, i32 %84, i32 %86)
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %89 = load i32, i32* @spectre_golden_spm_registers, align 4
  %90 = load i32, i32* @spectre_golden_spm_registers, align 4
  %91 = call i32 @ARRAY_SIZE(i32 %90)
  %92 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %88, i32 %89, i32 %91)
  br label %115

93:                                               ; preds = %1
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %95 = load i32, i32* @hawaii_mgcg_cgcg_init, align 4
  %96 = load i32, i32* @hawaii_mgcg_cgcg_init, align 4
  %97 = call i32 @ARRAY_SIZE(i32 %96)
  %98 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %94, i32 %95, i32 %97)
  %99 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %100 = load i32, i32* @hawaii_golden_registers, align 4
  %101 = load i32, i32* @hawaii_golden_registers, align 4
  %102 = call i32 @ARRAY_SIZE(i32 %101)
  %103 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %99, i32 %100, i32 %102)
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %105 = load i32, i32* @hawaii_golden_common_registers, align 4
  %106 = load i32, i32* @hawaii_golden_common_registers, align 4
  %107 = call i32 @ARRAY_SIZE(i32 %106)
  %108 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %104, i32 %105, i32 %107)
  %109 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %110 = load i32, i32* @hawaii_golden_spm_registers, align 4
  %111 = load i32, i32* @hawaii_golden_spm_registers, align 4
  %112 = call i32 @ARRAY_SIZE(i32 %111)
  %113 = call i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device* %109, i32 %110, i32 %112)
  br label %115

114:                                              ; preds = %1
  br label %115

115:                                              ; preds = %114, %93, %72, %51, %30, %9
  %116 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %117 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %116, i32 0, i32 1
  %118 = call i32 @mutex_unlock(i32* %117)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @amdgpu_device_program_register_sequence(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
