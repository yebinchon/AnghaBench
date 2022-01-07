; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_gpu_pci_config_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_gpu_pci_config_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64, i32, i32 }
%struct.evergreen_mc_save = type { i32 }
%struct.kv_reset_save_regs = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"GPU pci config reset\0A\00", align 1
@CP_ME_CNTL = common dso_local global i64 0, align 8
@CP_ME_HALT = common dso_local global i64 0, align 8
@CP_PFP_HALT = common dso_local global i64 0, align 8
@CP_CE_HALT = common dso_local global i64 0, align 8
@CP_MEC_CNTL = common dso_local global i64 0, align 8
@MEC_ME1_HALT = common dso_local global i64 0, align 8
@MEC_ME2_HALT = common dso_local global i64 0, align 8
@SDMA0_ME_CNTL = common dso_local global i64 0, align 8
@SDMA0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@SDMA_HALT = common dso_local global i64 0, align 8
@SDMA1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Wait for MC idle timed out !\0A\00", align 1
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@CONFIG_MEMSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @cik_gpu_pci_config_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cik_gpu_pci_config_reset(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.evergreen_mc_save, align 4
  %4 = alloca %struct.kv_reset_save_regs, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %7 = bitcast %struct.kv_reset_save_regs* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 4, i1 false)
  %8 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @dev_info(i32 %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = call i32 @cik_fini_pg(%struct.radeon_device* %12)
  %14 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %15 = call i32 @cik_fini_cg(%struct.radeon_device* %14)
  %16 = load i64, i64* @CP_ME_CNTL, align 8
  %17 = load i64, i64* @CP_ME_HALT, align 8
  %18 = load i64, i64* @CP_PFP_HALT, align 8
  %19 = or i64 %17, %18
  %20 = load i64, i64* @CP_CE_HALT, align 8
  %21 = or i64 %19, %20
  %22 = call i32 @WREG32(i64 %16, i64 %21)
  %23 = load i64, i64* @CP_MEC_CNTL, align 8
  %24 = load i64, i64* @MEC_ME1_HALT, align 8
  %25 = load i64, i64* @MEC_ME2_HALT, align 8
  %26 = or i64 %24, %25
  %27 = call i32 @WREG32(i64 %23, i64 %26)
  %28 = load i64, i64* @SDMA0_ME_CNTL, align 8
  %29 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @RREG32(i64 %30)
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* @SDMA_HALT, align 8
  %34 = load i64, i64* %5, align 8
  %35 = or i64 %34, %33
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* @SDMA0_ME_CNTL, align 8
  %37 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @WREG32(i64 %38, i64 %39)
  %41 = load i64, i64* @SDMA0_ME_CNTL, align 8
  %42 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @RREG32(i64 %43)
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* @SDMA_HALT, align 8
  %47 = load i64, i64* %5, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* @SDMA0_ME_CNTL, align 8
  %50 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @WREG32(i64 %51, i64 %52)
  %54 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %55 = call i32 @cik_rlc_stop(%struct.radeon_device* %54)
  %56 = call i32 @udelay(i32 50)
  %57 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %58 = call i32 @evergreen_mc_stop(%struct.radeon_device* %57, %struct.evergreen_mc_save* %3)
  %59 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %60 = call i64 @evergreen_mc_wait_for_idle(%struct.radeon_device* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %1
  %63 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_warn(i32 %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %62, %1
  %68 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %69 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @RADEON_IS_IGP, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %76 = call i32 @kv_save_regs_for_reset(%struct.radeon_device* %75, %struct.kv_reset_save_regs* %4)
  br label %77

77:                                               ; preds = %74, %67
  %78 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %79 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @pci_clear_master(i32 %80)
  %82 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %83 = call i32 @radeon_pci_config_reset(%struct.radeon_device* %82)
  %84 = call i32 @udelay(i32 100)
  store i64 0, i64* %6, align 8
  br label %85

85:                                               ; preds = %98, %77
  %86 = load i64, i64* %6, align 8
  %87 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %88 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %86, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %85
  %92 = load i64, i64* @CONFIG_MEMSIZE, align 8
  %93 = call i32 @RREG32(i64 %92)
  %94 = icmp ne i32 %93, -1
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %101

96:                                               ; preds = %91
  %97 = call i32 @udelay(i32 1)
  br label %98

98:                                               ; preds = %96
  %99 = load i64, i64* %6, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %6, align 8
  br label %85

101:                                              ; preds = %95, %85
  %102 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %103 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @RADEON_IS_IGP, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %110 = call i32 @kv_restore_regs_for_reset(%struct.radeon_device* %109, %struct.kv_reset_save_regs* %4)
  br label %111

111:                                              ; preds = %108, %101
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_info(i32, i8*) #2

declare dso_local i32 @cik_fini_pg(%struct.radeon_device*) #2

declare dso_local i32 @cik_fini_cg(%struct.radeon_device*) #2

declare dso_local i32 @WREG32(i64, i64) #2

declare dso_local i32 @RREG32(i64) #2

declare dso_local i32 @cik_rlc_stop(%struct.radeon_device*) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @evergreen_mc_stop(%struct.radeon_device*, %struct.evergreen_mc_save*) #2

declare dso_local i64 @evergreen_mc_wait_for_idle(%struct.radeon_device*) #2

declare dso_local i32 @dev_warn(i32, i8*) #2

declare dso_local i32 @kv_save_regs_for_reset(%struct.radeon_device*, %struct.kv_reset_save_regs*) #2

declare dso_local i32 @pci_clear_master(i32) #2

declare dso_local i32 @radeon_pci_config_reset(%struct.radeon_device*) #2

declare dso_local i32 @kv_restore_regs_for_reset(%struct.radeon_device*, %struct.kv_reset_save_regs*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
