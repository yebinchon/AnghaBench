; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hmc.c_i40iw_set_sd_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hmc.c_i40iw_set_sd_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.update_sd_entry = type { i32, i32 }

@I40IW_HMC_MAX_BP_COUNT = common dso_local global i32 0, align 4
@I40E_PFHMC_SDDATALOW_PMSDBPCOUNT_SHIFT = common dso_local global i32 0, align 4
@I40IW_SD_TYPE_PAGED = common dso_local global i32 0, align 4
@I40E_PFHMC_SDDATALOW_PMSDTYPE_SHIFT = common dso_local global i32 0, align 4
@I40E_PFHMC_SDDATALOW_PMSDVALID_SHIFT = common dso_local global i32 0, align 4
@I40E_PFHMC_SDCMD_PMSDWR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, %struct.update_sd_entry*)* @i40iw_set_sd_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_set_sd_entry(i32 %0, i32 %1, i32 %2, %struct.update_sd_entry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.update_sd_entry*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.update_sd_entry* %3, %struct.update_sd_entry** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @I40IW_HMC_MAX_BP_COUNT, align 4
  %11 = load i32, i32* @I40E_PFHMC_SDDATALOW_PMSDBPCOUNT_SHIFT, align 4
  %12 = shl i32 %10, %11
  %13 = or i32 %9, %12
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @I40IW_SD_TYPE_PAGED, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 0, i32 1
  %19 = load i32, i32* @I40E_PFHMC_SDDATALOW_PMSDTYPE_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = or i32 %13, %20
  %22 = load i32, i32* @I40E_PFHMC_SDDATALOW_PMSDVALID_SHIFT, align 4
  %23 = shl i32 1, %22
  %24 = or i32 %21, %23
  %25 = load %struct.update_sd_entry*, %struct.update_sd_entry** %8, align 8
  %26 = getelementptr inbounds %struct.update_sd_entry, %struct.update_sd_entry* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @I40E_PFHMC_SDCMD_PMSDWR_SHIFT, align 4
  %29 = shl i32 1, %28
  %30 = or i32 %27, %29
  %31 = or i32 %30, 32768
  %32 = load %struct.update_sd_entry*, %struct.update_sd_entry** %8, align 8
  %33 = getelementptr inbounds %struct.update_sd_entry, %struct.update_sd_entry* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
