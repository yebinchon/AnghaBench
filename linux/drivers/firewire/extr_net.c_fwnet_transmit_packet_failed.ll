; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_net.c_fwnet_transmit_packet_failed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_net.c_fwnet_transmit_packet_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnet_packet_task = type { i32, i64, %struct.fwnet_device* }
%struct.fwnet_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fwnet_packet_task*)* @fwnet_transmit_packet_failed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwnet_transmit_packet_failed(%struct.fwnet_packet_task* %0) #0 {
  %2 = alloca %struct.fwnet_packet_task*, align 8
  %3 = alloca %struct.fwnet_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.fwnet_packet_task* %0, %struct.fwnet_packet_task** %2, align 8
  %6 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %2, align 8
  %7 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %6, i32 0, i32 2
  %8 = load %struct.fwnet_device*, %struct.fwnet_device** %7, align 8
  store %struct.fwnet_device* %8, %struct.fwnet_device** %3, align 8
  %9 = load %struct.fwnet_device*, %struct.fwnet_device** %3, align 8
  %10 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %9, i32 0, i32 0
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %2, align 8
  %14 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %2, align 8
  %16 = getelementptr inbounds %struct.fwnet_packet_task, %struct.fwnet_packet_task* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.fwnet_device*, %struct.fwnet_device** %3, align 8
  %22 = call i32 @dec_queued_datagrams(%struct.fwnet_device* %21)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.fwnet_device*, %struct.fwnet_device** %3, align 8
  %25 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.fwnet_device*, %struct.fwnet_device** %3, align 8
  %32 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.fwnet_device*, %struct.fwnet_device** %3, align 8
  %39 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %38, i32 0, i32 0
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %23
  %45 = load %struct.fwnet_packet_task*, %struct.fwnet_packet_task** %2, align 8
  %46 = call i32 @fwnet_free_ptask(%struct.fwnet_packet_task* %45)
  br label %47

47:                                               ; preds = %44, %23
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dec_queued_datagrams(%struct.fwnet_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @fwnet_free_ptask(%struct.fwnet_packet_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
