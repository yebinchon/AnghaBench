; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_hal.c_nitrox_config_bmi_unit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_hal.c_nitrox_config_bmi_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { i32 }
%union.bmi_ctl = type { i64, [8 x i8] }
%union.bmi_int_ena_w1s = type { i64, [8 x i8] }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@BMI_CTL = common dso_local global i32 0, align 4
@BMI_INT_ENA_W1S = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nitrox_config_bmi_unit(%struct.nitrox_device* %0) #0 {
  %2 = alloca %struct.nitrox_device*, align 8
  %3 = alloca %union.bmi_ctl, align 8
  %4 = alloca %union.bmi_int_ena_w1s, align 8
  %5 = alloca i32, align 4
  store %struct.nitrox_device* %0, %struct.nitrox_device** %2, align 8
  %6 = load i32, i32* @BMI_CTL, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @nitrox_read_csr(%struct.nitrox_device* %7, i32 %8)
  %10 = bitcast %union.bmi_ctl* %3 to i64*
  store i64 %9, i64* %10, align 8
  %11 = bitcast %union.bmi_ctl* %3 to %struct.TYPE_4__*
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 255, i32* %12, align 8
  %13 = bitcast %union.bmi_ctl* %3 to %struct.TYPE_4__*
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32 255, i32* %14, align 4
  %15 = bitcast %union.bmi_ctl* %3 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store i32 122, i32* %16, align 8
  %17 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %18 = load i32, i32* %5, align 4
  %19 = bitcast %union.bmi_ctl* %3 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @nitrox_write_csr(%struct.nitrox_device* %17, i32 %18, i64 %20)
  %22 = load i32, i32* @BMI_INT_ENA_W1S, align 4
  store i32 %22, i32* %5, align 4
  %23 = bitcast %union.bmi_int_ena_w1s* %4 to i64*
  store i64 0, i64* %23, align 8
  %24 = bitcast %union.bmi_int_ena_w1s* %4 to %struct.TYPE_3__*
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = bitcast %union.bmi_int_ena_w1s* %4 to %struct.TYPE_3__*
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = bitcast %union.bmi_int_ena_w1s* %4 to %struct.TYPE_3__*
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  store i32 1, i32* %29, align 8
  %30 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %31 = load i32, i32* %5, align 4
  %32 = bitcast %union.bmi_int_ena_w1s* %4 to i64*
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @nitrox_write_csr(%struct.nitrox_device* %30, i32 %31, i64 %33)
  ret void
}

declare dso_local i64 @nitrox_read_csr(%struct.nitrox_device*, i32) #1

declare dso_local i32 @nitrox_write_csr(%struct.nitrox_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
