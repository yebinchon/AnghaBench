; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ipu/extr_ipu_idmac.c_idmac_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ipu/extr_ipu_idmac.c_idmac_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.idmac_channel = type { i64, i32, i8* }
%struct.idmac = type { i32 }

@IPU_CHANNEL_FREE = common dso_local global i64 0, align 8
@idmac_interrupt = common dso_local global i32 0, align 4
@IPU_CHANNEL_INITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Found channel 0x%x, irq %d\0A\00", align 1
@IDMAC_IC_7 = common dso_local global i64 0, align 8
@ic_eof = common dso_local global i32 0, align 4
@ic_eof_irq = common dso_local global i32 0, align 4
@ic_sof = common dso_local global i32 0, align 4
@ic_sof_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @idmac_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idmac_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.idmac_channel*, align 8
  %5 = alloca %struct.idmac*, align 8
  %6 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %8 = call %struct.idmac_channel* @to_idmac_chan(%struct.dma_chan* %7)
  store %struct.idmac_channel* %8, %struct.idmac_channel** %4, align 8
  %9 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %10 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.idmac* @to_idmac(i32 %11)
  store %struct.idmac* %12, %struct.idmac** %5, align 8
  %13 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %14 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %20 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IPU_CHANNEL_FREE, align 8
  %23 = icmp ne i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON(i32 %24)
  %26 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %27 = call i32 @dma_cookie_init(%struct.dma_chan* %26)
  %28 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %29 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @ipu_irq_map(i32 %30)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  br label %89

36:                                               ; preds = %1
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %39 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.idmac*, %struct.idmac** %5, align 8
  %41 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %42 = call i32 @ipu_disable_channel(%struct.idmac* %40, %struct.idmac_channel* %41, i32 1)
  %43 = load %struct.idmac*, %struct.idmac** %5, align 8
  %44 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %45 = call i32 @ipu_init_channel(%struct.idmac* %43, %struct.idmac_channel* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  br label %83

49:                                               ; preds = %36
  %50 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %51 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @idmac_interrupt, align 4
  %54 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %55 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %58 = call i32 @request_irq(i32 %52, i32 %53, i32 0, i8* %56, %struct.idmac_channel* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %79

62:                                               ; preds = %49
  %63 = load i64, i64* @IPU_CHANNEL_INITIALIZED, align 8
  %64 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %65 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %67 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %71 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %75 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @dev_dbg(i32* %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %73, i32 %76)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %91

79:                                               ; preds = %61
  %80 = load %struct.idmac*, %struct.idmac** %5, align 8
  %81 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %82 = call i32 @ipu_uninit_channel(%struct.idmac* %80, %struct.idmac_channel* %81)
  br label %83

83:                                               ; preds = %79, %48
  %84 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %85 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = call i32 @ipu_irq_unmap(i64 %87)
  br label %89

89:                                               ; preds = %83, %35
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %62
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.idmac_channel* @to_idmac_chan(%struct.dma_chan*) #1

declare dso_local %struct.idmac* @to_idmac(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dma_cookie_init(%struct.dma_chan*) #1

declare dso_local i8* @ipu_irq_map(i32) #1

declare dso_local i32 @ipu_disable_channel(%struct.idmac*, %struct.idmac_channel*, i32) #1

declare dso_local i32 @ipu_init_channel(%struct.idmac*, %struct.idmac_channel*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.idmac_channel*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i32) #1

declare dso_local i32 @ipu_uninit_channel(%struct.idmac*, %struct.idmac_channel*) #1

declare dso_local i32 @ipu_irq_unmap(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
