; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_program_pt_config_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_program_pt_config_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.ci_pt_config_reg = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CISLANDS_CONFIGREG_CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.ci_pt_config_reg*)* @ci_program_pt_config_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_program_pt_config_registers(%struct.radeon_device* %0, %struct.ci_pt_config_reg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.ci_pt_config_reg*, align 8
  %6 = alloca %struct.ci_pt_config_reg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.ci_pt_config_reg* %1, %struct.ci_pt_config_reg** %5, align 8
  %9 = load %struct.ci_pt_config_reg*, %struct.ci_pt_config_reg** %5, align 8
  store %struct.ci_pt_config_reg* %9, %struct.ci_pt_config_reg** %6, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.ci_pt_config_reg*, %struct.ci_pt_config_reg** %6, align 8
  %11 = icmp eq %struct.ci_pt_config_reg* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %111

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %107, %15
  %17 = load %struct.ci_pt_config_reg*, %struct.ci_pt_config_reg** %6, align 8
  %18 = getelementptr inbounds %struct.ci_pt_config_reg, %struct.ci_pt_config_reg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %110

21:                                               ; preds = %16
  %22 = load %struct.ci_pt_config_reg*, %struct.ci_pt_config_reg** %6, align 8
  %23 = getelementptr inbounds %struct.ci_pt_config_reg, %struct.ci_pt_config_reg* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CISLANDS_CONFIGREG_CACHE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %21
  %28 = load %struct.ci_pt_config_reg*, %struct.ci_pt_config_reg** %6, align 8
  %29 = getelementptr inbounds %struct.ci_pt_config_reg, %struct.ci_pt_config_reg* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ci_pt_config_reg*, %struct.ci_pt_config_reg** %6, align 8
  %32 = getelementptr inbounds %struct.ci_pt_config_reg, %struct.ci_pt_config_reg* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %30, %33
  %35 = load %struct.ci_pt_config_reg*, %struct.ci_pt_config_reg** %6, align 8
  %36 = getelementptr inbounds %struct.ci_pt_config_reg, %struct.ci_pt_config_reg* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %34, %37
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %107

41:                                               ; preds = %21
  %42 = load %struct.ci_pt_config_reg*, %struct.ci_pt_config_reg** %6, align 8
  %43 = getelementptr inbounds %struct.ci_pt_config_reg, %struct.ci_pt_config_reg* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %55 [
    i32 128, label %45
    i32 129, label %50
  ]

45:                                               ; preds = %41
  %46 = load %struct.ci_pt_config_reg*, %struct.ci_pt_config_reg** %6, align 8
  %47 = getelementptr inbounds %struct.ci_pt_config_reg, %struct.ci_pt_config_reg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @RREG32_SMC(i32 %48)
  store i32 %49, i32* %7, align 4
  br label %61

50:                                               ; preds = %41
  %51 = load %struct.ci_pt_config_reg*, %struct.ci_pt_config_reg** %6, align 8
  %52 = getelementptr inbounds %struct.ci_pt_config_reg, %struct.ci_pt_config_reg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @RREG32_DIDT(i32 %53)
  store i32 %54, i32* %7, align 4
  br label %61

55:                                               ; preds = %41
  %56 = load %struct.ci_pt_config_reg*, %struct.ci_pt_config_reg** %6, align 8
  %57 = getelementptr inbounds %struct.ci_pt_config_reg, %struct.ci_pt_config_reg* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 2
  %60 = call i32 @RREG32(i32 %59)
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %55, %50, %45
  %62 = load %struct.ci_pt_config_reg*, %struct.ci_pt_config_reg** %6, align 8
  %63 = getelementptr inbounds %struct.ci_pt_config_reg, %struct.ci_pt_config_reg* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load %struct.ci_pt_config_reg*, %struct.ci_pt_config_reg** %6, align 8
  %69 = getelementptr inbounds %struct.ci_pt_config_reg, %struct.ci_pt_config_reg* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ci_pt_config_reg*, %struct.ci_pt_config_reg** %6, align 8
  %72 = getelementptr inbounds %struct.ci_pt_config_reg, %struct.ci_pt_config_reg* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %70, %73
  %75 = load %struct.ci_pt_config_reg*, %struct.ci_pt_config_reg** %6, align 8
  %76 = getelementptr inbounds %struct.ci_pt_config_reg, %struct.ci_pt_config_reg* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %74, %77
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  %84 = load %struct.ci_pt_config_reg*, %struct.ci_pt_config_reg** %6, align 8
  %85 = getelementptr inbounds %struct.ci_pt_config_reg, %struct.ci_pt_config_reg* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  switch i32 %86, label %99 [
    i32 128, label %87
    i32 129, label %93
  ]

87:                                               ; preds = %61
  %88 = load %struct.ci_pt_config_reg*, %struct.ci_pt_config_reg** %6, align 8
  %89 = getelementptr inbounds %struct.ci_pt_config_reg, %struct.ci_pt_config_reg* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @WREG32_SMC(i32 %90, i32 %91)
  br label %106

93:                                               ; preds = %61
  %94 = load %struct.ci_pt_config_reg*, %struct.ci_pt_config_reg** %6, align 8
  %95 = getelementptr inbounds %struct.ci_pt_config_reg, %struct.ci_pt_config_reg* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @WREG32_DIDT(i32 %96, i32 %97)
  br label %106

99:                                               ; preds = %61
  %100 = load %struct.ci_pt_config_reg*, %struct.ci_pt_config_reg** %6, align 8
  %101 = getelementptr inbounds %struct.ci_pt_config_reg, %struct.ci_pt_config_reg* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 2
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @WREG32(i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %99, %93, %87
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %106, %27
  %108 = load %struct.ci_pt_config_reg*, %struct.ci_pt_config_reg** %6, align 8
  %109 = getelementptr inbounds %struct.ci_pt_config_reg, %struct.ci_pt_config_reg* %108, i32 1
  store %struct.ci_pt_config_reg* %109, %struct.ci_pt_config_reg** %6, align 8
  br label %16

110:                                              ; preds = %16
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %12
  %112 = load i32, i32* %3, align 4
  ret i32 %112
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
