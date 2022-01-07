; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/master/extr_dw-i3c-master.c_dw_i3c_master_dequeue_xfer_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/master/extr_dw-i3c-master.c_dw_i3c_master_dequeue_xfer_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i3c_master = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dw_i3c_xfer* }
%struct.dw_i3c_xfer = type { i32 }

@RESET_CTRL_RX_FIFO = common dso_local global i32 0, align 4
@RESET_CTRL_TX_FIFO = common dso_local global i32 0, align 4
@RESET_CTRL_RESP_QUEUE = common dso_local global i32 0, align 4
@RESET_CTRL_CMD_QUEUE = common dso_local global i32 0, align 4
@RESET_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_i3c_master*, %struct.dw_i3c_xfer*)* @dw_i3c_master_dequeue_xfer_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_i3c_master_dequeue_xfer_locked(%struct.dw_i3c_master* %0, %struct.dw_i3c_xfer* %1) #0 {
  %3 = alloca %struct.dw_i3c_master*, align 8
  %4 = alloca %struct.dw_i3c_xfer*, align 8
  %5 = alloca i32, align 4
  store %struct.dw_i3c_master* %0, %struct.dw_i3c_master** %3, align 8
  store %struct.dw_i3c_xfer* %1, %struct.dw_i3c_xfer** %4, align 8
  %6 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %3, align 8
  %7 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %8, align 8
  %10 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %4, align 8
  %11 = icmp eq %struct.dw_i3c_xfer* %9, %10
  br i1 %11, label %12, label %40

12:                                               ; preds = %2
  %13 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %3, align 8
  %14 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.dw_i3c_xfer* null, %struct.dw_i3c_xfer** %15, align 8
  %16 = load i32, i32* @RESET_CTRL_RX_FIFO, align 4
  %17 = load i32, i32* @RESET_CTRL_TX_FIFO, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @RESET_CTRL_RESP_QUEUE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @RESET_CTRL_CMD_QUEUE, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %3, align 8
  %24 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RESET_CTRL, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %22, i64 %27)
  %29 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %3, align 8
  %30 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RESET_CTRL, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @readl_poll_timeout_atomic(i64 %33, i32 %34, i32 %38, i32 10, i32 1000000)
  br label %44

40:                                               ; preds = %2
  %41 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %4, align 8
  %42 = getelementptr inbounds %struct.dw_i3c_xfer, %struct.dw_i3c_xfer* %41, i32 0, i32 0
  %43 = call i32 @list_del_init(i32* %42)
  br label %44

44:                                               ; preds = %40, %12
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl_poll_timeout_atomic(i64, i32, i32, i32, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
