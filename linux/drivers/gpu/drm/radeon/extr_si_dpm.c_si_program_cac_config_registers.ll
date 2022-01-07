; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_program_cac_config_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_program_cac_config_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.si_cac_config_reg = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SMC_CG_IND_START = common dso_local global i32 0, align 4
@SMC_CG_IND_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.si_cac_config_reg*)* @si_program_cac_config_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_program_cac_config_registers(%struct.radeon_device* %0, %struct.si_cac_config_reg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.si_cac_config_reg*, align 8
  %6 = alloca %struct.si_cac_config_reg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
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
  br label %92

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %88, %15
  %17 = load %struct.si_cac_config_reg*, %struct.si_cac_config_reg** %6, align 8
  %18 = getelementptr inbounds %struct.si_cac_config_reg, %struct.si_cac_config_reg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %91

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
  br label %44

38:                                               ; preds = %21
  %39 = load %struct.si_cac_config_reg*, %struct.si_cac_config_reg** %6, align 8
  %40 = getelementptr inbounds %struct.si_cac_config_reg, %struct.si_cac_config_reg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 2
  %43 = call i32 @RREG32(i32 %42)
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %38, %37
  %45 = load %struct.si_cac_config_reg*, %struct.si_cac_config_reg** %6, align 8
  %46 = getelementptr inbounds %struct.si_cac_config_reg, %struct.si_cac_config_reg* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load %struct.si_cac_config_reg*, %struct.si_cac_config_reg** %6, align 8
  %52 = getelementptr inbounds %struct.si_cac_config_reg, %struct.si_cac_config_reg* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.si_cac_config_reg*, %struct.si_cac_config_reg** %6, align 8
  %55 = getelementptr inbounds %struct.si_cac_config_reg, %struct.si_cac_config_reg* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %53, %56
  %58 = load %struct.si_cac_config_reg*, %struct.si_cac_config_reg** %6, align 8
  %59 = getelementptr inbounds %struct.si_cac_config_reg, %struct.si_cac_config_reg* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %57, %60
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load %struct.si_cac_config_reg*, %struct.si_cac_config_reg** %6, align 8
  %65 = getelementptr inbounds %struct.si_cac_config_reg, %struct.si_cac_config_reg* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %81 [
    i32 128, label %67
  ]

67:                                               ; preds = %44
  %68 = load i32, i32* @SMC_CG_IND_START, align 4
  %69 = load %struct.si_cac_config_reg*, %struct.si_cac_config_reg** %6, align 8
  %70 = getelementptr inbounds %struct.si_cac_config_reg, %struct.si_cac_config_reg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %68, %71
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @SMC_CG_IND_END, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @WREG32_SMC(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %67
  br label %88

81:                                               ; preds = %44
  %82 = load %struct.si_cac_config_reg*, %struct.si_cac_config_reg** %6, align 8
  %83 = getelementptr inbounds %struct.si_cac_config_reg, %struct.si_cac_config_reg* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 2
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @WREG32(i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %81, %80
  %89 = load %struct.si_cac_config_reg*, %struct.si_cac_config_reg** %6, align 8
  %90 = getelementptr inbounds %struct.si_cac_config_reg, %struct.si_cac_config_reg* %89, i32 1
  store %struct.si_cac_config_reg* %90, %struct.si_cac_config_reg** %6, align 8
  br label %16

91:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %12
  %93 = load i32, i32* %3, align 4
  ret i32 %93
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
