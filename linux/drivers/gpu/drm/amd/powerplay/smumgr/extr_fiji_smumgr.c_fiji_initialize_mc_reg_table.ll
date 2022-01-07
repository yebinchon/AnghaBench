; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_initialize_mc_reg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_initialize_mc_reg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }

@mmMC_SEQ_RAS_TIMING_LP = common dso_local global i32 0, align 4
@mmMC_SEQ_RAS_TIMING = common dso_local global i32 0, align 4
@mmMC_SEQ_CAS_TIMING_LP = common dso_local global i32 0, align 4
@mmMC_SEQ_CAS_TIMING = common dso_local global i32 0, align 4
@mmMC_SEQ_MISC_TIMING2_LP = common dso_local global i32 0, align 4
@mmMC_SEQ_MISC_TIMING2 = common dso_local global i32 0, align 4
@mmMC_SEQ_WR_CTL_D1_LP = common dso_local global i32 0, align 4
@mmMC_SEQ_WR_CTL_D1 = common dso_local global i32 0, align 4
@mmMC_SEQ_RD_CTL_D0_LP = common dso_local global i32 0, align 4
@mmMC_SEQ_RD_CTL_D0 = common dso_local global i32 0, align 4
@mmMC_SEQ_RD_CTL_D1_LP = common dso_local global i32 0, align 4
@mmMC_SEQ_RD_CTL_D1 = common dso_local global i32 0, align 4
@mmMC_SEQ_PMG_TIMING_LP = common dso_local global i32 0, align 4
@mmMC_SEQ_PMG_TIMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @fiji_initialize_mc_reg_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiji_initialize_mc_reg_table(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %3 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %4 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @mmMC_SEQ_RAS_TIMING_LP, align 4
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %8 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @mmMC_SEQ_RAS_TIMING, align 4
  %11 = call i32 @cgs_read_register(i32 %9, i32 %10)
  %12 = call i32 @cgs_write_register(i32 %5, i32 %6, i32 %11)
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @mmMC_SEQ_CAS_TIMING_LP, align 4
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %18 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @mmMC_SEQ_CAS_TIMING, align 4
  %21 = call i32 @cgs_read_register(i32 %19, i32 %20)
  %22 = call i32 @cgs_write_register(i32 %15, i32 %16, i32 %21)
  %23 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %24 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @mmMC_SEQ_MISC_TIMING2_LP, align 4
  %27 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %28 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @mmMC_SEQ_MISC_TIMING2, align 4
  %31 = call i32 @cgs_read_register(i32 %29, i32 %30)
  %32 = call i32 @cgs_write_register(i32 %25, i32 %26, i32 %31)
  %33 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %34 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @mmMC_SEQ_WR_CTL_D1_LP, align 4
  %37 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %38 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @mmMC_SEQ_WR_CTL_D1, align 4
  %41 = call i32 @cgs_read_register(i32 %39, i32 %40)
  %42 = call i32 @cgs_write_register(i32 %35, i32 %36, i32 %41)
  %43 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %44 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @mmMC_SEQ_RD_CTL_D0_LP, align 4
  %47 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %48 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @mmMC_SEQ_RD_CTL_D0, align 4
  %51 = call i32 @cgs_read_register(i32 %49, i32 %50)
  %52 = call i32 @cgs_write_register(i32 %45, i32 %46, i32 %51)
  %53 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %54 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @mmMC_SEQ_RD_CTL_D1_LP, align 4
  %57 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %58 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @mmMC_SEQ_RD_CTL_D1, align 4
  %61 = call i32 @cgs_read_register(i32 %59, i32 %60)
  %62 = call i32 @cgs_write_register(i32 %55, i32 %56, i32 %61)
  %63 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %64 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @mmMC_SEQ_PMG_TIMING_LP, align 4
  %67 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %68 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @mmMC_SEQ_PMG_TIMING, align 4
  %71 = call i32 @cgs_read_register(i32 %69, i32 %70)
  %72 = call i32 @cgs_write_register(i32 %65, i32 %66, i32 %71)
  ret i32 0
}

declare dso_local i32 @cgs_write_register(i32, i32, i32) #1

declare dso_local i32 @cgs_read_register(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
