; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_modify_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_modify_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_modify = type { i32, i32 }
%struct.rxe_dev = type { %struct.rxe_port }
%struct.rxe_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@IB_PORT_RESET_QKEY_CNTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i32, %struct.ib_port_modify*)* @rxe_modify_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_modify_port(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_port_modify* %3) #0 {
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_port_modify*, align 8
  %9 = alloca %struct.rxe_dev*, align 8
  %10 = alloca %struct.rxe_port*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.ib_port_modify* %3, %struct.ib_port_modify** %8, align 8
  %11 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %12 = call %struct.rxe_dev* @to_rdev(%struct.ib_device* %11)
  store %struct.rxe_dev* %12, %struct.rxe_dev** %9, align 8
  %13 = load %struct.rxe_dev*, %struct.rxe_dev** %9, align 8
  %14 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %13, i32 0, i32 0
  store %struct.rxe_port* %14, %struct.rxe_port** %10, align 8
  %15 = load %struct.ib_port_modify*, %struct.ib_port_modify** %8, align 8
  %16 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.rxe_port*, %struct.rxe_port** %10, align 8
  %19 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %17
  store i32 %22, i32* %20, align 8
  %23 = load %struct.ib_port_modify*, %struct.ib_port_modify** %8, align 8
  %24 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.rxe_port*, %struct.rxe_port** %10, align 8
  %28 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %26
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @IB_PORT_RESET_QKEY_CNTR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %4
  %37 = load %struct.rxe_port*, %struct.rxe_port** %10, align 8
  %38 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %36, %4
  ret i32 0
}

declare dso_local %struct.rxe_dev* @to_rdev(%struct.ib_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
