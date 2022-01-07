; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/master/extr_i3c-master-cdns.c_cdns_i3c_master_queue_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/master/extr_i3c-master-cdns.c_cdns_i3c_master_queue_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_i3c_master = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.cdns_i3c_xfer*, i32 }
%struct.cdns_i3c_xfer = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdns_i3c_master*, %struct.cdns_i3c_xfer*)* @cdns_i3c_master_queue_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns_i3c_master_queue_xfer(%struct.cdns_i3c_master* %0, %struct.cdns_i3c_xfer* %1) #0 {
  %3 = alloca %struct.cdns_i3c_master*, align 8
  %4 = alloca %struct.cdns_i3c_xfer*, align 8
  %5 = alloca i64, align 8
  store %struct.cdns_i3c_master* %0, %struct.cdns_i3c_master** %3, align 8
  store %struct.cdns_i3c_xfer* %1, %struct.cdns_i3c_xfer** %4, align 8
  %6 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %4, align 8
  %7 = getelementptr inbounds %struct.cdns_i3c_xfer, %struct.cdns_i3c_xfer* %6, i32 0, i32 1
  %8 = call i32 @init_completion(i32* %7)
  %9 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %3, align 8
  %10 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %3, align 8
  %15 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %16, align 8
  %18 = icmp ne %struct.cdns_i3c_xfer* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %4, align 8
  %21 = getelementptr inbounds %struct.cdns_i3c_xfer, %struct.cdns_i3c_xfer* %20, i32 0, i32 0
  %22 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %3, align 8
  %23 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = call i32 @list_add_tail(i32* %21, i32* %24)
  br label %33

26:                                               ; preds = %2
  %27 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %4, align 8
  %28 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %3, align 8
  %29 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store %struct.cdns_i3c_xfer* %27, %struct.cdns_i3c_xfer** %30, align 8
  %31 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %3, align 8
  %32 = call i32 @cdns_i3c_master_start_xfer_locked(%struct.cdns_i3c_master* %31)
  br label %33

33:                                               ; preds = %26, %19
  %34 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %3, align 8
  %35 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  ret void
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @cdns_i3c_master_start_xfer_locked(%struct.cdns_i3c_master*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
