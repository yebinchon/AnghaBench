; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_hal.c_nitrox_config_nps_core_unit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_hal.c_nitrox_config_nps_core_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { i32 }
%union.nps_core_gbl_vfcfg = type { i64 }
%struct.TYPE_2__ = type { i32, i32 }

@NPS_CORE_CONTROL = common dso_local global i32 0, align 4
@__NDEV_MODE_PF = common dso_local global i32 0, align 4
@NPS_CORE_GBL_VFCFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nitrox_config_nps_core_unit(%struct.nitrox_device* %0) #0 {
  %2 = alloca %struct.nitrox_device*, align 8
  %3 = alloca %union.nps_core_gbl_vfcfg, align 8
  store %struct.nitrox_device* %0, %struct.nitrox_device** %2, align 8
  %4 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %5 = load i32, i32* @NPS_CORE_CONTROL, align 4
  %6 = call i32 @nitrox_write_csr(%struct.nitrox_device* %4, i32 %5, i64 1)
  %7 = bitcast %union.nps_core_gbl_vfcfg* %3 to i64*
  store i64 0, i64* %7, align 8
  %8 = bitcast %union.nps_core_gbl_vfcfg* %3 to %struct.TYPE_2__*
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load i32, i32* @__NDEV_MODE_PF, align 4
  %11 = bitcast %union.nps_core_gbl_vfcfg* %3 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %14 = load i32, i32* @NPS_CORE_GBL_VFCFG, align 4
  %15 = bitcast %union.nps_core_gbl_vfcfg* %3 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @nitrox_write_csr(%struct.nitrox_device* %13, i32 %14, i64 %16)
  %18 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %19 = call i32 @enable_nps_core_interrupts(%struct.nitrox_device* %18)
  ret void
}

declare dso_local i32 @nitrox_write_csr(%struct.nitrox_device*, i32, i64) #1

declare dso_local i32 @enable_nps_core_interrupts(%struct.nitrox_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
