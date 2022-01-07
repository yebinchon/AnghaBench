; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_program_pt_config_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_program_pt_config_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.kv_pt_config_reg = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@KV_CONFIGREG_CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.kv_pt_config_reg*)* @kv_program_pt_config_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kv_program_pt_config_registers(%struct.amdgpu_device* %0, %struct.kv_pt_config_reg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.kv_pt_config_reg*, align 8
  %6 = alloca %struct.kv_pt_config_reg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.kv_pt_config_reg* %1, %struct.kv_pt_config_reg** %5, align 8
  %9 = load %struct.kv_pt_config_reg*, %struct.kv_pt_config_reg** %5, align 8
  store %struct.kv_pt_config_reg* %9, %struct.kv_pt_config_reg** %6, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.kv_pt_config_reg*, %struct.kv_pt_config_reg** %6, align 8
  %11 = icmp eq %struct.kv_pt_config_reg* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %109

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %105, %15
  %17 = load %struct.kv_pt_config_reg*, %struct.kv_pt_config_reg** %6, align 8
  %18 = getelementptr inbounds %struct.kv_pt_config_reg, %struct.kv_pt_config_reg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %108

21:                                               ; preds = %16
  %22 = load %struct.kv_pt_config_reg*, %struct.kv_pt_config_reg** %6, align 8
  %23 = getelementptr inbounds %struct.kv_pt_config_reg, %struct.kv_pt_config_reg* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @KV_CONFIGREG_CACHE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %21
  %28 = load %struct.kv_pt_config_reg*, %struct.kv_pt_config_reg** %6, align 8
  %29 = getelementptr inbounds %struct.kv_pt_config_reg, %struct.kv_pt_config_reg* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.kv_pt_config_reg*, %struct.kv_pt_config_reg** %6, align 8
  %32 = getelementptr inbounds %struct.kv_pt_config_reg, %struct.kv_pt_config_reg* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %30, %33
  %35 = load %struct.kv_pt_config_reg*, %struct.kv_pt_config_reg** %6, align 8
  %36 = getelementptr inbounds %struct.kv_pt_config_reg, %struct.kv_pt_config_reg* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %34, %37
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %105

41:                                               ; preds = %21
  %42 = load %struct.kv_pt_config_reg*, %struct.kv_pt_config_reg** %6, align 8
  %43 = getelementptr inbounds %struct.kv_pt_config_reg, %struct.kv_pt_config_reg* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %55 [
    i32 128, label %45
    i32 129, label %50
  ]

45:                                               ; preds = %41
  %46 = load %struct.kv_pt_config_reg*, %struct.kv_pt_config_reg** %6, align 8
  %47 = getelementptr inbounds %struct.kv_pt_config_reg, %struct.kv_pt_config_reg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @RREG32_SMC(i32 %48)
  store i32 %49, i32* %7, align 4
  br label %60

50:                                               ; preds = %41
  %51 = load %struct.kv_pt_config_reg*, %struct.kv_pt_config_reg** %6, align 8
  %52 = getelementptr inbounds %struct.kv_pt_config_reg, %struct.kv_pt_config_reg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @RREG32_DIDT(i32 %53)
  store i32 %54, i32* %7, align 4
  br label %60

55:                                               ; preds = %41
  %56 = load %struct.kv_pt_config_reg*, %struct.kv_pt_config_reg** %6, align 8
  %57 = getelementptr inbounds %struct.kv_pt_config_reg, %struct.kv_pt_config_reg* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @RREG32(i32 %58)
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %55, %50, %45
  %61 = load %struct.kv_pt_config_reg*, %struct.kv_pt_config_reg** %6, align 8
  %62 = getelementptr inbounds %struct.kv_pt_config_reg, %struct.kv_pt_config_reg* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load %struct.kv_pt_config_reg*, %struct.kv_pt_config_reg** %6, align 8
  %68 = getelementptr inbounds %struct.kv_pt_config_reg, %struct.kv_pt_config_reg* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.kv_pt_config_reg*, %struct.kv_pt_config_reg** %6, align 8
  %71 = getelementptr inbounds %struct.kv_pt_config_reg, %struct.kv_pt_config_reg* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %69, %72
  %74 = load %struct.kv_pt_config_reg*, %struct.kv_pt_config_reg** %6, align 8
  %75 = getelementptr inbounds %struct.kv_pt_config_reg, %struct.kv_pt_config_reg* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %73, %76
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %83 = load %struct.kv_pt_config_reg*, %struct.kv_pt_config_reg** %6, align 8
  %84 = getelementptr inbounds %struct.kv_pt_config_reg, %struct.kv_pt_config_reg* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %98 [
    i32 128, label %86
    i32 129, label %92
  ]

86:                                               ; preds = %60
  %87 = load %struct.kv_pt_config_reg*, %struct.kv_pt_config_reg** %6, align 8
  %88 = getelementptr inbounds %struct.kv_pt_config_reg, %struct.kv_pt_config_reg* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @WREG32_SMC(i32 %89, i32 %90)
  br label %104

92:                                               ; preds = %60
  %93 = load %struct.kv_pt_config_reg*, %struct.kv_pt_config_reg** %6, align 8
  %94 = getelementptr inbounds %struct.kv_pt_config_reg, %struct.kv_pt_config_reg* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @WREG32_DIDT(i32 %95, i32 %96)
  br label %104

98:                                               ; preds = %60
  %99 = load %struct.kv_pt_config_reg*, %struct.kv_pt_config_reg** %6, align 8
  %100 = getelementptr inbounds %struct.kv_pt_config_reg, %struct.kv_pt_config_reg* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @WREG32(i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %98, %92, %86
  br label %105

105:                                              ; preds = %104, %27
  %106 = load %struct.kv_pt_config_reg*, %struct.kv_pt_config_reg** %6, align 8
  %107 = getelementptr inbounds %struct.kv_pt_config_reg, %struct.kv_pt_config_reg* %106, i32 1
  store %struct.kv_pt_config_reg* %107, %struct.kv_pt_config_reg** %6, align 8
  br label %16

108:                                              ; preds = %16
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %12
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @RREG32_SMC(i32) #1

declare dso_local i32 @RREG32_DIDT(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32_SMC(i32, i32) #1

declare dso_local i32 @WREG32_DIDT(i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
