; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/master/extr_i3c-master-cdns.c_cdns_i3c_master_unqueue_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/master/extr_i3c-master-cdns.c_cdns_i3c_master_unqueue_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_i3c_master = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, %struct.cdns_i3c_xfer* }
%struct.cdns_i3c_xfer = type { i32 }

@CTRL = common dso_local global i64 0, align 8
@CTRL_DEV_EN = common dso_local global i32 0, align 4
@MST_STATUS0 = common dso_local global i64 0, align 8
@MST_STATUS0_IDLE = common dso_local global i32 0, align 4
@FLUSH_RX_FIFO = common dso_local global i32 0, align 4
@FLUSH_TX_FIFO = common dso_local global i32 0, align 4
@FLUSH_CMD_FIFO = common dso_local global i32 0, align 4
@FLUSH_CMD_RESP = common dso_local global i32 0, align 4
@FLUSH_CTRL = common dso_local global i64 0, align 8
@MST_INT_CMDD_EMP = common dso_local global i32 0, align 4
@MST_IDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdns_i3c_master*, %struct.cdns_i3c_xfer*)* @cdns_i3c_master_unqueue_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns_i3c_master_unqueue_xfer(%struct.cdns_i3c_master* %0, %struct.cdns_i3c_xfer* %1) #0 {
  %3 = alloca %struct.cdns_i3c_master*, align 8
  %4 = alloca %struct.cdns_i3c_xfer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.cdns_i3c_master* %0, %struct.cdns_i3c_master** %3, align 8
  store %struct.cdns_i3c_xfer* %1, %struct.cdns_i3c_xfer** %4, align 8
  %7 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %3, align 8
  %8 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %3, align 8
  %13 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %14, align 8
  %16 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %4, align 8
  %17 = icmp eq %struct.cdns_i3c_xfer* %15, %16
  br i1 %17, label %18, label %81

18:                                               ; preds = %2
  %19 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %3, align 8
  %20 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CTRL, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  %25 = load i32, i32* @CTRL_DEV_EN, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %3, align 8
  %29 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CTRL, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  %34 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %3, align 8
  %35 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MST_STATUS0, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @MST_STATUS0_IDLE, align 4
  %42 = and i32 %40, %41
  %43 = call i32 @readl_poll_timeout_atomic(i64 %38, i32 %39, i32 %42, i32 10, i32 1000000)
  %44 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %3, align 8
  %45 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store %struct.cdns_i3c_xfer* null, %struct.cdns_i3c_xfer** %46, align 8
  %47 = load i32, i32* @FLUSH_RX_FIFO, align 4
  %48 = load i32, i32* @FLUSH_TX_FIFO, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @FLUSH_CMD_FIFO, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @FLUSH_CMD_RESP, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %3, align 8
  %55 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @FLUSH_CTRL, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  %60 = load i32, i32* @MST_INT_CMDD_EMP, align 4
  %61 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %3, align 8
  %62 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MST_IDR, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 %60, i64 %65)
  %67 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %3, align 8
  %68 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CTRL, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @readl(i64 %71)
  %73 = load i32, i32* @CTRL_DEV_EN, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %3, align 8
  %76 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CTRL, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @writel(i32 %74, i64 %79)
  br label %85

81:                                               ; preds = %2
  %82 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %4, align 8
  %83 = getelementptr inbounds %struct.cdns_i3c_xfer, %struct.cdns_i3c_xfer* %82, i32 0, i32 0
  %84 = call i32 @list_del_init(i32* %83)
  br label %85

85:                                               ; preds = %81, %18
  %86 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %3, align 8
  %87 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %5, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @readl_poll_timeout_atomic(i64, i32, i32, i32, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
