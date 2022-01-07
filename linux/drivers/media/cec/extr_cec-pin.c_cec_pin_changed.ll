; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_cec_pin_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_cec_pin_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i64, i64, i64, %struct.cec_pin* }
%struct.cec_pin = type { i32 }

@CEC_PIN_IRQ_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cec_pin_changed(%struct.cec_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.cec_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cec_pin*, align 8
  store %struct.cec_adapter* %0, %struct.cec_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %6, i32 0, i32 3
  %8 = load %struct.cec_pin*, %struct.cec_pin** %7, align 8
  store %struct.cec_pin* %8, %struct.cec_pin** %5, align 8
  %9 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @cec_pin_update(%struct.cec_pin* %9, i32 %10, i32 0)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %2
  %15 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24, %19, %14
  %30 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %31 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %30, i32 0, i32 0
  %32 = load i32, i32* @CEC_PIN_IRQ_DISABLE, align 4
  %33 = call i32 @atomic_set(i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %24, %2
  ret void
}

declare dso_local i32 @cec_pin_update(%struct.cec_pin*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
