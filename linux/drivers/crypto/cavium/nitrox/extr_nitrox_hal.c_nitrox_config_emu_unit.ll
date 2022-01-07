; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_hal.c_nitrox_config_emu_unit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_hal.c_nitrox_config_emu_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { i32 }
%union.emu_wd_int_ena_w1s = type { i64 }
%union.emu_ge_int_ena_w1s = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@NR_CLUSTERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nitrox_config_emu_unit(%struct.nitrox_device* %0) #0 {
  %2 = alloca %struct.nitrox_device*, align 8
  %3 = alloca %union.emu_wd_int_ena_w1s, align 8
  %4 = alloca %union.emu_ge_int_ena_w1s, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nitrox_device* %0, %struct.nitrox_device** %2, align 8
  %7 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %8 = call i32 @emu_enable_cores(%struct.nitrox_device* %7)
  %9 = bitcast %union.emu_ge_int_ena_w1s* %4 to i64*
  store i64 0, i64* %9, align 8
  %10 = bitcast %union.emu_ge_int_ena_w1s* %4 to %struct.TYPE_4__*
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 65535, i32* %11, align 8
  %12 = bitcast %union.emu_ge_int_ena_w1s* %4 to %struct.TYPE_4__*
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i32 1048575, i32* %13, align 4
  %14 = bitcast %union.emu_wd_int_ena_w1s* %3 to i64*
  store i64 0, i64* %14, align 8
  %15 = bitcast %union.emu_wd_int_ena_w1s* %3 to %struct.TYPE_3__*
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %36, %1
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @NR_CLUSTERS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @EMU_WD_INT_ENA_W1SX(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %25 = load i32, i32* %5, align 4
  %26 = bitcast %union.emu_wd_int_ena_w1s* %3 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @nitrox_write_csr(%struct.nitrox_device* %24, i32 %25, i64 %27)
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @EMU_GE_INT_ENA_W1SX(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %32 = load i32, i32* %5, align 4
  %33 = bitcast %union.emu_ge_int_ena_w1s* %4 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @nitrox_write_csr(%struct.nitrox_device* %31, i32 %32, i64 %34)
  br label %36

36:                                               ; preds = %21
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %17

39:                                               ; preds = %17
  ret void
}

declare dso_local i32 @emu_enable_cores(%struct.nitrox_device*) #1

declare dso_local i32 @EMU_WD_INT_ENA_W1SX(i32) #1

declare dso_local i32 @nitrox_write_csr(%struct.nitrox_device*, i32, i64) #1

declare dso_local i32 @EMU_GE_INT_ENA_W1SX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
