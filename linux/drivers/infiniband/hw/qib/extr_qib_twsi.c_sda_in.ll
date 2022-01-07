; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_twsi.c_sda_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_twsi.c_sda_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32 (%struct.qib_devdata*, i32, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*, i32)* @sda_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sda_in(%struct.qib_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %9 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = shl i64 1, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %16 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %15, i32 0, i32 1
  %17 = load i32 (%struct.qib_devdata*, i32, i32, i32)*, i32 (%struct.qib_devdata*, i32, i32, i32)** %16, align 8
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 %17(%struct.qib_devdata* %18, i32 0, i32 0, i32 %19)
  %21 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %22 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %21, i32 0, i32 1
  %23 = load i32 (%struct.qib_devdata*, i32, i32, i32)*, i32 (%struct.qib_devdata*, i32, i32, i32)** %22, align 8
  %24 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %25 = call i32 %23(%struct.qib_devdata* %24, i32 0, i32 0, i32 0)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %30 = call i32 @i2c_wait_for_writes(%struct.qib_devdata* %29)
  br label %31

31:                                               ; preds = %28, %2
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* %5, align 4
  %36 = ashr i32 %34, %35
  ret i32 %36
}

declare dso_local i32 @i2c_wait_for_writes(%struct.qib_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
