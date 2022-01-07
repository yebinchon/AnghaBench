; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_tx_short_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_tx_short_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_pin = type { i32 }

@CEC_ERROR_INJ_TX_SHORT_BIT_OFFSET = common dso_local global i32 0, align 4
@CEC_ERROR_INJ_TX_SHORT_BIT_ARG_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_pin*)* @tx_short_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx_short_bit(%struct.cec_pin* %0) #0 {
  %2 = alloca %struct.cec_pin*, align 8
  store %struct.cec_pin* %0, %struct.cec_pin** %2, align 8
  %3 = load %struct.cec_pin*, %struct.cec_pin** %2, align 8
  %4 = load i32, i32* @CEC_ERROR_INJ_TX_SHORT_BIT_OFFSET, align 4
  %5 = load i32, i32* @CEC_ERROR_INJ_TX_SHORT_BIT_ARG_IDX, align 4
  %6 = call i32 @tx_error_inj(%struct.cec_pin* %3, i32 %4, i32 %5, i32* null)
  ret i32 %6
}

declare dso_local i32 @tx_error_inj(%struct.cec_pin*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
