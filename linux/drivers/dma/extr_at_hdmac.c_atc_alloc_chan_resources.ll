; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_at_hdmac.c_atc_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_at_hdmac.c_atc_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { %struct.at_dma_slave*, i32 }
%struct.at_dma_slave = type { i64, i64 }
%struct.at_dma_chan = type { i32, i32, i32 }
%struct.at_dma = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.at_desc = type { i32 }

@tmp_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"alloc_chan_resources\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"DMA channel not idle ?\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ATC_DEFAULT_CFG = common dso_local global i64 0, align 8
@init_nr_desc_per_channel = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Only %d initial descriptors\0A\00", align 1
@CFG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"alloc_chan_resources: allocated %d descriptors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @atc_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atc_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.at_dma_chan*, align 8
  %5 = alloca %struct.at_dma*, align 8
  %6 = alloca %struct.at_desc*, align 8
  %7 = alloca %struct.at_dma_slave*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %11 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %12 = call %struct.at_dma_chan* @to_at_dma_chan(%struct.dma_chan* %11)
  store %struct.at_dma_chan* %12, %struct.at_dma_chan** %4, align 8
  %13 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %14 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.at_dma* @to_at_dma(i32 %15)
  store %struct.at_dma* %16, %struct.at_dma** %5, align 8
  %17 = load i32, i32* @tmp_list, align 4
  %18 = call i32 @LIST_HEAD(i32 %17)
  %19 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %20 = call i32 @chan2dev(%struct.dma_chan* %19)
  %21 = call i32 @dev_vdbg(i32 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.at_dma_chan*, %struct.at_dma_chan** %4, align 8
  %23 = call i64 @atc_chan_is_enabled(%struct.at_dma_chan* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %27 = call i32 @chan2dev(%struct.dma_chan* %26)
  %28 = call i32 (i32, i8*, ...) @dev_dbg(i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %129

31:                                               ; preds = %1
  %32 = load i64, i64* @ATC_DEFAULT_CFG, align 8
  store i64 %32, i64* %10, align 8
  %33 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %34 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %33, i32 0, i32 0
  %35 = load %struct.at_dma_slave*, %struct.at_dma_slave** %34, align 8
  store %struct.at_dma_slave* %35, %struct.at_dma_slave** %7, align 8
  %36 = load %struct.at_dma_slave*, %struct.at_dma_slave** %7, align 8
  %37 = icmp ne %struct.at_dma_slave* %36, null
  br i1 %37, label %38, label %65

38:                                               ; preds = %31
  %39 = load %struct.at_dma_slave*, %struct.at_dma_slave** %7, align 8
  %40 = getelementptr inbounds %struct.at_dma_slave, %struct.at_dma_slave* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.at_dma_slave*, %struct.at_dma_slave** %7, align 8
  %45 = getelementptr inbounds %struct.at_dma_slave, %struct.at_dma_slave* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.at_dma*, %struct.at_dma** %5, align 8
  %48 = getelementptr inbounds %struct.at_dma, %struct.at_dma* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %46, %50
  br label %52

52:                                               ; preds = %43, %38
  %53 = phi i1 [ true, %38 ], [ %51, %43 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @BUG_ON(i32 %54)
  %56 = load %struct.at_dma_slave*, %struct.at_dma_slave** %7, align 8
  %57 = getelementptr inbounds %struct.at_dma_slave, %struct.at_dma_slave* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load %struct.at_dma_slave*, %struct.at_dma_slave** %7, align 8
  %62 = getelementptr inbounds %struct.at_dma_slave, %struct.at_dma_slave* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %10, align 8
  br label %64

64:                                               ; preds = %60, %52
  br label %65

65:                                               ; preds = %64, %31
  %66 = load %struct.at_dma_chan*, %struct.at_dma_chan** %4, align 8
  %67 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %66, i32 0, i32 2
  %68 = call i32 @list_empty(i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = load %struct.at_dma_chan*, %struct.at_dma_chan** %4, align 8
  %72 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %2, align 4
  br label %129

74:                                               ; preds = %65
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %96, %74
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @init_nr_desc_per_channel, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %99

79:                                               ; preds = %75
  %80 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call %struct.at_desc* @atc_alloc_descriptor(%struct.dma_chan* %80, i32 %81)
  store %struct.at_desc* %82, %struct.at_desc** %6, align 8
  %83 = load %struct.at_desc*, %struct.at_desc** %6, align 8
  %84 = icmp ne %struct.at_desc* %83, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %79
  %86 = load %struct.at_dma*, %struct.at_dma** %5, align 8
  %87 = getelementptr inbounds %struct.at_dma, %struct.at_dma* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @dev_err(i64 %89, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  br label %99

92:                                               ; preds = %79
  %93 = load %struct.at_desc*, %struct.at_desc** %6, align 8
  %94 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %93, i32 0, i32 0
  %95 = call i32 @list_add_tail(i32* %94, i32* @tmp_list)
  br label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %75

99:                                               ; preds = %85, %75
  %100 = load %struct.at_dma_chan*, %struct.at_dma_chan** %4, align 8
  %101 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %100, i32 0, i32 1
  %102 = load i64, i64* %8, align 8
  %103 = call i32 @spin_lock_irqsave(i32* %101, i64 %102)
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.at_dma_chan*, %struct.at_dma_chan** %4, align 8
  %106 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load %struct.at_dma_chan*, %struct.at_dma_chan** %4, align 8
  %108 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %107, i32 0, i32 2
  %109 = call i32 @list_splice(i32* @tmp_list, i32* %108)
  %110 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %111 = call i32 @dma_cookie_init(%struct.dma_chan* %110)
  %112 = load %struct.at_dma_chan*, %struct.at_dma_chan** %4, align 8
  %113 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %112, i32 0, i32 1
  %114 = load i64, i64* %8, align 8
  %115 = call i32 @spin_unlock_irqrestore(i32* %113, i64 %114)
  %116 = load %struct.at_dma_chan*, %struct.at_dma_chan** %4, align 8
  %117 = load i32, i32* @CFG, align 4
  %118 = load i64, i64* %10, align 8
  %119 = call i32 @channel_writel(%struct.at_dma_chan* %116, i32 %117, i64 %118)
  %120 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %121 = call i32 @chan2dev(%struct.dma_chan* %120)
  %122 = load %struct.at_dma_chan*, %struct.at_dma_chan** %4, align 8
  %123 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i32, i8*, ...) @dev_dbg(i32 %121, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  %126 = load %struct.at_dma_chan*, %struct.at_dma_chan** %4, align 8
  %127 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %99, %70, %25
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.at_dma_chan* @to_at_dma_chan(%struct.dma_chan*) #1

declare dso_local %struct.at_dma* @to_at_dma(i32) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*) #1

declare dso_local i32 @chan2dev(%struct.dma_chan*) #1

declare dso_local i64 @atc_chan_is_enabled(%struct.at_dma_chan*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.at_desc* @atc_alloc_descriptor(%struct.dma_chan*, i32) #1

declare dso_local i32 @dev_err(i64, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_splice(i32*, i32*) #1

declare dso_local i32 @dma_cookie_init(%struct.dma_chan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @channel_writel(%struct.at_dma_chan*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
