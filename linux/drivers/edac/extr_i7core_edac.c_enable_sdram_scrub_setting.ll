; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i7core_edac.c_enable_sdram_scrub_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i7core_edac.c_enable_sdram_scrub_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, i32, %struct.i7core_pvt* }
%struct.i7core_pvt = type { i32 }

@MC_CFG_CONTROL = common dso_local global i32 0, align 4
@MC_CFG_UNLOCK = common dso_local global i32 0, align 4
@set_sdram_scrub_rate = common dso_local global i32 0, align 4
@get_sdram_scrub_rate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @enable_sdram_scrub_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_sdram_scrub_setting(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.i7core_pvt*, align 8
  %4 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %5 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %6 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %5, i32 0, i32 2
  %7 = load %struct.i7core_pvt*, %struct.i7core_pvt** %6, align 8
  store %struct.i7core_pvt* %7, %struct.i7core_pvt** %3, align 8
  %8 = load %struct.i7core_pvt*, %struct.i7core_pvt** %3, align 8
  %9 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MC_CFG_CONTROL, align 4
  %12 = call i32 @pci_read_config_dword(i32 %10, i32 %11, i32* %4)
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, -4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.i7core_pvt*, %struct.i7core_pvt** %3, align 8
  %16 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MC_CFG_CONTROL, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MC_CFG_UNLOCK, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @pci_write_config_dword(i32 %17, i32 %18, i32 %21)
  %23 = load i32, i32* @set_sdram_scrub_rate, align 4
  %24 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %25 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @get_sdram_scrub_rate, align 4
  %27 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %28 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  ret void
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
