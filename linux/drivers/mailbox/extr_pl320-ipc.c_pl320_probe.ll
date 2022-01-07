; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_pl320-ipc.c_pl320_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_pl320-ipc.c_pl320_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_device = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.amba_id = type { i32 }

@ipc_base = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@IPC_TX_MBOX = common dso_local global i32 0, align 4
@ipc_irq = common dso_local global i32 0, align 4
@ipc_handler = common dso_local global i32 0, align 4
@A9_SOURCE = common dso_local global i32 0, align 4
@M3_SOURCE = common dso_local global i32 0, align 4
@IPC_RX_MBOX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amba_device*, %struct.amba_id*)* @pl320_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl320_probe(%struct.amba_device* %0, %struct.amba_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amba_device*, align 8
  %5 = alloca %struct.amba_id*, align 8
  %6 = alloca i32, align 4
  store %struct.amba_device* %0, %struct.amba_device** %4, align 8
  store %struct.amba_id* %1, %struct.amba_id** %5, align 8
  %7 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %8 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %12 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %11, i32 0, i32 2
  %13 = call i32 @resource_size(%struct.TYPE_2__* %12)
  %14 = call i32* @ioremap(i32 %10, i32 %13)
  store i32* %14, i32** @ipc_base, align 8
  %15 = load i32*, i32** @ipc_base, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %100

20:                                               ; preds = %2
  %21 = load i32*, i32** @ipc_base, align 8
  %22 = load i32, i32* @IPC_TX_MBOX, align 4
  %23 = call i32 @IPCMxSEND(i32 %22)
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = call i32 @writel_relaxed(i32 0, i32* %25)
  %27 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %28 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* @ipc_irq, align 4
  %32 = load i32, i32* @ipc_irq, align 4
  %33 = load i32, i32* @ipc_handler, align 4
  %34 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %35 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %34, i32 0, i32 0
  %36 = call i32 @dev_name(i32* %35)
  %37 = call i32 @request_irq(i32 %32, i32 %33, i32 0, i32 %36, i32* null)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %20
  br label %96

41:                                               ; preds = %20
  %42 = load i32, i32* @A9_SOURCE, align 4
  %43 = call i32 @CHAN_MASK(i32 %42)
  %44 = load i32*, i32** @ipc_base, align 8
  %45 = load i32, i32* @IPC_TX_MBOX, align 4
  %46 = call i32 @IPCMxSOURCE(i32 %45)
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = call i32 @writel_relaxed(i32 %43, i32* %48)
  %50 = load i32, i32* @M3_SOURCE, align 4
  %51 = call i32 @CHAN_MASK(i32 %50)
  %52 = load i32*, i32** @ipc_base, align 8
  %53 = load i32, i32* @IPC_TX_MBOX, align 4
  %54 = call i32 @IPCMxDSET(i32 %53)
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = call i32 @writel_relaxed(i32 %51, i32* %56)
  %58 = load i32, i32* @M3_SOURCE, align 4
  %59 = call i32 @CHAN_MASK(i32 %58)
  %60 = load i32, i32* @A9_SOURCE, align 4
  %61 = call i32 @CHAN_MASK(i32 %60)
  %62 = or i32 %59, %61
  %63 = load i32*, i32** @ipc_base, align 8
  %64 = load i32, i32* @IPC_TX_MBOX, align 4
  %65 = call i32 @IPCMxMSET(i32 %64)
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = call i32 @writel_relaxed(i32 %62, i32* %67)
  %69 = load i32, i32* @M3_SOURCE, align 4
  %70 = call i32 @CHAN_MASK(i32 %69)
  %71 = load i32*, i32** @ipc_base, align 8
  %72 = load i32, i32* @IPC_RX_MBOX, align 4
  %73 = call i32 @IPCMxSOURCE(i32 %72)
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = call i32 @writel_relaxed(i32 %70, i32* %75)
  %77 = load i32, i32* @A9_SOURCE, align 4
  %78 = call i32 @CHAN_MASK(i32 %77)
  %79 = load i32*, i32** @ipc_base, align 8
  %80 = load i32, i32* @IPC_RX_MBOX, align 4
  %81 = call i32 @IPCMxDSET(i32 %80)
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = call i32 @writel_relaxed(i32 %78, i32* %83)
  %85 = load i32, i32* @M3_SOURCE, align 4
  %86 = call i32 @CHAN_MASK(i32 %85)
  %87 = load i32, i32* @A9_SOURCE, align 4
  %88 = call i32 @CHAN_MASK(i32 %87)
  %89 = or i32 %86, %88
  %90 = load i32*, i32** @ipc_base, align 8
  %91 = load i32, i32* @IPC_RX_MBOX, align 4
  %92 = call i32 @IPCMxMSET(i32 %91)
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = call i32 @writel_relaxed(i32 %89, i32* %94)
  store i32 0, i32* %3, align 4
  br label %100

96:                                               ; preds = %40
  %97 = load i32*, i32** @ipc_base, align 8
  %98 = call i32 @iounmap(i32* %97)
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %96, %41, %17
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32* @ioremap(i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_2__*) #1

declare dso_local i32 @writel_relaxed(i32, i32*) #1

declare dso_local i32 @IPCMxSEND(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @CHAN_MASK(i32) #1

declare dso_local i32 @IPCMxSOURCE(i32) #1

declare dso_local i32 @IPCMxDSET(i32) #1

declare dso_local i32 @IPCMxMSET(i32) #1

declare dso_local i32 @iounmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
