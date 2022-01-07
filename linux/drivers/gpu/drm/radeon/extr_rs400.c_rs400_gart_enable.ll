; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs400.c_rs400_gart_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs400.c_rs400_gart_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@RS690_AIC_CTRL_SCRATCH = common dso_local global i32 0, align 4
@RS690_DIS_OUT_OF_PCI_GART_ACCESS = common dso_local global i32 0, align 4
@RS480_VA_SIZE_32MB = common dso_local global i32 0, align 4
@RS480_VA_SIZE_64MB = common dso_local global i32 0, align 4
@RS480_VA_SIZE_128MB = common dso_local global i32 0, align 4
@RS480_VA_SIZE_256MB = common dso_local global i32 0, align 4
@RS480_VA_SIZE_512MB = common dso_local global i32 0, align 4
@RS480_VA_SIZE_1GB = common dso_local global i32 0, align 4
@RS480_VA_SIZE_2GB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CHIP_RS690 = common dso_local global i64 0, align 8
@CHIP_RS740 = common dso_local global i64 0, align 8
@RS690_MCCFG_AGP_BASE = common dso_local global i32 0, align 4
@RS690_MCCFG_AGP_BASE_2 = common dso_local global i32 0, align 4
@RADEON_AGP_BASE = common dso_local global i32 0, align 4
@RS480_AGP_BASE_2 = common dso_local global i32 0, align 4
@RS690_MC_AGP_TOP = common dso_local global i32 0, align 4
@RS690_MC_AGP_START = common dso_local global i32 0, align 4
@RS690_MCCFG_AGP_LOCATION = common dso_local global i32 0, align 4
@RADEON_BUS_CNTL = common dso_local global i32 0, align 4
@RS600_BUS_MASTER_DIS = common dso_local global i32 0, align 4
@RADEON_MC_AGP_LOCATION = common dso_local global i32 0, align 4
@RADEON_BUS_MASTER_DIS = common dso_local global i32 0, align 4
@RS480_GART_BASE = common dso_local global i32 0, align 4
@RS480_GART_FEATURE_ID = common dso_local global i32 0, align 4
@RS480_TLB_ENABLE = common dso_local global i32 0, align 4
@RS480_GTW_LAC_EN = common dso_local global i32 0, align 4
@RS480_1LEVEL_GART = common dso_local global i32 0, align 4
@RS480_AGP_MODE_CNTL = common dso_local global i32 0, align 4
@RS480_REQ_TYPE_SNOOP_SHIFT = common dso_local global i32 0, align 4
@RS480_REQ_TYPE_SNOOP_DIS = common dso_local global i32 0, align 4
@RS480_MC_MISC_CNTL = common dso_local global i32 0, align 4
@RS480_GART_INDEX_REG_EN = common dso_local global i32 0, align 4
@RS690_BLOCK_GFX_D3_EN = common dso_local global i32 0, align 4
@RS480_AGP_ADDRESS_SPACE_SIZE = common dso_local global i32 0, align 4
@RS480_GART_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"PCIE GART of %uM enabled (table at 0x%016llX).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rs400_gart_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load i32, i32* @RS690_AIC_CTRL_SCRATCH, align 4
  %7 = call i32 @RREG32_MC(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @RS690_DIS_OUT_OF_PCI_GART_ACCESS, align 4
  %9 = load i32, i32* %5, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @RS690_AIC_CTRL_SCRATCH, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @WREG32_MC(i32 %11, i32 %12)
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sdiv i32 %17, 1048576
  switch i32 %18, label %33 [
    i32 32, label %19
    i32 64, label %21
    i32 128, label %23
    i32 256, label %25
    i32 512, label %27
    i32 1024, label %29
    i32 2048, label %31
  ]

19:                                               ; preds = %1
  %20 = load i32, i32* @RS480_VA_SIZE_32MB, align 4
  store i32 %20, i32* %4, align 4
  br label %36

21:                                               ; preds = %1
  %22 = load i32, i32* @RS480_VA_SIZE_64MB, align 4
  store i32 %22, i32* %4, align 4
  br label %36

23:                                               ; preds = %1
  %24 = load i32, i32* @RS480_VA_SIZE_128MB, align 4
  store i32 %24, i32* %4, align 4
  br label %36

25:                                               ; preds = %1
  %26 = load i32, i32* @RS480_VA_SIZE_256MB, align 4
  store i32 %26, i32* %4, align 4
  br label %36

27:                                               ; preds = %1
  %28 = load i32, i32* @RS480_VA_SIZE_512MB, align 4
  store i32 %28, i32* %4, align 4
  br label %36

29:                                               ; preds = %1
  %30 = load i32, i32* @RS480_VA_SIZE_1GB, align 4
  store i32 %30, i32* %4, align 4
  br label %36

31:                                               ; preds = %1
  %32 = load i32, i32* @RS480_VA_SIZE_2GB, align 4
  store i32 %32, i32* %4, align 4
  br label %36

33:                                               ; preds = %1
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %194

36:                                               ; preds = %31, %29, %27, %25, %23, %21, %19
  %37 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %38 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CHIP_RS690, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %44 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CHIP_RS740, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42, %36
  %49 = load i32, i32* @RS690_MCCFG_AGP_BASE, align 4
  %50 = call i32 @WREG32_MC(i32 %49, i32 -1)
  %51 = load i32, i32* @RS690_MCCFG_AGP_BASE_2, align 4
  %52 = call i32 @WREG32_MC(i32 %51, i32 0)
  br label %58

53:                                               ; preds = %42
  %54 = load i32, i32* @RADEON_AGP_BASE, align 4
  %55 = call i32 @WREG32(i32 %54, i32 -1)
  %56 = load i32, i32* @RS480_AGP_BASE_2, align 4
  %57 = call i32 @WREG32(i32 %56, i32 0)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i32, i32* @RS690_MC_AGP_TOP, align 4
  %60 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %63, 16
  %65 = call i32 @REG_SET(i32 %59, i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* @RS690_MC_AGP_START, align 4
  %67 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %68 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = ashr i32 %70, 16
  %72 = call i32 @REG_SET(i32 %66, i32 %71)
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %76 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CHIP_RS690, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %58
  %81 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %82 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @CHIP_RS740, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %80, %58
  %87 = load i32, i32* @RS690_MCCFG_AGP_LOCATION, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @WREG32_MC(i32 %87, i32 %88)
  %90 = load i32, i32* @RADEON_BUS_CNTL, align 4
  %91 = call i32 @RREG32(i32 %90)
  %92 = load i32, i32* @RS600_BUS_MASTER_DIS, align 4
  %93 = xor i32 %92, -1
  %94 = and i32 %91, %93
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* @RADEON_BUS_CNTL, align 4
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @WREG32(i32 %95, i32 %96)
  br label %110

98:                                               ; preds = %80
  %99 = load i32, i32* @RADEON_MC_AGP_LOCATION, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @WREG32(i32 %99, i32 %100)
  %102 = load i32, i32* @RADEON_BUS_CNTL, align 4
  %103 = call i32 @RREG32(i32 %102)
  %104 = load i32, i32* @RADEON_BUS_MASTER_DIS, align 4
  %105 = xor i32 %104, -1
  %106 = and i32 %103, %105
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* @RADEON_BUS_CNTL, align 4
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @WREG32(i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %98, %86
  %111 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %112 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = and i32 %115, -4096
  store i32 %116, i32* %5, align 4
  %117 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %118 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @upper_32_bits(i64 %120)
  %122 = and i32 %121, 255
  %123 = shl i32 %122, 4
  %124 = load i32, i32* %5, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* @RS480_GART_BASE, align 4
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @WREG32_MC(i32 %126, i32 %127)
  %129 = load i32, i32* @RS480_GART_FEATURE_ID, align 4
  %130 = load i32, i32* @RS480_TLB_ENABLE, align 4
  %131 = load i32, i32* @RS480_GTW_LAC_EN, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @RS480_1LEVEL_GART, align 4
  %134 = or i32 %132, %133
  %135 = call i32 @WREG32_MC(i32 %129, i32 %134)
  %136 = load i32, i32* @RS480_AGP_MODE_CNTL, align 4
  %137 = load i32, i32* @RS480_REQ_TYPE_SNOOP_SHIFT, align 4
  %138 = shl i32 1, %137
  %139 = load i32, i32* @RS480_REQ_TYPE_SNOOP_DIS, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @WREG32_MC(i32 %136, i32 %140)
  %142 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %143 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @CHIP_RS690, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %153, label %147

147:                                              ; preds = %110
  %148 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %149 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @CHIP_RS740, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %164

153:                                              ; preds = %147, %110
  %154 = load i32, i32* @RS480_MC_MISC_CNTL, align 4
  %155 = call i32 @RREG32_MC(i32 %154)
  store i32 %155, i32* %5, align 4
  %156 = load i32, i32* @RS480_GART_INDEX_REG_EN, align 4
  %157 = load i32, i32* @RS690_BLOCK_GFX_D3_EN, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* %5, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* @RS480_MC_MISC_CNTL, align 4
  %162 = load i32, i32* %5, align 4
  %163 = call i32 @WREG32_MC(i32 %161, i32 %162)
  br label %173

164:                                              ; preds = %147
  %165 = load i32, i32* @RS480_MC_MISC_CNTL, align 4
  %166 = call i32 @RREG32_MC(i32 %165)
  store i32 %166, i32* %5, align 4
  %167 = load i32, i32* @RS480_GART_INDEX_REG_EN, align 4
  %168 = load i32, i32* %5, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %5, align 4
  %170 = load i32, i32* @RS480_MC_MISC_CNTL, align 4
  %171 = load i32, i32* %5, align 4
  %172 = call i32 @WREG32_MC(i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %164, %153
  %174 = load i32, i32* @RS480_AGP_ADDRESS_SPACE_SIZE, align 4
  %175 = load i32, i32* @RS480_GART_EN, align 4
  %176 = load i32, i32* %4, align 4
  %177 = or i32 %175, %176
  %178 = call i32 @WREG32_MC(i32 %174, i32 %177)
  %179 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %180 = call i32 @rs400_gart_tlb_flush(%struct.radeon_device* %179)
  %181 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %182 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = ashr i32 %184, 20
  %186 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %187 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %185, i64 %189)
  %191 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %192 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  store i32 1, i32* %193, align 8
  store i32 0, i32* %2, align 4
  br label %194

194:                                              ; preds = %173, %33
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local i32 @RREG32_MC(i32) #1

declare dso_local i32 @WREG32_MC(i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @REG_SET(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @rs400_gart_tlb_flush(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
