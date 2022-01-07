; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_cec_pin_start_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_cec_pin_start_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_pin = type { i64, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32)* }

@CEC_ST_RX_IRQ = common dso_local global i64 0, align 8
@CEC_PIN_IRQ_UNCHANGED = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cec_pin_start_timer(%struct.cec_pin* %0) #0 {
  %2 = alloca %struct.cec_pin*, align 8
  store %struct.cec_pin* %0, %struct.cec_pin** %2, align 8
  %3 = load %struct.cec_pin*, %struct.cec_pin** %2, align 8
  %4 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @CEC_ST_RX_IRQ, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %32

9:                                                ; preds = %1
  %10 = load %struct.cec_pin*, %struct.cec_pin** %2, align 8
  %11 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %10, i32 0, i32 4
  %12 = load i32, i32* @CEC_PIN_IRQ_UNCHANGED, align 4
  %13 = call i32 @atomic_set(i32* %11, i32 %12)
  %14 = load %struct.cec_pin*, %struct.cec_pin** %2, align 8
  %15 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (i32)*, i32 (i32)** %17, align 8
  %19 = load %struct.cec_pin*, %struct.cec_pin** %2, align 8
  %20 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 %18(i32 %21)
  %23 = load %struct.cec_pin*, %struct.cec_pin** %2, align 8
  %24 = call i32 @cec_pin_high(%struct.cec_pin* %23)
  %25 = load %struct.cec_pin*, %struct.cec_pin** %2, align 8
  %26 = call i32 @cec_pin_to_idle(%struct.cec_pin* %25)
  %27 = load %struct.cec_pin*, %struct.cec_pin** %2, align 8
  %28 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %27, i32 0, i32 1
  %29 = call i32 @ns_to_ktime(i32 0)
  %30 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %31 = call i32 @hrtimer_start(i32* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @cec_pin_high(%struct.cec_pin*) #1

declare dso_local i32 @cec_pin_to_idle(%struct.cec_pin*) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
