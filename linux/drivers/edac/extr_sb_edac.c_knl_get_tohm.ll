; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_sb_edac.c_knl_get_tohm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_sb_edac.c_knl_get_tohm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbridge_pvt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@KNL_TOHM_0 = common dso_local global i32 0, align 4
@KNL_TOHM_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbridge_pvt*)* @knl_get_tohm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @knl_get_tohm(%struct.sbridge_pvt* %0) #0 {
  %2 = alloca %struct.sbridge_pvt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sbridge_pvt* %0, %struct.sbridge_pvt** %2, align 8
  %6 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %2, align 8
  %7 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @KNL_TOHM_0, align 4
  %11 = call i32 @pci_read_config_dword(i32 %9, i32 %10, i32* %4)
  %12 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %2, align 8
  %13 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @KNL_TOHM_1, align 4
  %17 = call i32 @pci_read_config_dword(i32 %15, i32 %16, i32* %5)
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 %18, 32
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, 67108863
  ret i32 %23
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
