; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsldma.c_fsldma_request_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsldma.c_fsldma_request_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsldma_device = type { i64, %struct.fsldma_device**, i32 }
%struct.fsldma_chan = type { i64, %struct.fsldma_chan**, i32 }

@.str = private unnamed_addr constant [28 x i8] c"request per-controller IRQ\0A\00", align 1
@fsldma_ctrl_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"fsldma-controller\00", align 1
@FSL_DMA_MAX_CHANS_PER_DEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"interrupts property missing in device tree\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"request per-channel IRQ\0A\00", align 1
@fsldma_chan_irq = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"fsldma-chan\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"unable to request per-channel IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsldma_device*)* @fsldma_request_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsldma_request_irqs(%struct.fsldma_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsldma_device*, align 8
  %4 = alloca %struct.fsldma_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fsldma_device* %0, %struct.fsldma_device** %3, align 8
  %7 = load %struct.fsldma_device*, %struct.fsldma_device** %3, align 8
  %8 = getelementptr inbounds %struct.fsldma_device, %struct.fsldma_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load %struct.fsldma_device*, %struct.fsldma_device** %3, align 8
  %13 = getelementptr inbounds %struct.fsldma_device, %struct.fsldma_device* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.fsldma_device*, %struct.fsldma_device** %3, align 8
  %17 = getelementptr inbounds %struct.fsldma_device, %struct.fsldma_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @fsldma_ctrl_irq, align 4
  %20 = load i32, i32* @IRQF_SHARED, align 4
  %21 = load %struct.fsldma_device*, %struct.fsldma_device** %3, align 8
  %22 = call i32 @request_irq(i64 %18, i32 %19, i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.fsldma_device* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %109

24:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %71, %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @FSL_DMA_MAX_CHANS_PER_DEVICE, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %74

29:                                               ; preds = %25
  %30 = load %struct.fsldma_device*, %struct.fsldma_device** %3, align 8
  %31 = getelementptr inbounds %struct.fsldma_device, %struct.fsldma_device* %30, i32 0, i32 1
  %32 = load %struct.fsldma_device**, %struct.fsldma_device*** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.fsldma_device*, %struct.fsldma_device** %32, i64 %34
  %36 = load %struct.fsldma_device*, %struct.fsldma_device** %35, align 8
  %37 = bitcast %struct.fsldma_device* %36 to %struct.fsldma_chan*
  store %struct.fsldma_chan* %37, %struct.fsldma_chan** %4, align 8
  %38 = load %struct.fsldma_chan*, %struct.fsldma_chan** %4, align 8
  %39 = icmp ne %struct.fsldma_chan* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %29
  br label %71

41:                                               ; preds = %29
  %42 = load %struct.fsldma_chan*, %struct.fsldma_chan** %4, align 8
  %43 = getelementptr inbounds %struct.fsldma_chan, %struct.fsldma_chan* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = load %struct.fsldma_chan*, %struct.fsldma_chan** %4, align 8
  %48 = bitcast %struct.fsldma_chan* %47 to %struct.fsldma_device*
  %49 = call i32 @chan_err(%struct.fsldma_device* %48, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %75

52:                                               ; preds = %41
  %53 = load %struct.fsldma_chan*, %struct.fsldma_chan** %4, align 8
  %54 = bitcast %struct.fsldma_chan* %53 to %struct.fsldma_device*
  %55 = call i32 @chan_dbg(%struct.fsldma_device* %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %56 = load %struct.fsldma_chan*, %struct.fsldma_chan** %4, align 8
  %57 = getelementptr inbounds %struct.fsldma_chan, %struct.fsldma_chan* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @fsldma_chan_irq, align 4
  %60 = load i32, i32* @IRQF_SHARED, align 4
  %61 = load %struct.fsldma_chan*, %struct.fsldma_chan** %4, align 8
  %62 = bitcast %struct.fsldma_chan* %61 to %struct.fsldma_device*
  %63 = call i32 @request_irq(i64 %58, i32 %59, i32 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), %struct.fsldma_device* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %52
  %67 = load %struct.fsldma_chan*, %struct.fsldma_chan** %4, align 8
  %68 = bitcast %struct.fsldma_chan* %67 to %struct.fsldma_device*
  %69 = call i32 @chan_err(%struct.fsldma_device* %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %75

70:                                               ; preds = %52
  br label %71

71:                                               ; preds = %70, %40
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %25

74:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %109

75:                                               ; preds = %66, %46
  br label %76

76:                                               ; preds = %104, %75
  %77 = load i32, i32* %6, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %107

79:                                               ; preds = %76
  %80 = load %struct.fsldma_device*, %struct.fsldma_device** %3, align 8
  %81 = getelementptr inbounds %struct.fsldma_device, %struct.fsldma_device* %80, i32 0, i32 1
  %82 = load %struct.fsldma_device**, %struct.fsldma_device*** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.fsldma_device*, %struct.fsldma_device** %82, i64 %84
  %86 = load %struct.fsldma_device*, %struct.fsldma_device** %85, align 8
  %87 = bitcast %struct.fsldma_device* %86 to %struct.fsldma_chan*
  store %struct.fsldma_chan* %87, %struct.fsldma_chan** %4, align 8
  %88 = load %struct.fsldma_chan*, %struct.fsldma_chan** %4, align 8
  %89 = icmp ne %struct.fsldma_chan* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %79
  br label %104

91:                                               ; preds = %79
  %92 = load %struct.fsldma_chan*, %struct.fsldma_chan** %4, align 8
  %93 = getelementptr inbounds %struct.fsldma_chan, %struct.fsldma_chan* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  br label %104

97:                                               ; preds = %91
  %98 = load %struct.fsldma_chan*, %struct.fsldma_chan** %4, align 8
  %99 = getelementptr inbounds %struct.fsldma_chan, %struct.fsldma_chan* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.fsldma_chan*, %struct.fsldma_chan** %4, align 8
  %102 = bitcast %struct.fsldma_chan* %101 to %struct.fsldma_device*
  %103 = call i32 @free_irq(i64 %100, %struct.fsldma_device* %102)
  br label %104

104:                                              ; preds = %97, %96, %90
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %6, align 4
  br label %76

107:                                              ; preds = %76
  %108 = load i32, i32* %5, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %107, %74, %11
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @request_irq(i64, i32, i32, i8*, %struct.fsldma_device*) #1

declare dso_local i32 @chan_err(%struct.fsldma_device*, i8*) #1

declare dso_local i32 @chan_dbg(%struct.fsldma_device*, i8*) #1

declare dso_local i32 @free_irq(i64, %struct.fsldma_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
