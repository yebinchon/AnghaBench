; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_tx_add_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_tx_add_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_pin = type { i32 }

@CEC_ERROR_INJ_TX_ADD_BYTES_OFFSET = common dso_local global i32 0, align 4
@CEC_ERROR_INJ_TX_ADD_BYTES_ARG_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_pin*)* @tx_add_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx_add_bytes(%struct.cec_pin* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cec_pin*, align 8
  %4 = alloca i32, align 4
  store %struct.cec_pin* %0, %struct.cec_pin** %3, align 8
  %5 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %6 = load i32, i32* @CEC_ERROR_INJ_TX_ADD_BYTES_OFFSET, align 4
  %7 = load i32, i32* @CEC_ERROR_INJ_TX_ADD_BYTES_ARG_IDX, align 4
  %8 = call i64 @tx_error_inj(%struct.cec_pin* %5, i32 %6, i32 %7, i32* %4)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %12, %10
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

declare dso_local i64 @tx_error_inj(%struct.cec_pin*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
