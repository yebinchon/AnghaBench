; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770.c_rv770_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770.c_rv770_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_6__*, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Expecting atombios for R600 GPU\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Card not posted and no BIOS - ignoring\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"GPU not posted. posting now...\0A\00", align 1
@RADEON_IS_AGP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to load firmware!\0A\00", align 1
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"disabling GPU acceleration\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rv770_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %6 = call i32 @radeon_get_bios(%struct.radeon_device* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %200

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15, %1
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 11
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %200

28:                                               ; preds = %16
  %29 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %30 = call i32 @radeon_atombios_init(%struct.radeon_device* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %200

35:                                               ; preds = %28
  %36 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %37 = call i32 @radeon_card_posted(%struct.radeon_device* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %35
  %40 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 10
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %39
  %45 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %200

51:                                               ; preds = %39
  %52 = call i32 @DRM_INFO(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %54 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %53, i32 0, i32 9
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @atom_asic_init(i32 %56)
  br label %58

58:                                               ; preds = %51, %35
  %59 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %60 = call i32 @rv770_init_golden_registers(%struct.radeon_device* %59)
  %61 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %62 = call i32 @r600_scratch_init(%struct.radeon_device* %61)
  %63 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %64 = call i32 @radeon_surface_init(%struct.radeon_device* %63)
  %65 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @radeon_get_clock_info(i32 %67)
  %69 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %70 = call i32 @radeon_fence_driver_init(%struct.radeon_device* %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %58
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %200

75:                                               ; preds = %58
  %76 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @RADEON_IS_AGP, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %84 = call i32 @radeon_agp_init(%struct.radeon_device* %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %89 = call i32 @radeon_agp_disable(%struct.radeon_device* %88)
  br label %90

90:                                               ; preds = %87, %82
  br label %91

91:                                               ; preds = %90, %75
  %92 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %93 = call i32 @rv770_mc_init(%struct.radeon_device* %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %4, align 4
  store i32 %97, i32* %2, align 4
  br label %200

98:                                               ; preds = %91
  %99 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %100 = call i32 @radeon_bo_init(%struct.radeon_device* %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* %4, align 4
  store i32 %104, i32* %2, align 4
  br label %200

105:                                              ; preds = %98
  %106 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %107 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %105
  %111 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %112 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %117 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %115, %110, %105
  %121 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %122 = call i32 @r600_init_microcode(%struct.radeon_device* %121)
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %127 = load i32, i32* %4, align 4
  store i32 %127, i32* %2, align 4
  br label %200

128:                                              ; preds = %120
  br label %129

129:                                              ; preds = %128, %115
  %130 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %131 = call i32 @radeon_pm_init(%struct.radeon_device* %130)
  %132 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %133 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %132, i32 0, i32 4
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  store i32* null, i32** %137, align 8
  %138 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %139 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %140 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %139, i32 0, i32 4
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i64 %142
  %144 = call i32 @r600_ring_init(%struct.radeon_device* %138, %struct.TYPE_6__* %143, i32 1048576)
  %145 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %146 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %145, i32 0, i32 4
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  store i32* null, i32** %150, align 8
  %151 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %152 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %153 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %152, i32 0, i32 4
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i64 %155
  %157 = call i32 @r600_ring_init(%struct.radeon_device* %151, %struct.TYPE_6__* %156, i32 65536)
  %158 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %159 = call i32 @rv770_uvd_init(%struct.radeon_device* %158)
  %160 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %161 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  store i32* null, i32** %162, align 8
  %163 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %164 = call i32 @r600_ih_ring_init(%struct.radeon_device* %163, i32 65536)
  %165 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %166 = call i32 @r600_pcie_gart_init(%struct.radeon_device* %165)
  store i32 %166, i32* %4, align 4
  %167 = load i32, i32* %4, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %129
  %170 = load i32, i32* %4, align 4
  store i32 %170, i32* %2, align 4
  br label %200

171:                                              ; preds = %129
  %172 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %173 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %172, i32 0, i32 1
  store i32 1, i32* %173, align 4
  %174 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %175 = call i32 @rv770_startup(%struct.radeon_device* %174)
  store i32 %175, i32* %4, align 4
  %176 = load i32, i32* %4, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %199

178:                                              ; preds = %171
  %179 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %180 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @dev_err(i32 %181, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %183 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %184 = call i32 @r700_cp_fini(%struct.radeon_device* %183)
  %185 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %186 = call i32 @r600_dma_fini(%struct.radeon_device* %185)
  %187 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %188 = call i32 @r600_irq_fini(%struct.radeon_device* %187)
  %189 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %190 = call i32 @radeon_wb_fini(%struct.radeon_device* %189)
  %191 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %192 = call i32 @radeon_ib_pool_fini(%struct.radeon_device* %191)
  %193 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %194 = call i32 @radeon_irq_kms_fini(%struct.radeon_device* %193)
  %195 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %196 = call i32 @rv770_pcie_gart_fini(%struct.radeon_device* %195)
  %197 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %198 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %197, i32 0, i32 1
  store i32 0, i32* %198, align 4
  br label %199

199:                                              ; preds = %178, %171
  store i32 0, i32* %2, align 4
  br label %200

200:                                              ; preds = %199, %169, %125, %103, %96, %73, %44, %33, %21, %12
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

declare dso_local i32 @radeon_get_bios(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @radeon_atombios_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_card_posted(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @atom_asic_init(i32) #1

declare dso_local i32 @rv770_init_golden_registers(%struct.radeon_device*) #1

declare dso_local i32 @r600_scratch_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_surface_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_get_clock_info(i32) #1

declare dso_local i32 @radeon_fence_driver_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_agp_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_agp_disable(%struct.radeon_device*) #1

declare dso_local i32 @rv770_mc_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_bo_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_init_microcode(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @radeon_pm_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_ring_init(%struct.radeon_device*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @rv770_uvd_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_ih_ring_init(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_pcie_gart_init(%struct.radeon_device*) #1

declare dso_local i32 @rv770_startup(%struct.radeon_device*) #1

declare dso_local i32 @r700_cp_fini(%struct.radeon_device*) #1

declare dso_local i32 @r600_dma_fini(%struct.radeon_device*) #1

declare dso_local i32 @r600_irq_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_wb_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ib_pool_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_kms_fini(%struct.radeon_device*) #1

declare dso_local i32 @rv770_pcie_gart_fini(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
