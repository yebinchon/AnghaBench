; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_program_cac_config_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_program_cac_config_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.si_cac_config_reg = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SMC_CG_IND_START = common dso_local global i32 0, align 4
@SMC_CG_IND_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.si_cac_config_reg*)* @si_program_cac_config_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_program_cac_config_registers(%struct.amdgpu_device* %0, %struct.si_cac_config_reg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.si_cac_config_reg*, align 8
  %6 = alloca %struct.si_cac_config_reg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.si_cac_config_reg* %1, %struct.si_cac_config_reg** %5, align 8
  %9 = load %struct.si_cac_config_reg*, %struct.si_cac_config_reg** %5, align 8
  store %struct.si_cac_config_reg* %9, %struct.si_cac_config_reg** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.si_cac_config_reg*, %struct.si_cac_config_reg** %6, align 8
  %11 = icmp ne %struct.si_cac_config_reg* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %90

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %86, %15
  %17 = load %struct.si_cac_config_reg*, %struct.si_cac_config_reg** %6, align 8
  %18 = getelementptr inbounds %struct.si_cac_config_reg, %struct.si_cac_config_reg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %89

21:                                               ; preds = %16
  %22 = load %struct.si_cac_config_reg*, %struct.si_cac_config_reg** %6, align 8
  %23 = getelementptr inbounds %struct.si_cac_config_reg, %struct.si_cac_config_reg* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %38 [
    i32 128, label %25
  ]

25:                                               ; preds = %21
  %26 = load i32, i32* @SMC_CG_IND_START, align 4
  %27 = load %struct.si_cac_config_reg*, %struct.si_cac_config_reg** %6, align 8
  %28 = getelementptr inbounds %struct.si_cac_config_reg, %struct.si_cac_config_reg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @SMC_CG_IND_END, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @RREG32_SMC(i32 %35)
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %34, %25
  br label %43

38:                                               ; preds = %21
  %39 = load %struct.si_cac_config_reg*, %struct.si_cac_config_reg** %6, align 8
  %40 = getelementptr inbounds %struct.si_cac_config_reg, %struct.si_cac_config_reg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @RREG32(i32 %41)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %38, %37
  %44 = load %struct.si_cac_config_reg*, %struct.si_cac_config_reg** %6, align 8
  %45 = getelementptr inbounds %struct.si_cac_config_reg, %struct.si_cac_config_reg* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load %struct.si_cac_config_reg*, %struct.si_cac_config_reg** %6, align 8
  %51 = getelementptr inbounds %struct.si_cac_config_reg, %struct.si_cac_config_reg* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.si_cac_config_reg*, %struct.si_cac_config_reg** %6, align 8
  %54 = getelementptr inbounds %struct.si_cac_config_reg, %struct.si_cac_config_reg* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %52, %55
  %57 = load %struct.si_cac_config_reg*, %struct.si_cac_config_reg** %6, align 8
  %58 = getelementptr inbounds %struct.si_cac_config_reg, %struct.si_cac_config_reg* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %56, %59
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  %63 = load %struct.si_cac_config_reg*, %struct.si_cac_config_reg** %6, align 8
  %64 = getelementptr inbounds %struct.si_cac_config_reg, %struct.si_cac_config_reg* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %80 [
    i32 128, label %66
  ]

66:                                               ; preds = %43
  %67 = load i32, i32* @SMC_CG_IND_START, align 4
  %68 = load %struct.si_cac_config_reg*, %struct.si_cac_config_reg** %6, align 8
  %69 = getelementptr inbounds %struct.si_cac_config_reg, %struct.si_cac_config_reg* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %67, %70
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @SMC_CG_IND_END, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @WREG32_SMC(i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %66
  br label %86

80:                                               ; preds = %43
  %81 = load %struct.si_cac_config_reg*, %struct.si_cac_config_reg** %6, align 8
  %82 = getelementptr inbounds %struct.si_cac_config_reg, %struct.si_cac_config_reg* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @WREG32(i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %80, %79
  %87 = load %struct.si_cac_config_reg*, %struct.si_cac_config_reg** %6, align 8
  %88 = getelementptr inbounds %struct.si_cac_config_reg, %struct.si_cac_config_reg* %87, i32 1
  store %struct.si_cac_config_reg* %88, %struct.si_cac_config_reg** %6, align 8
  br label %16

89:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %12
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @RREG32_SMC(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32_SMC(i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
