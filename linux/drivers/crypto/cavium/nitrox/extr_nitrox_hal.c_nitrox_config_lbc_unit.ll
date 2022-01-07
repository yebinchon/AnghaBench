; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_hal.c_nitrox_config_lbc_unit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_hal.c_nitrox_config_lbc_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { i32 }
%union.lbc_int_ena_w1s = type { i64, [8 x i8] }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@LBC_INT_ENA_W1S = common dso_local global i32 0, align 4
@LBC_PLM_VF1_64_INT_ENA_W1S = common dso_local global i32 0, align 4
@LBC_PLM_VF65_128_INT_ENA_W1S = common dso_local global i32 0, align 4
@LBC_ELM_VF1_64_INT_ENA_W1S = common dso_local global i32 0, align 4
@LBC_ELM_VF65_128_INT_ENA_W1S = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nitrox_config_lbc_unit(%struct.nitrox_device* %0) #0 {
  %2 = alloca %struct.nitrox_device*, align 8
  %3 = alloca %union.lbc_int_ena_w1s, align 8
  %4 = alloca i32, align 4
  store %struct.nitrox_device* %0, %struct.nitrox_device** %2, align 8
  %5 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %6 = call i32 @invalidate_lbc(%struct.nitrox_device* %5)
  %7 = load i32, i32* @LBC_INT_ENA_W1S, align 4
  store i32 %7, i32* %4, align 4
  %8 = bitcast %union.lbc_int_ena_w1s* %3 to i64*
  store i64 0, i64* %8, align 8
  %9 = bitcast %union.lbc_int_ena_w1s* %3 to %struct.TYPE_2__*
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = bitcast %union.lbc_int_ena_w1s* %3 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i32 1, i32* %12, align 4
  %13 = bitcast %union.lbc_int_ena_w1s* %3 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  store i32 1, i32* %14, align 8
  %15 = bitcast %union.lbc_int_ena_w1s* %3 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  store i32 1, i32* %16, align 4
  %17 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %18 = load i32, i32* %4, align 4
  %19 = bitcast %union.lbc_int_ena_w1s* %3 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @nitrox_write_csr(%struct.nitrox_device* %17, i32 %18, i64 %20)
  %22 = load i32, i32* @LBC_PLM_VF1_64_INT_ENA_W1S, align 4
  store i32 %22, i32* %4, align 4
  %23 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @nitrox_write_csr(%struct.nitrox_device* %23, i32 %24, i64 -1)
  %26 = load i32, i32* @LBC_PLM_VF65_128_INT_ENA_W1S, align 4
  store i32 %26, i32* %4, align 4
  %27 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @nitrox_write_csr(%struct.nitrox_device* %27, i32 %28, i64 -1)
  %30 = load i32, i32* @LBC_ELM_VF1_64_INT_ENA_W1S, align 4
  store i32 %30, i32* %4, align 4
  %31 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @nitrox_write_csr(%struct.nitrox_device* %31, i32 %32, i64 -1)
  %34 = load i32, i32* @LBC_ELM_VF65_128_INT_ENA_W1S, align 4
  store i32 %34, i32* %4, align 4
  %35 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @nitrox_write_csr(%struct.nitrox_device* %35, i32 %36, i64 -1)
  ret void
}

declare dso_local i32 @invalidate_lbc(%struct.nitrox_device*) #1

declare dso_local i32 @nitrox_write_csr(%struct.nitrox_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
