; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_twsi.c_qib_twsi_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_twsi.c_qib_twsi_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32 }

@QIB_TWSI_START = common dso_local global i32 0, align 4
@QIB_TWSI_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*, i32, i32)* @qib_twsi_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_twsi_wr(%struct.qib_devdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qib_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @QIB_TWSI_START, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %14 = call i32 @start_seq(%struct.qib_devdata* %13)
  br label %15

15:                                               ; preds = %12, %3
  %16 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @wr_byte(%struct.qib_devdata* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @QIB_TWSI_STOP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %25 = call i32 @stop_cmd(%struct.qib_devdata* %24)
  br label %26

26:                                               ; preds = %23, %15
  %27 = load i32, i32* %7, align 4
  ret i32 %27
}

declare dso_local i32 @start_seq(%struct.qib_devdata*) #1

declare dso_local i32 @wr_byte(%struct.qib_devdata*, i32) #1

declare dso_local i32 @stop_cmd(%struct.qib_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
