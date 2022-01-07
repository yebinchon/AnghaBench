; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_5.c_jpeg_v2_5_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_5.c_jpeg_v2_5_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@UVD = common dso_local global i32 0, align 4
@mmUVD_JMI_CNTL = common dso_local global i32 0, align 4
@UVD_JMI_CNTL__SOFT_RESET_MASK = common dso_local global i32 0, align 4
@VCN = common dso_local global i32 0, align 4
@mmJPEG_CGC_GATE = common dso_local global i32 0, align 4
@JPEG_CGC_GATE__JPEG_DEC_MASK = common dso_local global i32 0, align 4
@JPEG_CGC_GATE__JPEG2_DEC_MASK = common dso_local global i32 0, align 4
@JPEG_CGC_GATE__JMCIF_MASK = common dso_local global i32 0, align 4
@JPEG_CGC_GATE__JRBBM_MASK = common dso_local global i32 0, align 4
@mmUVD_JPEG_POWER_STATUS = common dso_local global i32 0, align 4
@UVD_JPEG_POWER_STATUS__JPEG_POWER_STATUS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @jpeg_v2_5_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jpeg_v2_5_stop(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %57, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %6, %10
  br i1 %11, label %12, label %60

12:                                               ; preds = %5
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = shl i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %57

22:                                               ; preds = %12
  %23 = load i32, i32* @UVD, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @mmUVD_JMI_CNTL, align 4
  %26 = call i32 @SOC15_REG_OFFSET(i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* @UVD_JMI_CNTL__SOFT_RESET_MASK, align 4
  %28 = load i32, i32* @UVD_JMI_CNTL__SOFT_RESET_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = call i32 @WREG32_P(i32 %26, i32 %27, i32 %29)
  %31 = load i32, i32* @VCN, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @mmJPEG_CGC_GATE, align 4
  %34 = call i32 @RREG32_SOC15(i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* @JPEG_CGC_GATE__JPEG_DEC_MASK, align 4
  %36 = load i32, i32* @JPEG_CGC_GATE__JPEG2_DEC_MASK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @JPEG_CGC_GATE__JMCIF_MASK, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @JPEG_CGC_GATE__JRBBM_MASK, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* @VCN, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @mmJPEG_CGC_GATE, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @WREG32_SOC15(i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* @UVD, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @mmUVD_JPEG_POWER_STATUS, align 4
  %52 = call i32 @SOC15_REG_OFFSET(i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* @UVD_JPEG_POWER_STATUS__JPEG_POWER_STATUS_MASK, align 4
  %54 = load i32, i32* @UVD_JPEG_POWER_STATUS__JPEG_POWER_STATUS_MASK, align 4
  %55 = xor i32 %54, -1
  %56 = call i32 @WREG32_P(i32 %52, i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %22, %21
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %5

60:                                               ; preds = %5
  ret i32 0
}

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
