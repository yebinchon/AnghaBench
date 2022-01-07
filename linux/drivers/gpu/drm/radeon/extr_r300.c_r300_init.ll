; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r300.c_r300_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r300.c_r300_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Expecting combios for RS400/RS480 GPU\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"GPU reset failed ! (0xE40=0x%08X, 0x7C0=0x%08X)\0A\00", align 1
@R_000E40_RBBM_STATUS = common dso_local global i32 0, align 4
@R_0007C0_CP_STAT = common dso_local global i32 0, align 4
@RADEON_IS_AGP = common dso_local global i32 0, align 4
@RADEON_IS_PCIE = common dso_local global i32 0, align 4
@RADEON_IS_PCI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Disabling GPU acceleration\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r300_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %6 = call i32 @r100_vga_render_disable(%struct.radeon_device* %5)
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = call i32 @radeon_scratch_init(%struct.radeon_device* %7)
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = call i32 @radeon_surface_init(%struct.radeon_device* %9)
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = call i32 @r100_restore_sanity(%struct.radeon_device* %11)
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = call i32 @radeon_get_bios(%struct.radeon_device* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %1
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %181

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %1
  %25 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %181

36:                                               ; preds = %24
  %37 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %38 = call i32 @radeon_combios_init(%struct.radeon_device* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %181

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %46 = call i64 @radeon_asic_reset(%struct.radeon_device* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %50 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @R_000E40_RBBM_STATUS, align 4
  %53 = call i32 @RREG32(i32 %52)
  %54 = load i32, i32* @R_0007C0_CP_STAT, align 4
  %55 = call i32 @RREG32(i32 %54)
  %56 = call i32 @dev_warn(i32 %51, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %48, %44
  %58 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %59 = call i32 @radeon_boot_test_post_card(%struct.radeon_device* %58)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %181

64:                                               ; preds = %57
  %65 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %66 = call i32 @r300_errata(%struct.radeon_device* %65)
  %67 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %68 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @radeon_get_clock_info(i32 %69)
  %71 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %72 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @RADEON_IS_AGP, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %64
  %78 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %79 = call i32 @radeon_agp_init(%struct.radeon_device* %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %84 = call i32 @radeon_agp_disable(%struct.radeon_device* %83)
  br label %85

85:                                               ; preds = %82, %77
  br label %86

86:                                               ; preds = %85, %64
  %87 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %88 = call i32 @r300_mc_init(%struct.radeon_device* %87)
  %89 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %90 = call i32 @radeon_fence_driver_init(%struct.radeon_device* %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i32, i32* %4, align 4
  store i32 %94, i32* %2, align 4
  br label %181

95:                                               ; preds = %86
  %96 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %97 = call i32 @radeon_bo_init(%struct.radeon_device* %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* %4, align 4
  store i32 %101, i32* %2, align 4
  br label %181

102:                                              ; preds = %95
  %103 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %104 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @RADEON_IS_PCIE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %102
  %110 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %111 = call i32 @rv370_pcie_gart_init(%struct.radeon_device* %110)
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i32, i32* %4, align 4
  store i32 %115, i32* %2, align 4
  br label %181

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %116, %102
  %118 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %119 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @RADEON_IS_PCI, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %117
  %125 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %126 = call i32 @r100_pci_gart_init(%struct.radeon_device* %125)
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* %4, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i32, i32* %4, align 4
  store i32 %130, i32* %2, align 4
  br label %181

131:                                              ; preds = %124
  br label %132

132:                                              ; preds = %131, %117
  %133 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %134 = call i32 @r300_set_reg_safe(%struct.radeon_device* %133)
  %135 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %136 = call i32 @radeon_pm_init(%struct.radeon_device* %135)
  %137 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %138 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %137, i32 0, i32 1
  store i32 1, i32* %138, align 4
  %139 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %140 = call i32 @r300_startup(%struct.radeon_device* %139)
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* %4, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %180

143:                                              ; preds = %132
  %144 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %145 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @dev_err(i32 %146, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %148 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %149 = call i32 @r100_cp_fini(%struct.radeon_device* %148)
  %150 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %151 = call i32 @radeon_wb_fini(%struct.radeon_device* %150)
  %152 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %153 = call i32 @radeon_ib_pool_fini(%struct.radeon_device* %152)
  %154 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %155 = call i32 @radeon_irq_kms_fini(%struct.radeon_device* %154)
  %156 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %157 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @RADEON_IS_PCIE, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %143
  %163 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %164 = call i32 @rv370_pcie_gart_fini(%struct.radeon_device* %163)
  br label %165

165:                                              ; preds = %162, %143
  %166 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %167 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @RADEON_IS_PCI, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %165
  %173 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %174 = call i32 @r100_pci_gart_fini(%struct.radeon_device* %173)
  br label %175

175:                                              ; preds = %172, %165
  %176 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %177 = call i32 @radeon_agp_fini(%struct.radeon_device* %176)
  %178 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %179 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %178, i32 0, i32 1
  store i32 0, i32* %179, align 4
  br label %180

180:                                              ; preds = %175, %132
  store i32 0, i32* %2, align 4
  br label %181

181:                                              ; preds = %180, %129, %114, %100, %93, %61, %41, %29, %20
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32 @r100_vga_render_disable(%struct.radeon_device*) #1

declare dso_local i32 @radeon_scratch_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_surface_init(%struct.radeon_device*) #1

declare dso_local i32 @r100_restore_sanity(%struct.radeon_device*) #1

declare dso_local i32 @radeon_get_bios(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @radeon_combios_init(%struct.radeon_device*) #1

declare dso_local i64 @radeon_asic_reset(%struct.radeon_device*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @radeon_boot_test_post_card(%struct.radeon_device*) #1

declare dso_local i32 @r300_errata(%struct.radeon_device*) #1

declare dso_local i32 @radeon_get_clock_info(i32) #1

declare dso_local i32 @radeon_agp_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_agp_disable(%struct.radeon_device*) #1

declare dso_local i32 @r300_mc_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_fence_driver_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_bo_init(%struct.radeon_device*) #1

declare dso_local i32 @rv370_pcie_gart_init(%struct.radeon_device*) #1

declare dso_local i32 @r100_pci_gart_init(%struct.radeon_device*) #1

declare dso_local i32 @r300_set_reg_safe(%struct.radeon_device*) #1

declare dso_local i32 @radeon_pm_init(%struct.radeon_device*) #1

declare dso_local i32 @r300_startup(%struct.radeon_device*) #1

declare dso_local i32 @r100_cp_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_wb_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ib_pool_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_kms_fini(%struct.radeon_device*) #1

declare dso_local i32 @rv370_pcie_gart_fini(%struct.radeon_device*) #1

declare dso_local i32 @r100_pci_gart_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_agp_fini(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
