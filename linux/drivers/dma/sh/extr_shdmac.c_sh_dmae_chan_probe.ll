; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdmac.c_sh_dmae_chan_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdmac.c_sh_dmae_chan_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_dmae_device = type { %struct.sh_dmae_chan**, i64, %struct.shdma_dev, %struct.TYPE_3__* }
%struct.sh_dmae_chan = type { i32, i64, %struct.shdma_chan }
%struct.shdma_chan = type { i64 }
%struct.shdma_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.sh_dmae_channel* }
%struct.sh_dmae_channel = type { i64 }
%struct.platform_device = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SH_DMA_TCR_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"sh-dmae%d.%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"sh-dma%d\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"DMA channel %d request_irq error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_dmae_device*, i32, i32, i64)* @sh_dmae_chan_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_dmae_chan_probe(%struct.sh_dmae_device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sh_dmae_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.sh_dmae_channel*, align 8
  %11 = alloca %struct.shdma_dev*, align 8
  %12 = alloca %struct.platform_device*, align 8
  %13 = alloca %struct.sh_dmae_chan*, align 8
  %14 = alloca %struct.shdma_chan*, align 8
  %15 = alloca i32, align 4
  store %struct.sh_dmae_device* %0, %struct.sh_dmae_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %16 = load %struct.sh_dmae_device*, %struct.sh_dmae_device** %6, align 8
  %17 = getelementptr inbounds %struct.sh_dmae_device, %struct.sh_dmae_device* %16, i32 0, i32 3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.sh_dmae_channel*, %struct.sh_dmae_channel** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.sh_dmae_channel, %struct.sh_dmae_channel* %20, i64 %22
  store %struct.sh_dmae_channel* %23, %struct.sh_dmae_channel** %10, align 8
  %24 = load %struct.sh_dmae_device*, %struct.sh_dmae_device** %6, align 8
  %25 = getelementptr inbounds %struct.sh_dmae_device, %struct.sh_dmae_device* %24, i32 0, i32 2
  store %struct.shdma_dev* %25, %struct.shdma_dev** %11, align 8
  %26 = load %struct.shdma_dev*, %struct.shdma_dev** %11, align 8
  %27 = getelementptr inbounds %struct.shdma_dev, %struct.shdma_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.platform_device* @to_platform_device(i32 %29)
  store %struct.platform_device* %30, %struct.platform_device** %12, align 8
  %31 = load %struct.shdma_dev*, %struct.shdma_dev** %11, align 8
  %32 = getelementptr inbounds %struct.shdma_dev, %struct.shdma_dev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.sh_dmae_chan* @devm_kzalloc(i32 %34, i32 24, i32 %35)
  store %struct.sh_dmae_chan* %36, %struct.sh_dmae_chan** %13, align 8
  %37 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %13, align 8
  %38 = icmp ne %struct.sh_dmae_chan* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %4
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %112

42:                                               ; preds = %4
  %43 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %13, align 8
  %44 = getelementptr inbounds %struct.sh_dmae_chan, %struct.sh_dmae_chan* %43, i32 0, i32 2
  store %struct.shdma_chan* %44, %struct.shdma_chan** %14, align 8
  %45 = load i64, i64* @SH_DMA_TCR_MAX, align 8
  %46 = add nsw i64 %45, 1
  %47 = load %struct.shdma_chan*, %struct.shdma_chan** %14, align 8
  %48 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.shdma_dev*, %struct.shdma_dev** %11, align 8
  %50 = load %struct.shdma_chan*, %struct.shdma_chan** %14, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @shdma_chan_probe(%struct.shdma_dev* %49, %struct.shdma_chan* %50, i32 %51)
  %53 = load %struct.sh_dmae_device*, %struct.sh_dmae_device** %6, align 8
  %54 = getelementptr inbounds %struct.sh_dmae_device, %struct.sh_dmae_device* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.sh_dmae_channel*, %struct.sh_dmae_channel** %10, align 8
  %57 = getelementptr inbounds %struct.sh_dmae_channel, %struct.sh_dmae_channel* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %13, align 8
  %61 = getelementptr inbounds %struct.sh_dmae_chan, %struct.sh_dmae_chan* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sge i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %42
  %67 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %13, align 8
  %68 = getelementptr inbounds %struct.sh_dmae_chan, %struct.sh_dmae_chan* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = load i32, i32* %7, align 4
  %75 = call i32 (i32, i32, i8*, i32, ...) @snprintf(i32 %69, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74)
  br label %82

76:                                               ; preds = %42
  %77 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %13, align 8
  %78 = getelementptr inbounds %struct.sh_dmae_chan, %struct.sh_dmae_chan* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 (i32, i32, i8*, i32, ...) @snprintf(i32 %79, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %76, %66
  %83 = load %struct.shdma_chan*, %struct.shdma_chan** %14, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load i64, i64* %9, align 8
  %86 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %13, align 8
  %87 = getelementptr inbounds %struct.sh_dmae_chan, %struct.sh_dmae_chan* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @shdma_request_irq(%struct.shdma_chan* %83, i32 %84, i64 %85, i32 %88)
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %82
  %93 = load %struct.shdma_dev*, %struct.shdma_dev** %11, align 8
  %94 = getelementptr inbounds %struct.shdma_dev, %struct.shdma_dev* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @dev_err(i32 %96, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %97, i32 %98)
  br label %108

100:                                              ; preds = %82
  %101 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %13, align 8
  %102 = load %struct.sh_dmae_device*, %struct.sh_dmae_device** %6, align 8
  %103 = getelementptr inbounds %struct.sh_dmae_device, %struct.sh_dmae_device* %102, i32 0, i32 0
  %104 = load %struct.sh_dmae_chan**, %struct.sh_dmae_chan*** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %104, i64 %106
  store %struct.sh_dmae_chan* %101, %struct.sh_dmae_chan** %107, align 8
  store i32 0, i32* %5, align 4
  br label %112

108:                                              ; preds = %92
  %109 = load %struct.shdma_chan*, %struct.shdma_chan** %14, align 8
  %110 = call i32 @shdma_chan_remove(%struct.shdma_chan* %109)
  %111 = load i32, i32* %15, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %108, %100, %39
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local %struct.sh_dmae_chan* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @shdma_chan_probe(%struct.shdma_dev*, %struct.shdma_chan*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @shdma_request_irq(%struct.shdma_chan*, i32, i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @shdma_chan_remove(%struct.shdma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
