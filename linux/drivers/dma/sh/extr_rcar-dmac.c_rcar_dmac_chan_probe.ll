; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_chan_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_chan_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_dmac = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.rcar_dmac_chan = type { i32, i32, %struct.TYPE_3__, i32, i32, i64, %struct.dma_chan }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.dma_chan = type { i32, %struct.TYPE_4__* }
%struct.platform_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ch%u\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s:%u\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@rcar_dmac_isr_channel = common dso_local global i32 0, align 4
@rcar_dmac_isr_channel_thread = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to request IRQ %u (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_dmac*, %struct.rcar_dmac_chan*, i32)* @rcar_dmac_chan_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_dmac_chan_probe(%struct.rcar_dmac* %0, %struct.rcar_dmac_chan* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rcar_dmac*, align 8
  %6 = alloca %struct.rcar_dmac_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.dma_chan*, align 8
  %10 = alloca [5 x i8], align 1
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.rcar_dmac* %0, %struct.rcar_dmac** %5, align 8
  store %struct.rcar_dmac_chan* %1, %struct.rcar_dmac_chan** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.rcar_dmac*, %struct.rcar_dmac** %5, align 8
  %14 = getelementptr inbounds %struct.rcar_dmac, %struct.rcar_dmac* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.platform_device* @to_platform_device(i32 %15)
  store %struct.platform_device* %16, %struct.platform_device** %8, align 8
  %17 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %18 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %17, i32 0, i32 6
  store %struct.dma_chan* %18, %struct.dma_chan** %9, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %21 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.rcar_dmac*, %struct.rcar_dmac** %5, align 8
  %23 = getelementptr inbounds %struct.rcar_dmac, %struct.rcar_dmac* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @RCAR_DMAC_CHAN_OFFSET(i32 %25)
  %27 = add nsw i64 %24, %26
  %28 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %29 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %28, i32 0, i32 5
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  %32 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %33 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %35 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %34, i32 0, i32 3
  %36 = call i32 @spin_lock_init(i32* %35)
  %37 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %38 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %42 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %46 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %50 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %54 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  %57 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @sprintf(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %61 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %62 = call i32 @platform_get_irq_byname(%struct.platform_device* %60, i8* %61)
  %63 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %64 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %66 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %3
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %125

72:                                               ; preds = %3
  %73 = load %struct.rcar_dmac*, %struct.rcar_dmac** %5, align 8
  %74 = getelementptr inbounds %struct.rcar_dmac, %struct.rcar_dmac* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = load %struct.rcar_dmac*, %struct.rcar_dmac** %5, align 8
  %78 = getelementptr inbounds %struct.rcar_dmac, %struct.rcar_dmac* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @dev_name(i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = call i8* @devm_kasprintf(i32 %75, i32 %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %81)
  store i8* %82, i8** %11, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %72
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %125

88:                                               ; preds = %72
  %89 = load %struct.rcar_dmac*, %struct.rcar_dmac** %5, align 8
  %90 = getelementptr inbounds %struct.rcar_dmac, %struct.rcar_dmac* %89, i32 0, i32 1
  %91 = load %struct.dma_chan*, %struct.dma_chan** %9, align 8
  %92 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %91, i32 0, i32 1
  store %struct.TYPE_4__* %90, %struct.TYPE_4__** %92, align 8
  %93 = load %struct.dma_chan*, %struct.dma_chan** %9, align 8
  %94 = call i32 @dma_cookie_init(%struct.dma_chan* %93)
  %95 = load %struct.dma_chan*, %struct.dma_chan** %9, align 8
  %96 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %95, i32 0, i32 0
  %97 = load %struct.rcar_dmac*, %struct.rcar_dmac** %5, align 8
  %98 = getelementptr inbounds %struct.rcar_dmac, %struct.rcar_dmac* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = call i32 @list_add_tail(i32* %96, i32* %99)
  %101 = load %struct.rcar_dmac*, %struct.rcar_dmac** %5, align 8
  %102 = getelementptr inbounds %struct.rcar_dmac, %struct.rcar_dmac* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %105 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @rcar_dmac_isr_channel, align 4
  %108 = load i32, i32* @rcar_dmac_isr_channel_thread, align 4
  %109 = load i8*, i8** %11, align 8
  %110 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %111 = call i32 @devm_request_threaded_irq(i32 %103, i32 %106, i32 %107, i32 %108, i32 0, i8* %109, %struct.rcar_dmac_chan* %110)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %88
  %115 = load %struct.rcar_dmac*, %struct.rcar_dmac** %5, align 8
  %116 = getelementptr inbounds %struct.rcar_dmac, %struct.rcar_dmac* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %6, align 8
  %119 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @dev_err(i32 %117, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %120, i32 %121)
  %123 = load i32, i32* %12, align 4
  store i32 %123, i32* %4, align 4
  br label %125

124:                                              ; preds = %88
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %114, %85, %69
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i64 @RCAR_DMAC_CHAN_OFFSET(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i8* @devm_kasprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @dma_cookie_init(%struct.dma_chan*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @devm_request_threaded_irq(i32, i32, i32, i32, i32, i8*, %struct.rcar_dmac_chan*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
