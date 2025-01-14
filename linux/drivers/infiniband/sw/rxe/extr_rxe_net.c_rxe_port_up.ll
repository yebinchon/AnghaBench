; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_net.c_rxe_port_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_net.c_rxe_port_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_dev = type { %struct.TYPE_4__, %struct.rxe_port }
%struct.TYPE_4__ = type { i32 }
%struct.rxe_port = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IB_PORT_ACTIVE = common dso_local global i32 0, align 4
@IB_EVENT_PORT_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"set active\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rxe_port_up(%struct.rxe_dev* %0) #0 {
  %2 = alloca %struct.rxe_dev*, align 8
  %3 = alloca %struct.rxe_port*, align 8
  store %struct.rxe_dev* %0, %struct.rxe_dev** %2, align 8
  %4 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %5 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %4, i32 0, i32 1
  store %struct.rxe_port* %5, %struct.rxe_port** %3, align 8
  %6 = load i32, i32* @IB_PORT_ACTIVE, align 4
  %7 = load %struct.rxe_port*, %struct.rxe_port** %3, align 8
  %8 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 %6, i32* %9, align 4
  %10 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %11 = load i32, i32* @IB_EVENT_PORT_ACTIVE, align 4
  %12 = call i32 @rxe_port_event(%struct.rxe_dev* %10, i32 %11)
  %13 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %14 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i32 @dev_info(i32* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @rxe_port_event(%struct.rxe_dev*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
