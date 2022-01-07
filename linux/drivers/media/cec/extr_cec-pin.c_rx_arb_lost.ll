; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_rx_arb_lost.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_rx_arb_lost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_pin = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CEC_ERROR_INJ_RX_ARB_LOST_OFFSET = common dso_local global i32 0, align 4
@CEC_ERROR_INJ_RX_ARB_LOST_ARG_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_pin*, i32*)* @rx_arb_lost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx_arb_lost(%struct.cec_pin* %0, i32* %1) #0 {
  %3 = alloca %struct.cec_pin*, align 8
  %4 = alloca i32*, align 8
  store %struct.cec_pin* %0, %struct.cec_pin** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %6 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %12 = load i32, i32* @CEC_ERROR_INJ_RX_ARB_LOST_OFFSET, align 4
  %13 = load i32, i32* @CEC_ERROR_INJ_RX_ARB_LOST_ARG_IDX, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @rx_error_inj(%struct.cec_pin* %11, i32 %12, i32 %13, i32* %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %10, %2
  %18 = phi i1 [ false, %2 ], [ %16, %10 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

declare dso_local i64 @rx_error_inj(%struct.cec_pin*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
