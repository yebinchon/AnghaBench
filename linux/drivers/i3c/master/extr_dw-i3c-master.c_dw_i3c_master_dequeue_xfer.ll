; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/master/extr_dw-i3c-master.c_dw_i3c_master_dequeue_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/master/extr_dw-i3c-master.c_dw_i3c_master_dequeue_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i3c_master = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dw_i3c_xfer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_i3c_master*, %struct.dw_i3c_xfer*)* @dw_i3c_master_dequeue_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_i3c_master_dequeue_xfer(%struct.dw_i3c_master* %0, %struct.dw_i3c_xfer* %1) #0 {
  %3 = alloca %struct.dw_i3c_master*, align 8
  %4 = alloca %struct.dw_i3c_xfer*, align 8
  %5 = alloca i64, align 8
  store %struct.dw_i3c_master* %0, %struct.dw_i3c_master** %3, align 8
  store %struct.dw_i3c_xfer* %1, %struct.dw_i3c_xfer** %4, align 8
  %6 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %3, align 8
  %7 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %3, align 8
  %12 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %4, align 8
  %13 = call i32 @dw_i3c_master_dequeue_xfer_locked(%struct.dw_i3c_master* %11, %struct.dw_i3c_xfer* %12)
  %14 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %3, align 8
  %15 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* %16, i64 %17)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dw_i3c_master_dequeue_xfer_locked(%struct.dw_i3c_master*, %struct.dw_i3c_xfer*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
