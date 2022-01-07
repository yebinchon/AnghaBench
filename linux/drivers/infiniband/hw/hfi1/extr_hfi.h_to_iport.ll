; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_to_iport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_to_iport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ibport = type { i32 }
%struct.ib_device = type { i32 }
%struct.hfi1_devdata = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hfi1_ibport }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hfi1_ibport* (%struct.ib_device*, i32)* @to_iport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hfi1_ibport* @to_iport(%struct.ib_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %8 = call %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device* %7)
  store %struct.hfi1_devdata* %8, %struct.hfi1_devdata** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %13 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp uge i32 %11, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %19 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  ret %struct.hfi1_ibport* %24
}

declare dso_local %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
