; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_notify_cac_buffer_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_notify_cac_buffer_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i64 }
%struct.smu7_hwmgr = type { i64 }

@CGS_IND_REG__SMC = common dso_local global i32 0, align 4
@SMU_SoftRegisters = common dso_local global i32 0, align 4
@DRAM_LOG_ADDR_H = common dso_local global i32 0, align 4
@DRAM_LOG_ADDR_L = common dso_local global i32 0, align 4
@DRAM_LOG_PHY_ADDR_H = common dso_local global i32 0, align 4
@DRAM_LOG_PHY_ADDR_L = common dso_local global i32 0, align 4
@DRAM_LOG_BUFF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, i32, i32, i32, i32)* @smu7_notify_cac_buffer_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_notify_cac_buffer_info(%struct.pp_hwmgr* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.pp_hwmgr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.smu7_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %15 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %17, %struct.smu7_hwmgr** %13, align 8
  %18 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %19 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %22 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %13, align 8
  %23 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %26 = load i32, i32* @SMU_SoftRegisters, align 4
  %27 = load i32, i32* @DRAM_LOG_ADDR_H, align 4
  %28 = call i64 @smum_get_offsetof(%struct.pp_hwmgr* %25, i32 %26, i32 %27)
  %29 = add nsw i64 %24, %28
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @cgs_write_ind_register(i32 %20, i32 %21, i64 %29, i32 %30)
  %32 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %33 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %36 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %13, align 8
  %37 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %40 = load i32, i32* @SMU_SoftRegisters, align 4
  %41 = load i32, i32* @DRAM_LOG_ADDR_L, align 4
  %42 = call i64 @smum_get_offsetof(%struct.pp_hwmgr* %39, i32 %40, i32 %41)
  %43 = add nsw i64 %38, %42
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @cgs_write_ind_register(i32 %34, i32 %35, i64 %43, i32 %44)
  %46 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %47 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %50 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %13, align 8
  %51 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %54 = load i32, i32* @SMU_SoftRegisters, align 4
  %55 = load i32, i32* @DRAM_LOG_PHY_ADDR_H, align 4
  %56 = call i64 @smum_get_offsetof(%struct.pp_hwmgr* %53, i32 %54, i32 %55)
  %57 = add nsw i64 %52, %56
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @cgs_write_ind_register(i32 %48, i32 %49, i64 %57, i32 %58)
  %60 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %61 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %64 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %13, align 8
  %65 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %68 = load i32, i32* @SMU_SoftRegisters, align 4
  %69 = load i32, i32* @DRAM_LOG_PHY_ADDR_L, align 4
  %70 = call i64 @smum_get_offsetof(%struct.pp_hwmgr* %67, i32 %68, i32 %69)
  %71 = add nsw i64 %66, %70
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @cgs_write_ind_register(i32 %62, i32 %63, i64 %71, i32 %72)
  %74 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %75 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %78 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %13, align 8
  %79 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %82 = load i32, i32* @SMU_SoftRegisters, align 4
  %83 = load i32, i32* @DRAM_LOG_BUFF_SIZE, align 4
  %84 = call i64 @smum_get_offsetof(%struct.pp_hwmgr* %81, i32 %82, i32 %83)
  %85 = add nsw i64 %80, %84
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @cgs_write_ind_register(i32 %76, i32 %77, i64 %85, i32 %86)
  ret i32 0
}

declare dso_local i32 @cgs_write_ind_register(i32, i32, i64, i32) #1

declare dso_local i64 @smum_get_offsetof(%struct.pp_hwmgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
