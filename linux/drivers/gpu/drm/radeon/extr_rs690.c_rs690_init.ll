; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs690.c_rs690_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs690.c_rs690_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Expecting atombios for RV515 GPU\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"GPU reset failed ! (0xE40=0x%08X, 0x7C0=0x%08X)\0A\00", align 1
@R_000E40_RBBM_STATUS = common dso_local global i32 0, align 4
@R_0007C0_CP_STAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Disabling GPU acceleration\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rs690_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %6 = call i32 @rv515_vga_render_disable(%struct.radeon_device* %5)
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
  br label %122

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %1
  %25 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %31 = call i32 @radeon_atombios_init(%struct.radeon_device* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %122

36:                                               ; preds = %29
  br label %44

37:                                               ; preds = %24
  %38 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %122

44:                                               ; preds = %36
  %45 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %46 = call i64 @radeon_asic_reset(%struct.radeon_device* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %50 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
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
  br label %122

64:                                               ; preds = %57
  %65 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @radeon_get_clock_info(i32 %67)
  %69 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %70 = call i32 @rs690_mc_init(%struct.radeon_device* %69)
  %71 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %72 = call i32 @rv515_debugfs(%struct.radeon_device* %71)
  %73 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %74 = call i32 @radeon_fence_driver_init(%struct.radeon_device* %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %64
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %122

79:                                               ; preds = %64
  %80 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %81 = call i32 @radeon_bo_init(%struct.radeon_device* %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %122

86:                                               ; preds = %79
  %87 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %88 = call i32 @rs400_gart_init(%struct.radeon_device* %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* %4, align 4
  store i32 %92, i32* %2, align 4
  br label %122

93:                                               ; preds = %86
  %94 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %95 = call i32 @rs600_set_safe_registers(%struct.radeon_device* %94)
  %96 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %97 = call i32 @radeon_pm_init(%struct.radeon_device* %96)
  %98 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %99 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %101 = call i32 @rs690_startup(%struct.radeon_device* %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %121

104:                                              ; preds = %93
  %105 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %106 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @dev_err(i32 %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %109 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %110 = call i32 @r100_cp_fini(%struct.radeon_device* %109)
  %111 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %112 = call i32 @radeon_wb_fini(%struct.radeon_device* %111)
  %113 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %114 = call i32 @radeon_ib_pool_fini(%struct.radeon_device* %113)
  %115 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %116 = call i32 @rs400_gart_fini(%struct.radeon_device* %115)
  %117 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %118 = call i32 @radeon_irq_kms_fini(%struct.radeon_device* %117)
  %119 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %120 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %119, i32 0, i32 0
  store i32 0, i32* %120, align 8
  br label %121

121:                                              ; preds = %104, %93
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %91, %84, %77, %61, %37, %34, %20
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @rv515_vga_render_disable(%struct.radeon_device*) #1

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

declare dso_local i32 @radeon_get_clock_info(i32) #1

declare dso_local i32 @rs690_mc_init(%struct.radeon_device*) #1

declare dso_local i32 @rv515_debugfs(%struct.radeon_device*) #1

declare dso_local i32 @radeon_fence_driver_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_bo_init(%struct.radeon_device*) #1

declare dso_local i32 @rs400_gart_init(%struct.radeon_device*) #1

declare dso_local i32 @rs600_set_safe_registers(%struct.radeon_device*) #1

declare dso_local i32 @radeon_pm_init(%struct.radeon_device*) #1

declare dso_local i32 @rs690_startup(%struct.radeon_device*) #1

declare dso_local i32 @r100_cp_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_wb_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ib_pool_fini(%struct.radeon_device*) #1

declare dso_local i32 @rs400_gart_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_kms_fini(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
