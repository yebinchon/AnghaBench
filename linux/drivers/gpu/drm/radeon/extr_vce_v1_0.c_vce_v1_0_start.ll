; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_vce_v1_0.c_vce_v1_0_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_vce_v1_0.c_vce_v1_0_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.radeon_ring* }
%struct.radeon_ring = type { i32, i32, i32 }

@VCE_STATUS = common dso_local global i32 0, align 4
@TN_RING_TYPE_VCE1_INDEX = common dso_local global i64 0, align 8
@VCE_RB_RPTR = common dso_local global i32 0, align 4
@VCE_RB_WPTR = common dso_local global i32 0, align 4
@VCE_RB_BASE_LO = common dso_local global i32 0, align 4
@VCE_RB_BASE_HI = common dso_local global i32 0, align 4
@VCE_RB_SIZE = common dso_local global i32 0, align 4
@TN_RING_TYPE_VCE2_INDEX = common dso_local global i64 0, align 8
@VCE_RB_RPTR2 = common dso_local global i32 0, align 4
@VCE_RB_WPTR2 = common dso_local global i32 0, align 4
@VCE_RB_BASE_LO2 = common dso_local global i32 0, align 4
@VCE_RB_BASE_HI2 = common dso_local global i32 0, align 4
@VCE_RB_SIZE2 = common dso_local global i32 0, align 4
@VCE_VCPU_CNTL = common dso_local global i32 0, align 4
@VCE_CLK_EN = common dso_local global i32 0, align 4
@VCE_SOFT_RESET = common dso_local global i32 0, align 4
@VCE_ECPU_SOFT_RESET = common dso_local global i32 0, align 4
@VCE_FME_SOFT_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"VCE not responding, trying to reset the ECPU!!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"VCE not responding, giving up!!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vce_v1_0_start(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %9 = load i32, i32* @VCE_STATUS, align 4
  %10 = call i32 @WREG32_P(i32 %9, i32 1, i32 -2)
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %14 = load i64, i64* @TN_RING_TYPE_VCE1_INDEX, align 8
  %15 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %13, i64 %14
  store %struct.radeon_ring* %15, %struct.radeon_ring** %4, align 8
  %16 = load i32, i32* @VCE_RB_RPTR, align 4
  %17 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %18 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @WREG32(i32 %16, i32 %19)
  %21 = load i32, i32* @VCE_RB_WPTR, align 4
  %22 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %23 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @WREG32(i32 %21, i32 %24)
  %26 = load i32, i32* @VCE_RB_BASE_LO, align 4
  %27 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %28 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @WREG32(i32 %26, i32 %29)
  %31 = load i32, i32* @VCE_RB_BASE_HI, align 4
  %32 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %33 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @upper_32_bits(i32 %34)
  %36 = call i32 @WREG32(i32 %31, i32 %35)
  %37 = load i32, i32* @VCE_RB_SIZE, align 4
  %38 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %39 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 4
  %42 = call i32 @WREG32(i32 %37, i32 %41)
  %43 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %44 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %43, i32 0, i32 0
  %45 = load %struct.radeon_ring*, %struct.radeon_ring** %44, align 8
  %46 = load i64, i64* @TN_RING_TYPE_VCE2_INDEX, align 8
  %47 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %45, i64 %46
  store %struct.radeon_ring* %47, %struct.radeon_ring** %4, align 8
  %48 = load i32, i32* @VCE_RB_RPTR2, align 4
  %49 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %50 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @WREG32(i32 %48, i32 %51)
  %53 = load i32, i32* @VCE_RB_WPTR2, align 4
  %54 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %55 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @WREG32(i32 %53, i32 %56)
  %58 = load i32, i32* @VCE_RB_BASE_LO2, align 4
  %59 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %60 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @WREG32(i32 %58, i32 %61)
  %63 = load i32, i32* @VCE_RB_BASE_HI2, align 4
  %64 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %65 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @upper_32_bits(i32 %66)
  %68 = call i32 @WREG32(i32 %63, i32 %67)
  %69 = load i32, i32* @VCE_RB_SIZE2, align 4
  %70 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %71 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %72, 4
  %74 = call i32 @WREG32(i32 %69, i32 %73)
  %75 = load i32, i32* @VCE_VCPU_CNTL, align 4
  %76 = load i32, i32* @VCE_CLK_EN, align 4
  %77 = load i32, i32* @VCE_CLK_EN, align 4
  %78 = xor i32 %77, -1
  %79 = call i32 @WREG32_P(i32 %75, i32 %76, i32 %78)
  %80 = load i32, i32* @VCE_SOFT_RESET, align 4
  %81 = load i32, i32* @VCE_ECPU_SOFT_RESET, align 4
  %82 = load i32, i32* @VCE_FME_SOFT_RESET, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @VCE_ECPU_SOFT_RESET, align 4
  %85 = load i32, i32* @VCE_FME_SOFT_RESET, align 4
  %86 = or i32 %84, %85
  %87 = xor i32 %86, -1
  %88 = call i32 @WREG32_P(i32 %80, i32 %83, i32 %87)
  %89 = call i32 @mdelay(i32 100)
  %90 = load i32, i32* @VCE_SOFT_RESET, align 4
  %91 = load i32, i32* @VCE_ECPU_SOFT_RESET, align 4
  %92 = load i32, i32* @VCE_FME_SOFT_RESET, align 4
  %93 = or i32 %91, %92
  %94 = xor i32 %93, -1
  %95 = call i32 @WREG32_P(i32 %90, i32 0, i32 %94)
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %133, %1
  %97 = load i32, i32* %5, align 4
  %98 = icmp slt i32 %97, 10
  br i1 %98, label %99, label %136

99:                                               ; preds = %96
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %112, %99
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %101, 100
  br i1 %102, label %103, label %115

103:                                              ; preds = %100
  %104 = load i32, i32* @VCE_STATUS, align 4
  %105 = call i32 @RREG32(i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = and i32 %106, 2
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %115

110:                                              ; preds = %103
  %111 = call i32 @mdelay(i32 10)
  br label %112

112:                                              ; preds = %110
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %6, align 4
  br label %100

115:                                              ; preds = %109, %100
  store i32 0, i32* %7, align 4
  %116 = load i32, i32* %8, align 4
  %117 = and i32 %116, 2
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  br label %136

120:                                              ; preds = %115
  %121 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %122 = load i32, i32* @VCE_SOFT_RESET, align 4
  %123 = load i32, i32* @VCE_ECPU_SOFT_RESET, align 4
  %124 = load i32, i32* @VCE_ECPU_SOFT_RESET, align 4
  %125 = xor i32 %124, -1
  %126 = call i32 @WREG32_P(i32 %122, i32 %123, i32 %125)
  %127 = call i32 @mdelay(i32 10)
  %128 = load i32, i32* @VCE_SOFT_RESET, align 4
  %129 = load i32, i32* @VCE_ECPU_SOFT_RESET, align 4
  %130 = xor i32 %129, -1
  %131 = call i32 @WREG32_P(i32 %128, i32 0, i32 %130)
  %132 = call i32 @mdelay(i32 10)
  store i32 -1, i32* %7, align 4
  br label %133

133:                                              ; preds = %120
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %5, align 4
  br label %96

136:                                              ; preds = %119, %96
  %137 = load i32, i32* @VCE_STATUS, align 4
  %138 = call i32 @WREG32_P(i32 %137, i32 0, i32 -2)
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %2, align 4
  br label %145

144:                                              ; preds = %136
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %144, %141
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
