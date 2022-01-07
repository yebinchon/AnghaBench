; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_cec_pin_adap_log_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_cec_pin_adap_log_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { %struct.cec_pin* }
%struct.cec_pin = type { i32 }

@CEC_LOG_ADDR_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32)* @cec_pin_adap_log_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cec_pin_adap_log_addr(%struct.cec_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.cec_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cec_pin*, align 8
  store %struct.cec_adapter* %0, %struct.cec_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %6, i32 0, i32 0
  %8 = load %struct.cec_pin*, %struct.cec_pin** %7, align 8
  store %struct.cec_pin* %8, %struct.cec_pin** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @CEC_LOG_ADDR_INVALID, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %14 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  br label %22

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = shl i32 1, %16
  %18 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %19 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %15, %12
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
