; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r520.c_r520_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r520.c_r520_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, i32, i32, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Expecting atombios for RV515 GPU\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"GPU reset failed ! (0xE40=0x%08X, 0x7C0=0x%08X)\0A\00", align 1
@R_000E40_RBBM_STATUS = common dso_local global i32 0, align 4
@R_0007C0_CP_STAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"GPU not posted. posting now...\0A\00", align 1
@RADEON_IS_AGP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Disabling GPU acceleration\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r520_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %6 = call i32 @radeon_scratch_init(%struct.radeon_device* %5)
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = call i32 @radeon_surface_init(%struct.radeon_device* %7)
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = call i32 @r100_restore_sanity(%struct.radeon_device* %9)
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = call i32 @radeon_get_bios(%struct.radeon_device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %154

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = call i32 @radeon_atombios_init(%struct.radeon_device* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %154

34:                                               ; preds = %27
  br label %42

35:                                               ; preds = %22
  %36 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %37 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %154

42:                                               ; preds = %34
  %43 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %44 = call i64 @radeon_asic_reset(%struct.radeon_device* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %48 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @R_000E40_RBBM_STATUS, align 4
  %51 = call i32 @RREG32(i32 %50)
  %52 = load i32, i32* @R_0007C0_CP_STAT, align 4
  %53 = call i32 @RREG32(i32 %52)
  %54 = call i32 @dev_warn(i32 %49, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %53)
  br label %55

55:                                               ; preds = %46, %42
  %56 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %57 = call i32 @radeon_boot_test_post_card(%struct.radeon_device* %56)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %154

62:                                               ; preds = %55
  %63 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %64 = call i32 @radeon_card_posted(%struct.radeon_device* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %62
  %67 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %68 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = call i32 @DRM_INFO(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %73 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @atom_asic_init(i32 %76)
  br label %78

78:                                               ; preds = %71, %66, %62
  %79 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %80 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @radeon_get_clock_info(i32 %81)
  %83 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %84 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @RADEON_IS_AGP, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %78
  %90 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %91 = call i32 @radeon_agp_init(%struct.radeon_device* %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %96 = call i32 @radeon_agp_disable(%struct.radeon_device* %95)
  br label %97

97:                                               ; preds = %94, %89
  br label %98

98:                                               ; preds = %97, %78
  %99 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %100 = call i32 @r520_mc_init(%struct.radeon_device* %99)
  %101 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %102 = call i32 @rv515_debugfs(%struct.radeon_device* %101)
  %103 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %104 = call i32 @radeon_fence_driver_init(%struct.radeon_device* %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %2, align 4
  br label %154

109:                                              ; preds = %98
  %110 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %111 = call i32 @radeon_bo_init(%struct.radeon_device* %110)
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i32, i32* %4, align 4
  store i32 %115, i32* %2, align 4
  br label %154

116:                                              ; preds = %109
  %117 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %118 = call i32 @rv370_pcie_gart_init(%struct.radeon_device* %117)
  store i32 %118, i32* %4, align 4
  %119 = load i32, i32* %4, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i32, i32* %4, align 4
  store i32 %122, i32* %2, align 4
  br label %154

123:                                              ; preds = %116
  %124 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %125 = call i32 @rv515_set_safe_registers(%struct.radeon_device* %124)
  %126 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %127 = call i32 @radeon_pm_init(%struct.radeon_device* %126)
  %128 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %129 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %128, i32 0, i32 1
  store i32 1, i32* %129, align 4
  %130 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %131 = call i32 @r520_startup(%struct.radeon_device* %130)
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %4, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %153

134:                                              ; preds = %123
  %135 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %136 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @dev_err(i32 %137, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %139 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %140 = call i32 @r100_cp_fini(%struct.radeon_device* %139)
  %141 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %142 = call i32 @radeon_wb_fini(%struct.radeon_device* %141)
  %143 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %144 = call i32 @radeon_ib_pool_fini(%struct.radeon_device* %143)
  %145 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %146 = call i32 @radeon_irq_kms_fini(%struct.radeon_device* %145)
  %147 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %148 = call i32 @rv370_pcie_gart_fini(%struct.radeon_device* %147)
  %149 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %150 = call i32 @radeon_agp_fini(%struct.radeon_device* %149)
  %151 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %152 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %151, i32 0, i32 1
  store i32 0, i32* %152, align 4
  br label %153

153:                                              ; preds = %134, %123
  store i32 0, i32* %2, align 4
  br label %154

154:                                              ; preds = %153, %121, %114, %107, %59, %35, %32, %18
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @radeon_scratch_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_surface_init(%struct.radeon_device*) #1

declare dso_local i32 @r100_restore_sanity(%struct.radeon_device*) #1

declare dso_local i32 @radeon_get_bios(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atombios_init(%struct.radeon_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @radeon_asic_reset(%struct.radeon_device*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @radeon_boot_test_post_card(%struct.radeon_device*) #1

declare dso_local i32 @radeon_card_posted(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @atom_asic_init(i32) #1

declare dso_local i32 @radeon_get_clock_info(i32) #1

declare dso_local i32 @radeon_agp_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_agp_disable(%struct.radeon_device*) #1

declare dso_local i32 @r520_mc_init(%struct.radeon_device*) #1

declare dso_local i32 @rv515_debugfs(%struct.radeon_device*) #1

declare dso_local i32 @radeon_fence_driver_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_bo_init(%struct.radeon_device*) #1

declare dso_local i32 @rv370_pcie_gart_init(%struct.radeon_device*) #1

declare dso_local i32 @rv515_set_safe_registers(%struct.radeon_device*) #1

declare dso_local i32 @radeon_pm_init(%struct.radeon_device*) #1

declare dso_local i32 @r520_startup(%struct.radeon_device*) #1

declare dso_local i32 @r100_cp_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_wb_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ib_pool_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_kms_fini(%struct.radeon_device*) #1

declare dso_local i32 @rv370_pcie_gart_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_agp_fini(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
