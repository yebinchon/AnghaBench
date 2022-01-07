; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_platform.c_apply_cdr_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_platform.c_apply_cdr_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }

@QSFP_CDR_CTRL_BYTE_OFFS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_pportdata*, i32, i32)* @apply_cdr_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_cdr_settings(%struct.hfi1_pportdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hfi1_pportdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %10 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i64, i64* @QSFP_CDR_CTRL_BYTE_OFFS, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @apply_rx_cdr(%struct.hfi1_pportdata* %17, i32 %18, i32* %8)
  %20 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @apply_tx_cdr(%struct.hfi1_pportdata* %20, i32 %21, i32* %8)
  %23 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %24 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %25 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* @QSFP_CDR_CTRL_BYTE_OFFS, align 8
  %30 = call i32 @qsfp_write(%struct.hfi1_pportdata* %23, i32 %28, i64 %29, i32* %8, i32 1)
  ret void
}

declare dso_local i32 @apply_rx_cdr(%struct.hfi1_pportdata*, i32, i32*) #1

declare dso_local i32 @apply_tx_cdr(%struct.hfi1_pportdata*, i32, i32*) #1

declare dso_local i32 @qsfp_write(%struct.hfi1_pportdata*, i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
