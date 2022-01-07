; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_vce_v1_0.c_vce_v1_0_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_vce_v1_0.c_vce_v1_0_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@VCE_CLOCK_GATING_A = common dso_local global i32 0, align 4
@VCE_UENC_CLOCK_GATING = common dso_local global i32 0, align 4
@VCE_UENC_REG_CLOCK_GATING = common dso_local global i32 0, align 4
@VCE_CLOCK_GATING_B = common dso_local global i32 0, align 4
@VCE_LMI_FW_PERIODIC_CTRL = common dso_local global i32 0, align 4
@VCE_LMI_CTRL = common dso_local global i32 0, align 4
@VCE_LMI_CACHE_CTRL = common dso_local global i32 0, align 4
@VCE_LMI_SWAP_CNTL = common dso_local global i32 0, align 4
@VCE_LMI_SWAP_CNTL1 = common dso_local global i32 0, align 4
@VCE_LMI_VM_CTRL = common dso_local global i32 0, align 4
@VCE_VCPU_SCRATCH7 = common dso_local global i32 0, align 4
@RADEON_MAX_VCE_HANDLES = common dso_local global i32 0, align 4
@VCE_V1_0_FW_SIZE = common dso_local global i32 0, align 4
@VCE_VCPU_CACHE_OFFSET0 = common dso_local global i32 0, align 4
@VCE_VCPU_CACHE_SIZE0 = common dso_local global i32 0, align 4
@VCE_V1_0_STACK_SIZE = common dso_local global i32 0, align 4
@VCE_VCPU_CACHE_OFFSET1 = common dso_local global i32 0, align 4
@VCE_VCPU_CACHE_SIZE1 = common dso_local global i32 0, align 4
@VCE_V1_0_DATA_SIZE = common dso_local global i32 0, align 4
@VCE_VCPU_CACHE_OFFSET2 = common dso_local global i32 0, align 4
@VCE_VCPU_CACHE_SIZE2 = common dso_local global i32 0, align 4
@VCE_LMI_CTRL2 = common dso_local global i32 0, align 4
@VCE_LMI_FW_START_KEYSEL = common dso_local global i32 0, align 4
@VCE_FW_REG_STATUS = common dso_local global i32 0, align 4
@VCE_FW_REG_STATUS_DONE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@VCE_FW_REG_STATUS_PASS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VCE_FW_REG_STATUS_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vce_v1_0_resume(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @VCE_CLOCK_GATING_A, align 4
  %12 = call i32 @WREG32_P(i32 %11, i32 0, i32 -65537)
  %13 = load i32, i32* @VCE_UENC_CLOCK_GATING, align 4
  %14 = call i32 @WREG32_P(i32 %13, i32 2093056, i32 6295551)
  %15 = load i32, i32* @VCE_UENC_REG_CLOCK_GATING, align 4
  %16 = call i32 @WREG32_P(i32 %15, i32 63, i32 -64)
  %17 = load i32, i32* @VCE_CLOCK_GATING_B, align 4
  %18 = call i32 @WREG32(i32 %17, i32 0)
  %19 = load i32, i32* @VCE_LMI_FW_PERIODIC_CTRL, align 4
  %20 = call i32 @WREG32_P(i32 %19, i32 4, i32 -5)
  %21 = load i32, i32* @VCE_LMI_CTRL, align 4
  %22 = call i32 @WREG32(i32 %21, i32 3768320)
  %23 = load i32, i32* @VCE_LMI_CACHE_CTRL, align 4
  %24 = call i32 @WREG32_P(i32 %23, i32 0, i32 -2)
  %25 = load i32, i32* @VCE_LMI_SWAP_CNTL, align 4
  %26 = call i32 @WREG32(i32 %25, i32 0)
  %27 = load i32, i32* @VCE_LMI_SWAP_CNTL1, align 4
  %28 = call i32 @WREG32(i32 %27, i32 0)
  %29 = load i32, i32* @VCE_LMI_VM_CTRL, align 4
  %30 = call i32 @WREG32(i32 %29, i32 0)
  %31 = load i32, i32* @VCE_VCPU_SCRATCH7, align 4
  %32 = load i32, i32* @RADEON_MAX_VCE_HANDLES, align 4
  %33 = call i32 @WREG32(i32 %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 256
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @VCE_V1_0_FW_SIZE, align 4
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @VCE_VCPU_CACHE_OFFSET0, align 4
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, 2147483647
  %40 = call i32 @WREG32(i32 %37, i32 %39)
  %41 = load i32, i32* @VCE_VCPU_CACHE_SIZE0, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @WREG32(i32 %41, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @VCE_V1_0_STACK_SIZE, align 4
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* @VCE_VCPU_CACHE_OFFSET1, align 4
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, 2147483647
  %51 = call i32 @WREG32(i32 %48, i32 %50)
  %52 = load i32, i32* @VCE_VCPU_CACHE_SIZE1, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @WREG32(i32 %52, i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* @VCE_V1_0_DATA_SIZE, align 4
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* @VCE_VCPU_CACHE_OFFSET2, align 4
  %60 = load i32, i32* %4, align 4
  %61 = and i32 %60, 2147483647
  %62 = call i32 @WREG32(i32 %59, i32 %61)
  %63 = load i32, i32* @VCE_VCPU_CACHE_SIZE2, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @WREG32(i32 %63, i32 %64)
  %66 = load i32, i32* @VCE_LMI_CTRL2, align 4
  %67 = call i32 @WREG32_P(i32 %66, i32 0, i32 -257)
  %68 = load i32, i32* @VCE_LMI_FW_START_KEYSEL, align 4
  %69 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @WREG32(i32 %68, i32 %72)
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %86, %1
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 10
  br i1 %76, label %77, label %89

77:                                               ; preds = %74
  %78 = call i32 @mdelay(i32 10)
  %79 = load i32, i32* @VCE_FW_REG_STATUS, align 4
  %80 = call i32 @RREG32(i32 %79)
  %81 = load i32, i32* @VCE_FW_REG_STATUS_DONE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %89

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %74

89:                                               ; preds = %84, %74
  %90 = load i32, i32* %6, align 4
  %91 = icmp eq i32 %90, 10
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* @ETIMEDOUT, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %129

95:                                               ; preds = %89
  %96 = load i32, i32* @VCE_FW_REG_STATUS, align 4
  %97 = call i32 @RREG32(i32 %96)
  %98 = load i32, i32* @VCE_FW_REG_STATUS_PASS, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %95
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %2, align 4
  br label %129

104:                                              ; preds = %95
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %117, %104
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %106, 10
  br i1 %107, label %108, label %120

108:                                              ; preds = %105
  %109 = call i32 @mdelay(i32 10)
  %110 = load i32, i32* @VCE_FW_REG_STATUS, align 4
  %111 = call i32 @RREG32(i32 %110)
  %112 = load i32, i32* @VCE_FW_REG_STATUS_BUSY, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %108
  br label %120

116:                                              ; preds = %108
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %105

120:                                              ; preds = %115, %105
  %121 = load i32, i32* %6, align 4
  %122 = icmp eq i32 %121, 10
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* @ETIMEDOUT, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %2, align 4
  br label %129

126:                                              ; preds = %120
  %127 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %128 = call i32 @vce_v1_0_init_cg(%struct.radeon_device* %127)
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %126, %123, %101, %92
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @vce_v1_0_init_cg(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
