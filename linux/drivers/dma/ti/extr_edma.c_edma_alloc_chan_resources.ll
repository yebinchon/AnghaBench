; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.edma_chan = type { i32*, i32, i64, i32, %struct.TYPE_4__*, %struct.edma_cc* }
%struct.TYPE_4__ = type { i32 }
%struct.edma_cc = type { %struct.TYPE_3__*, %struct.TYPE_4__*, %struct.device* }
%struct.TYPE_3__ = type { i64 }
%struct.device = type { i32 }

@EVENTQ_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Entry slot allocation failed for channel %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Got eDMA channel %d for virt channel %d (%s trigger)\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"HW\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"SW\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @edma_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edma_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.edma_chan*, align 8
  %5 = alloca %struct.edma_cc*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %9 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %10 = call %struct.edma_chan* @to_edma_chan(%struct.dma_chan* %9)
  store %struct.edma_chan* %10, %struct.edma_chan** %4, align 8
  %11 = load %struct.edma_chan*, %struct.edma_chan** %4, align 8
  %12 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %11, i32 0, i32 5
  %13 = load %struct.edma_cc*, %struct.edma_cc** %12, align 8
  store %struct.edma_cc* %13, %struct.edma_cc** %5, align 8
  %14 = load %struct.edma_cc*, %struct.edma_cc** %5, align 8
  %15 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %14, i32 0, i32 2
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load i32, i32* @EVENTQ_DEFAULT, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.edma_chan*, %struct.edma_chan** %4, align 8
  %19 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %18, i32 0, i32 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.edma_chan*, %struct.edma_chan** %4, align 8
  %24 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %23, i32 0, i32 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  br label %51

28:                                               ; preds = %1
  %29 = load %struct.edma_cc*, %struct.edma_cc** %5, align 8
  %30 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load %struct.edma_cc*, %struct.edma_cc** %5, align 8
  %35 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load %struct.edma_cc*, %struct.edma_cc** %5, align 8
  %38 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %41
  %43 = load %struct.edma_chan*, %struct.edma_chan** %4, align 8
  %44 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %43, i32 0, i32 4
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %44, align 8
  %45 = load %struct.edma_chan*, %struct.edma_chan** %4, align 8
  %46 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %45, i32 0, i32 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %33, %28
  br label %51

51:                                               ; preds = %50, %22
  %52 = load %struct.edma_chan*, %struct.edma_chan** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @edma_alloc_channel(%struct.edma_chan* %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %2, align 4
  br label %116

59:                                               ; preds = %51
  %60 = load %struct.edma_cc*, %struct.edma_cc** %5, align 8
  %61 = load %struct.edma_chan*, %struct.edma_chan** %4, align 8
  %62 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @edma_alloc_slot(%struct.edma_cc* %60, i32 %63)
  %65 = load %struct.edma_chan*, %struct.edma_chan** %4, align 8
  %66 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %64, i32* %68, align 4
  %69 = load %struct.edma_chan*, %struct.edma_chan** %4, align 8
  %70 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %59
  %76 = load %struct.device*, %struct.device** %6, align 8
  %77 = load %struct.edma_chan*, %struct.edma_chan** %4, align 8
  %78 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @EDMA_CHAN_SLOT(i32 %79)
  %81 = call i32 @dev_err(%struct.device* %76, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load %struct.edma_chan*, %struct.edma_chan** %4, align 8
  %83 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %8, align 4
  br label %112

87:                                               ; preds = %59
  %88 = load %struct.edma_chan*, %struct.edma_chan** %4, align 8
  %89 = load %struct.edma_chan*, %struct.edma_chan** %4, align 8
  %90 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @edma_set_chmap(%struct.edma_chan* %88, i32 %93)
  %95 = load %struct.edma_chan*, %struct.edma_chan** %4, align 8
  %96 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %95, i32 0, i32 1
  store i32 1, i32* %96, align 8
  %97 = load %struct.device*, %struct.device** %6, align 8
  %98 = load %struct.edma_chan*, %struct.edma_chan** %4, align 8
  %99 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @EDMA_CHAN_SLOT(i32 %100)
  %102 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %103 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.edma_chan*, %struct.edma_chan** %4, align 8
  %106 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %111 = call i32 @dev_dbg(%struct.device* %97, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %104, i8* %110)
  store i32 0, i32* %2, align 4
  br label %116

112:                                              ; preds = %75
  %113 = load %struct.edma_chan*, %struct.edma_chan** %4, align 8
  %114 = call i32 @edma_free_channel(%struct.edma_chan* %113)
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %112, %87, %57
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.edma_chan* @to_edma_chan(%struct.dma_chan*) #1

declare dso_local i32 @edma_alloc_channel(%struct.edma_chan*, i32) #1

declare dso_local i32 @edma_alloc_slot(%struct.edma_cc*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @EDMA_CHAN_SLOT(i32) #1

declare dso_local i32 @edma_set_chmap(%struct.edma_chan*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i8*) #1

declare dso_local i32 @edma_free_channel(%struct.edma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
