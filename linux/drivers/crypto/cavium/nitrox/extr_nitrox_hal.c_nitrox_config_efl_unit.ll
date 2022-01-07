; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_hal.c_nitrox_config_efl_unit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_hal.c_nitrox_config_efl_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { i32 }
%union.efl_core_int_ena_w1s = type { i64, [8 x i8] }
%struct.TYPE_2__ = type { i32, i32, i32 }

@NR_CLUSTERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nitrox_config_efl_unit(%struct.nitrox_device* %0) #0 {
  %2 = alloca %struct.nitrox_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.efl_core_int_ena_w1s, align 8
  %5 = alloca i32, align 4
  store %struct.nitrox_device* %0, %struct.nitrox_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %35, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @NR_CLUSTERS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %38

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @EFL_CORE_INT_ENA_W1SX(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = bitcast %union.efl_core_int_ena_w1s* %4 to i64*
  store i64 0, i64* %13, align 8
  %14 = bitcast %union.efl_core_int_ena_w1s* %4 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = bitcast %union.efl_core_int_ena_w1s* %4 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32 1, i32* %17, align 4
  %18 = bitcast %union.efl_core_int_ena_w1s* %4 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i32 1, i32* %19, align 8
  %20 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %21 = load i32, i32* %5, align 4
  %22 = bitcast %union.efl_core_int_ena_w1s* %4 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @nitrox_write_csr(%struct.nitrox_device* %20, i32 %21, i64 %23)
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @EFL_CORE_VF_ERR_INT0_ENA_W1SX(i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @nitrox_write_csr(%struct.nitrox_device* %27, i32 %28, i64 -1)
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @EFL_CORE_VF_ERR_INT1_ENA_W1SX(i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @nitrox_write_csr(%struct.nitrox_device* %32, i32 %33, i64 -1)
  br label %35

35:                                               ; preds = %10
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %6

38:                                               ; preds = %6
  ret void
}

declare dso_local i32 @EFL_CORE_INT_ENA_W1SX(i32) #1

declare dso_local i32 @nitrox_write_csr(%struct.nitrox_device*, i32, i64) #1

declare dso_local i32 @EFL_CORE_VF_ERR_INT0_ENA_W1SX(i32) #1

declare dso_local i32 @EFL_CORE_VF_ERR_INT1_ENA_W1SX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
