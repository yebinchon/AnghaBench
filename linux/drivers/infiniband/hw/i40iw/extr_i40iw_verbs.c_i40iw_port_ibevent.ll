; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_port_ibevent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_port_ibevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i64, %struct.i40iw_ib_device* }
%struct.i40iw_ib_device = type { i32 }
%struct.ib_event = type { i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@IB_EVENT_PORT_ACTIVE = common dso_local global i32 0, align 4
@IB_EVENT_PORT_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_port_ibevent(%struct.i40iw_device* %0) #0 {
  %2 = alloca %struct.i40iw_device*, align 8
  %3 = alloca %struct.i40iw_ib_device*, align 8
  %4 = alloca %struct.ib_event, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %2, align 8
  %5 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %6 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %5, i32 0, i32 1
  %7 = load %struct.i40iw_ib_device*, %struct.i40iw_ib_device** %6, align 8
  store %struct.i40iw_ib_device* %7, %struct.i40iw_ib_device** %3, align 8
  %8 = load %struct.i40iw_ib_device*, %struct.i40iw_ib_device** %3, align 8
  %9 = getelementptr inbounds %struct.i40iw_ib_device, %struct.i40iw_ib_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %4, i32 0, i32 2
  store i32* %9, i32** %10, align 8
  %11 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %4, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %14 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @IB_EVENT_PORT_ACTIVE, align 4
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @IB_EVENT_PORT_ERR, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %4, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = call i32 @ib_dispatch_event(%struct.ib_event* %4)
  ret void
}

declare dso_local i32 @ib_dispatch_event(%struct.ib_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
