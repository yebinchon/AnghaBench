; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_eq.c_port_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_eq.c_port_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }
%struct.ib_event = type { %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Port change to %s for port %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@IB_EVENT_PORT_ACTIVE = common dso_local global i32 0, align 4
@IB_EVENT_PORT_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mthca_dev*, i32, i32)* @port_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @port_change(%struct.mthca_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mthca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_event, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @mthca_dbg(%struct.mthca_dev* %8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %13)
  %15 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %16 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %7, i32 0, i32 2
  store i32* %16, i32** %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @IB_EVENT_PORT_ACTIVE, align 4
  br label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @IB_EVENT_PORT_ERR, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %7, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %5, align 4
  %28 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %7, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = call i32 @ib_dispatch_event(%struct.ib_event* %7)
  ret void
}

declare dso_local i32 @mthca_dbg(%struct.mthca_dev*, i8*, i8*, i32) #1

declare dso_local i32 @ib_dispatch_event(%struct.ib_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
