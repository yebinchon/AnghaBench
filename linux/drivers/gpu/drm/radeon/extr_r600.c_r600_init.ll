; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_6__*, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Failed to register debugfs file for mc !\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Expecting atombios for R600 GPU\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Card not posted and no BIOS - ignoring\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"GPU not posted. posting now...\0A\00", align 1
@RADEON_IS_AGP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Failed to load firmware!\0A\00", align 1
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"disabling GPU acceleration\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %6 = call i64 @r600_debugfs_mc_info_init(%struct.radeon_device* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = call i32 @radeon_get_bios(%struct.radeon_device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %189

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %10
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 11
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %189

34:                                               ; preds = %22
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = call i32 @radeon_atombios_init(%struct.radeon_device* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %189

41:                                               ; preds = %34
  %42 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %43 = call i32 @radeon_card_posted(%struct.radeon_device* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %41
  %46 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 10
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %45
  %51 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %189

57:                                               ; preds = %45
  %58 = call i32 @DRM_INFO(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %59 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 9
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @atom_asic_init(i32 %62)
  br label %64

64:                                               ; preds = %57, %41
  %65 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %66 = call i32 @r600_scratch_init(%struct.radeon_device* %65)
  %67 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %68 = call i32 @radeon_surface_init(%struct.radeon_device* %67)
  %69 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @radeon_get_clock_info(i32 %71)
  %73 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %74 = call i32 @radeon_fence_driver_init(%struct.radeon_device* %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %64
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %189

79:                                               ; preds = %64
  %80 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %81 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @RADEON_IS_AGP, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %79
  %87 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %88 = call i32 @radeon_agp_init(%struct.radeon_device* %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %93 = call i32 @radeon_agp_disable(%struct.radeon_device* %92)
  br label %94

94:                                               ; preds = %91, %86
  br label %95

95:                                               ; preds = %94, %79
  %96 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %97 = call i32 @r600_mc_init(%struct.radeon_device* %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* %4, align 4
  store i32 %101, i32* %2, align 4
  br label %189

102:                                              ; preds = %95
  %103 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %104 = call i32 @radeon_bo_init(%struct.radeon_device* %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %2, align 4
  br label %189

109:                                              ; preds = %102
  %110 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %111 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %109
  %115 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %116 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %121 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %119, %114, %109
  %125 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %126 = call i32 @r600_init_microcode(%struct.radeon_device* %125)
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* %4, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %131 = load i32, i32* %4, align 4
  store i32 %131, i32* %2, align 4
  br label %189

132:                                              ; preds = %124
  br label %133

133:                                              ; preds = %132, %119
  %134 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %135 = call i32 @radeon_pm_init(%struct.radeon_device* %134)
  %136 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %137 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %136, i32 0, i32 4
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  store i32* null, i32** %141, align 8
  %142 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %143 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %144 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %143, i32 0, i32 4
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i64 %146
  %148 = call i32 @r600_ring_init(%struct.radeon_device* %142, %struct.TYPE_6__* %147, i32 1048576)
  %149 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %150 = call i32 @r600_uvd_init(%struct.radeon_device* %149)
  %151 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %152 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  store i32* null, i32** %153, align 8
  %154 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %155 = call i32 @r600_ih_ring_init(%struct.radeon_device* %154, i32 65536)
  %156 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %157 = call i32 @r600_pcie_gart_init(%struct.radeon_device* %156)
  store i32 %157, i32* %4, align 4
  %158 = load i32, i32* %4, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %133
  %161 = load i32, i32* %4, align 4
  store i32 %161, i32* %2, align 4
  br label %189

162:                                              ; preds = %133
  %163 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %164 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %163, i32 0, i32 1
  store i32 1, i32* %164, align 4
  %165 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %166 = call i32 @r600_startup(%struct.radeon_device* %165)
  store i32 %166, i32* %4, align 4
  %167 = load i32, i32* %4, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %188

169:                                              ; preds = %162
  %170 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %171 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @dev_err(i32 %172, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %174 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %175 = call i32 @r600_cp_fini(%struct.radeon_device* %174)
  %176 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %177 = call i32 @r600_irq_fini(%struct.radeon_device* %176)
  %178 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %179 = call i32 @radeon_wb_fini(%struct.radeon_device* %178)
  %180 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %181 = call i32 @radeon_ib_pool_fini(%struct.radeon_device* %180)
  %182 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %183 = call i32 @radeon_irq_kms_fini(%struct.radeon_device* %182)
  %184 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %185 = call i32 @r600_pcie_gart_fini(%struct.radeon_device* %184)
  %186 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %187 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %186, i32 0, i32 1
  store i32 0, i32* %187, align 4
  br label %188

188:                                              ; preds = %169, %162
  store i32 0, i32* %2, align 4
  br label %189

189:                                              ; preds = %188, %160, %129, %107, %100, %77, %50, %39, %27, %18
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i64 @r600_debugfs_mc_info_init(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @radeon_get_bios(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @radeon_atombios_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_card_posted(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @atom_asic_init(i32) #1

declare dso_local i32 @r600_scratch_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_surface_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_get_clock_info(i32) #1

declare dso_local i32 @radeon_fence_driver_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_agp_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_agp_disable(%struct.radeon_device*) #1

declare dso_local i32 @r600_mc_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_bo_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_init_microcode(%struct.radeon_device*) #1

declare dso_local i32 @radeon_pm_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_ring_init(%struct.radeon_device*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @r600_uvd_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_ih_ring_init(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_pcie_gart_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_startup(%struct.radeon_device*) #1

declare dso_local i32 @r600_cp_fini(%struct.radeon_device*) #1

declare dso_local i32 @r600_irq_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_wb_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ib_pool_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_kms_fini(%struct.radeon_device*) #1

declare dso_local i32 @r600_pcie_gart_fini(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
