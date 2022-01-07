; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v9_0.c_gmc_v9_0_ecc_interrupt_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v9_0.c_gmc_v9_0_ecc_interrupt_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_irq_src = type { i32 }

@ecc_umc_mcumc_ctrl_addrs = common dso_local global i64* null, align 8
@ecc_umc_mcumc_ctrl_mask_addrs = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, i32, i32)* @gmc_v9_0_ecc_interrupt_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v9_0_ecc_interrupt_state(%struct.amdgpu_device* %0, %struct.amdgpu_irq_src* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_irq_src*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_irq_src* %1, %struct.amdgpu_irq_src** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i64 127, i64* %9, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %106 [
    i32 129, label %14
    i32 128, label %61
  ]

14:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  br label %15

15:                                               ; preds = %34, %14
  %16 = load i64, i64* %10, align 8
  %17 = load i64*, i64** @ecc_umc_mcumc_ctrl_addrs, align 8
  %18 = call i64 @ARRAY_SIZE(i64* %17)
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = load i64*, i64** @ecc_umc_mcumc_ctrl_addrs, align 8
  %22 = load i64, i64* %10, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %12, align 8
  %26 = call i64 @RREG32(i64 %25)
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %9, align 8
  %28 = xor i64 %27, -1
  %29 = load i64, i64* %11, align 8
  %30 = and i64 %29, %28
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @WREG32(i64 %31, i64 %32)
  br label %34

34:                                               ; preds = %20
  %35 = load i64, i64* %10, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %10, align 8
  br label %15

37:                                               ; preds = %15
  store i64 0, i64* %10, align 8
  br label %38

38:                                               ; preds = %57, %37
  %39 = load i64, i64* %10, align 8
  %40 = load i64*, i64** @ecc_umc_mcumc_ctrl_mask_addrs, align 8
  %41 = call i64 @ARRAY_SIZE(i64* %40)
  %42 = icmp ult i64 %39, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %38
  %44 = load i64*, i64** @ecc_umc_mcumc_ctrl_mask_addrs, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = call i64 @RREG32(i64 %48)
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %9, align 8
  %51 = xor i64 %50, -1
  %52 = load i64, i64* %11, align 8
  %53 = and i64 %52, %51
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @WREG32(i64 %54, i64 %55)
  br label %57

57:                                               ; preds = %43
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %10, align 8
  br label %38

60:                                               ; preds = %38
  br label %107

61:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  br label %62

62:                                               ; preds = %80, %61
  %63 = load i64, i64* %10, align 8
  %64 = load i64*, i64** @ecc_umc_mcumc_ctrl_addrs, align 8
  %65 = call i64 @ARRAY_SIZE(i64* %64)
  %66 = icmp ult i64 %63, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %62
  %68 = load i64*, i64** @ecc_umc_mcumc_ctrl_addrs, align 8
  %69 = load i64, i64* %10, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %12, align 8
  %72 = load i64, i64* %12, align 8
  %73 = call i64 @RREG32(i64 %72)
  store i64 %73, i64* %11, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %11, align 8
  %76 = or i64 %75, %74
  store i64 %76, i64* %11, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* %11, align 8
  %79 = call i32 @WREG32(i64 %77, i64 %78)
  br label %80

80:                                               ; preds = %67
  %81 = load i64, i64* %10, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %10, align 8
  br label %62

83:                                               ; preds = %62
  store i64 0, i64* %10, align 8
  br label %84

84:                                               ; preds = %102, %83
  %85 = load i64, i64* %10, align 8
  %86 = load i64*, i64** @ecc_umc_mcumc_ctrl_mask_addrs, align 8
  %87 = call i64 @ARRAY_SIZE(i64* %86)
  %88 = icmp ult i64 %85, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %84
  %90 = load i64*, i64** @ecc_umc_mcumc_ctrl_mask_addrs, align 8
  %91 = load i64, i64* %10, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %12, align 8
  %94 = load i64, i64* %12, align 8
  %95 = call i64 @RREG32(i64 %94)
  store i64 %95, i64* %11, align 8
  %96 = load i64, i64* %9, align 8
  %97 = load i64, i64* %11, align 8
  %98 = or i64 %97, %96
  store i64 %98, i64* %11, align 8
  %99 = load i64, i64* %12, align 8
  %100 = load i64, i64* %11, align 8
  %101 = call i32 @WREG32(i64 %99, i64 %100)
  br label %102

102:                                              ; preds = %89
  %103 = load i64, i64* %10, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %10, align 8
  br label %84

105:                                              ; preds = %84
  br label %107

106:                                              ; preds = %4
  br label %107

107:                                              ; preds = %106, %105, %60
  ret i32 0
}

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
