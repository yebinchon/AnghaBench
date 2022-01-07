; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_destroy_rdma_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_destroy_rdma_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_ib_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@I40IW_EVENT_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_destroy_rdma_device(%struct.i40iw_ib_device* %0) #0 {
  %2 = alloca %struct.i40iw_ib_device*, align 8
  store %struct.i40iw_ib_device* %0, %struct.i40iw_ib_device** %2, align 8
  %3 = load %struct.i40iw_ib_device*, %struct.i40iw_ib_device** %2, align 8
  %4 = getelementptr inbounds %struct.i40iw_ib_device, %struct.i40iw_ib_device* %3, i32 0, i32 0
  %5 = call i32 @ib_unregister_device(i32* %4)
  %6 = load %struct.i40iw_ib_device*, %struct.i40iw_ib_device** %2, align 8
  %7 = getelementptr inbounds %struct.i40iw_ib_device, %struct.i40iw_ib_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.i40iw_ib_device*, %struct.i40iw_ib_device** %2, align 8
  %12 = getelementptr inbounds %struct.i40iw_ib_device, %struct.i40iw_ib_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @atomic64_read(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* @I40IW_EVENT_TIMEOUT, align 4
  %20 = call i32 @wait_event_timeout(i32 %10, i32 %18, i32 %19)
  %21 = load %struct.i40iw_ib_device*, %struct.i40iw_ib_device** %2, align 8
  %22 = getelementptr inbounds %struct.i40iw_ib_device, %struct.i40iw_ib_device* %21, i32 0, i32 0
  %23 = call i32 @ib_dealloc_device(i32* %22)
  ret void
}

declare dso_local i32 @ib_unregister_device(i32*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @atomic64_read(i32*) #1

declare dso_local i32 @ib_dealloc_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
