; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_cec_pin_high.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_cec_pin_high.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_pin = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_pin*)* @cec_pin_high to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cec_pin_high(%struct.cec_pin* %0) #0 {
  %2 = alloca %struct.cec_pin*, align 8
  store %struct.cec_pin* %0, %struct.cec_pin** %2, align 8
  %3 = load %struct.cec_pin*, %struct.cec_pin** %2, align 8
  %4 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32 (i32)*, i32 (i32)** %6, align 8
  %8 = load %struct.cec_pin*, %struct.cec_pin** %2, align 8
  %9 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 %7(i32 %10)
  %12 = load %struct.cec_pin*, %struct.cec_pin** %2, align 8
  %13 = call i32 @cec_pin_read(%struct.cec_pin* %12)
  ret i32 %13
}

declare dso_local i32 @cec_pin_read(%struct.cec_pin*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
