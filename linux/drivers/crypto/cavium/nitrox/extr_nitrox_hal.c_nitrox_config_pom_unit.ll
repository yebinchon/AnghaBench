; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_hal.c_nitrox_config_pom_unit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_hal.c_nitrox_config_pom_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%union.pom_int_ena_w1s = type { i64 }
%struct.TYPE_3__ = type { i32 }

@POM_INT_ENA_W1S = common dso_local global i32 0, align 4
@POM_PERF_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nitrox_config_pom_unit(%struct.nitrox_device* %0) #0 {
  %2 = alloca %struct.nitrox_device*, align 8
  %3 = alloca %union.pom_int_ena_w1s, align 8
  %4 = alloca i32, align 4
  store %struct.nitrox_device* %0, %struct.nitrox_device** %2, align 8
  %5 = bitcast %union.pom_int_ena_w1s* %3 to i64*
  store i64 0, i64* %5, align 8
  %6 = bitcast %union.pom_int_ena_w1s* %3 to %struct.TYPE_3__*
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %9 = load i32, i32* @POM_INT_ENA_W1S, align 4
  %10 = bitcast %union.pom_int_ena_w1s* %3 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @nitrox_write_csr(%struct.nitrox_device* %8, i32 %9, i64 %11)
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %26, %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %16 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %13
  %21 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %22 = load i32, i32* @POM_PERF_CTL, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @BIT_ULL(i32 %23)
  %25 = call i32 @nitrox_write_csr(%struct.nitrox_device* %21, i32 %22, i64 %24)
  br label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %13

29:                                               ; preds = %13
  ret void
}

declare dso_local i32 @nitrox_write_csr(%struct.nitrox_device*, i32, i64) #1

declare dso_local i64 @BIT_ULL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
