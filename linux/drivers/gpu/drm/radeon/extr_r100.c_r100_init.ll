; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Expecting combios for RS400/RS480 GPU\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"GPU reset failed ! (0xE40=0x%08X, 0x7C0=0x%08X)\0A\00", align 1
@R_000E40_RBBM_STATUS = common dso_local global i32 0, align 4
@R_0007C0_CP_STAT = common dso_local global i32 0, align 4
@RADEON_IS_AGP = common dso_local global i32 0, align 4
@RADEON_IS_PCI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Disabling GPU acceleration\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r100_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %6 = call i32 @r100_debugfs(%struct.radeon_device* %5)
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = call i32 @r100_vga_render_disable(%struct.radeon_device* %7)
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = call i32 @radeon_scratch_init(%struct.radeon_device* %9)
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = call i32 @radeon_surface_init(%struct.radeon_device* %11)
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = call i32 @r100_restore_sanity(%struct.radeon_device* %13)
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = call i32 @radeon_get_bios(%struct.radeon_device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %1
  %19 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %20 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %156

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %156

38:                                               ; preds = %26
  %39 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %40 = call i32 @radeon_combios_init(%struct.radeon_device* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %156

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %48 = call i64 @radeon_asic_reset(%struct.radeon_device* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @R_000E40_RBBM_STATUS, align 4
  %55 = call i32 @RREG32(i32 %54)
  %56 = load i32, i32* @R_0007C0_CP_STAT, align 4
  %57 = call i32 @RREG32(i32 %56)
  %58 = call i32 @dev_warn(i32 %53, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %57)
  br label %59

59:                                               ; preds = %50, %46
  %60 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %61 = call i32 @radeon_boot_test_post_card(%struct.radeon_device* %60)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %156

66:                                               ; preds = %59
  %67 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %68 = call i32 @r100_errata(%struct.radeon_device* %67)
  %69 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @radeon_get_clock_info(i32 %71)
  %73 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @RADEON_IS_AGP, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %66
  %80 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %81 = call i32 @radeon_agp_init(%struct.radeon_device* %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %86 = call i32 @radeon_agp_disable(%struct.radeon_device* %85)
  br label %87

87:                                               ; preds = %84, %79
  br label %88

88:                                               ; preds = %87, %66
  %89 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %90 = call i32 @r100_mc_init(%struct.radeon_device* %89)
  %91 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %92 = call i32 @radeon_fence_driver_init(%struct.radeon_device* %91)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i32, i32* %4, align 4
  store i32 %96, i32* %2, align 4
  br label %156

97:                                               ; preds = %88
  %98 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %99 = call i32 @radeon_bo_init(%struct.radeon_device* %98)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* %4, align 4
  store i32 %103, i32* %2, align 4
  br label %156

104:                                              ; preds = %97
  %105 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %106 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @RADEON_IS_PCI, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %104
  %112 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %113 = call i32 @r100_pci_gart_init(%struct.radeon_device* %112)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* %4, align 4
  store i32 %117, i32* %2, align 4
  br label %156

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118, %104
  %120 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %121 = call i32 @r100_set_safe_registers(%struct.radeon_device* %120)
  %122 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %123 = call i32 @radeon_pm_init(%struct.radeon_device* %122)
  %124 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %125 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %124, i32 0, i32 1
  store i32 1, i32* %125, align 4
  %126 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %127 = call i32 @r100_startup(%struct.radeon_device* %126)
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %155

130:                                              ; preds = %119
  %131 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %132 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @dev_err(i32 %133, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %135 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %136 = call i32 @r100_cp_fini(%struct.radeon_device* %135)
  %137 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %138 = call i32 @radeon_wb_fini(%struct.radeon_device* %137)
  %139 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %140 = call i32 @radeon_ib_pool_fini(%struct.radeon_device* %139)
  %141 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %142 = call i32 @radeon_irq_kms_fini(%struct.radeon_device* %141)
  %143 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %144 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @RADEON_IS_PCI, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %130
  %150 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %151 = call i32 @r100_pci_gart_fini(%struct.radeon_device* %150)
  br label %152

152:                                              ; preds = %149, %130
  %153 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %154 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %153, i32 0, i32 1
  store i32 0, i32* %154, align 4
  br label %155

155:                                              ; preds = %152, %119
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %155, %116, %102, %95, %63, %43, %31, %22
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @r100_debugfs(%struct.radeon_device*) #1

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

declare dso_local i32 @r100_errata(%struct.radeon_device*) #1

declare dso_local i32 @radeon_get_clock_info(i32) #1

declare dso_local i32 @radeon_agp_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_agp_disable(%struct.radeon_device*) #1

declare dso_local i32 @r100_mc_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_fence_driver_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_bo_init(%struct.radeon_device*) #1

declare dso_local i32 @r100_pci_gart_init(%struct.radeon_device*) #1

declare dso_local i32 @r100_set_safe_registers(%struct.radeon_device*) #1

declare dso_local i32 @radeon_pm_init(%struct.radeon_device*) #1

declare dso_local i32 @r100_startup(%struct.radeon_device*) #1

declare dso_local i32 @r100_cp_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_wb_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ib_pool_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_kms_fini(%struct.radeon_device*) #1

declare dso_local i32 @r100_pci_gart_fini(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
