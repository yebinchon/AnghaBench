; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ipu/extr_ipu_idmac.c___idmac_terminate_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ipu/extr_ipu_idmac.c___idmac_terminate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.idmac_channel = type { i64, i32, i32, i32**, i32, %struct.idmac_tx_desc*, i32 }
%struct.idmac_tx_desc = type { i32, i32 }
%struct.idmac = type { i32 }
%struct.ipu = type { i32 }

@IPU_CHANNEL_ENABLED = common dso_local global i64 0, align 8
@IPU_CHANNEL_INITIALIZED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @__idmac_terminate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__idmac_terminate_all(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.idmac_channel*, align 8
  %4 = alloca %struct.idmac*, align 8
  %5 = alloca %struct.ipu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.idmac_tx_desc*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %9 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %10 = call %struct.idmac_channel* @to_idmac_chan(%struct.dma_chan* %9)
  store %struct.idmac_channel* %10, %struct.idmac_channel** %3, align 8
  %11 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %12 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.idmac* @to_idmac(i32 %13)
  store %struct.idmac* %14, %struct.idmac** %4, align 8
  %15 = load %struct.idmac*, %struct.idmac** %4, align 8
  %16 = call %struct.ipu* @to_ipu(%struct.idmac* %15)
  store %struct.ipu* %16, %struct.ipu** %5, align 8
  %17 = load %struct.idmac*, %struct.idmac** %4, align 8
  %18 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %19 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %20 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IPU_CHANNEL_ENABLED, align 8
  %23 = icmp sge i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @ipu_disable_channel(%struct.idmac* %17, %struct.idmac_channel* %18, i32 %24)
  %26 = load %struct.ipu*, %struct.ipu** %5, align 8
  %27 = getelementptr inbounds %struct.ipu, %struct.ipu* %26, i32 0, i32 0
  %28 = call i32 @tasklet_disable(i32* %27)
  %29 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %30 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %29, i32 0, i32 2
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %34 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %33, i32 0, i32 6
  %35 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %36 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %35, i32 0, i32 4
  %37 = call i32 @list_splice_init(i32* %34, i32* %36)
  %38 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %39 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %38, i32 0, i32 5
  %40 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %39, align 8
  %41 = icmp ne %struct.idmac_tx_desc* %40, null
  br i1 %41, label %42, label %74

42:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %70, %42
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %46 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %43
  %50 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %51 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %50, i32 0, i32 5
  %52 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.idmac_tx_desc, %struct.idmac_tx_desc* %52, i64 %54
  store %struct.idmac_tx_desc* %55, %struct.idmac_tx_desc** %8, align 8
  %56 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %8, align 8
  %57 = getelementptr inbounds %struct.idmac_tx_desc, %struct.idmac_tx_desc* %56, i32 0, i32 1
  %58 = call i64 @list_empty(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %49
  %61 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %8, align 8
  %62 = getelementptr inbounds %struct.idmac_tx_desc, %struct.idmac_tx_desc* %61, i32 0, i32 1
  %63 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %64 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %63, i32 0, i32 4
  %65 = call i32 @list_add(i32* %62, i32* %64)
  br label %66

66:                                               ; preds = %60, %49
  %67 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %8, align 8
  %68 = getelementptr inbounds %struct.idmac_tx_desc, %struct.idmac_tx_desc* %67, i32 0, i32 0
  %69 = call i32 @async_tx_clear_ack(i32* %68)
  br label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %43

73:                                               ; preds = %43
  br label %74

74:                                               ; preds = %73, %1
  %75 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %76 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %75, i32 0, i32 3
  %77 = load i32**, i32*** %76, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i64 0
  store i32* null, i32** %78, align 8
  %79 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %80 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %79, i32 0, i32 3
  %81 = load i32**, i32*** %80, align 8
  %82 = getelementptr inbounds i32*, i32** %81, i64 1
  store i32* null, i32** %82, align 8
  %83 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %84 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %83, i32 0, i32 2
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load %struct.ipu*, %struct.ipu** %5, align 8
  %88 = getelementptr inbounds %struct.ipu, %struct.ipu* %87, i32 0, i32 0
  %89 = call i32 @tasklet_enable(i32* %88)
  %90 = load i64, i64* @IPU_CHANNEL_INITIALIZED, align 8
  %91 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %92 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  ret i32 0
}

declare dso_local %struct.idmac_channel* @to_idmac_chan(%struct.dma_chan*) #1

declare dso_local %struct.idmac* @to_idmac(i32) #1

declare dso_local %struct.ipu* @to_ipu(%struct.idmac*) #1

declare dso_local i32 @ipu_disable_channel(%struct.idmac*, %struct.idmac_channel*, i32) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @async_tx_clear_ack(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tasklet_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
