; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_hal.c_enable_nps_core_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_hal.c_enable_nps_core_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { i32 }
%union.nps_core_int_ena_w1s = type { i64, [16 x i8] }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@NPS_CORE_INT_ENA_W1S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nitrox_device*)* @enable_nps_core_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_nps_core_interrupts(%struct.nitrox_device* %0) #0 {
  %2 = alloca %struct.nitrox_device*, align 8
  %3 = alloca %union.nps_core_int_ena_w1s, align 8
  store %struct.nitrox_device* %0, %struct.nitrox_device** %2, align 8
  %4 = bitcast %union.nps_core_int_ena_w1s* %3 to i64*
  store i64 0, i64* %4, align 8
  %5 = bitcast %union.nps_core_int_ena_w1s* %3 to %struct.TYPE_2__*
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = bitcast %union.nps_core_int_ena_w1s* %3 to %struct.TYPE_2__*
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store i32 1, i32* %8, align 4
  %9 = bitcast %union.nps_core_int_ena_w1s* %3 to %struct.TYPE_2__*
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  store i32 1, i32* %10, align 8
  %11 = bitcast %union.nps_core_int_ena_w1s* %3 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  store i32 1, i32* %12, align 4
  %13 = bitcast %union.nps_core_int_ena_w1s* %3 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  store i32 1, i32* %14, align 8
  %15 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %16 = load i32, i32* @NPS_CORE_INT_ENA_W1S, align 4
  %17 = bitcast %union.nps_core_int_ena_w1s* %3 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @nitrox_write_csr(%struct.nitrox_device* %15, i32 %16, i64 %18)
  ret void
}

declare dso_local i32 @nitrox_write_csr(%struct.nitrox_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
