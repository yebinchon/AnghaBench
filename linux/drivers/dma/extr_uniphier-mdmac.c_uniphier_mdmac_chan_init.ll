; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_uniphier-mdmac.c_uniphier_mdmac_chan_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_uniphier-mdmac.c_uniphier_mdmac_chan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.uniphier_mdmac_device = type { i32, i64, %struct.uniphier_mdmac_chan* }
%struct.uniphier_mdmac_chan = type { i32, %struct.TYPE_2__, i64, %struct.uniphier_mdmac_device* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"uniphier-mio-dmac-ch%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@uniphier_mdmac_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@UNIPHIER_MDMAC_CH_OFFSET = common dso_local global i64 0, align 8
@UNIPHIER_MDMAC_CH_STRIDE = common dso_local global i32 0, align 4
@uniphier_mdmac_desc_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.uniphier_mdmac_device*, i32)* @uniphier_mdmac_chan_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_mdmac_chan_init(%struct.platform_device* %0, %struct.uniphier_mdmac_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.uniphier_mdmac_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.uniphier_mdmac_chan*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.uniphier_mdmac_device* %1, %struct.uniphier_mdmac_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %8, align 8
  %15 = load %struct.uniphier_mdmac_device*, %struct.uniphier_mdmac_device** %6, align 8
  %16 = getelementptr inbounds %struct.uniphier_mdmac_device, %struct.uniphier_mdmac_device* %15, i32 0, i32 2
  %17 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %17, i64 %19
  store %struct.uniphier_mdmac_chan* %20, %struct.uniphier_mdmac_chan** %9, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @platform_get_irq(%struct.platform_device* %21, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %4, align 4
  br label %78

28:                                               ; preds = %3
  %29 = load %struct.device*, %struct.device** %8, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i8* @devm_kasprintf(%struct.device* %29, i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %78

38:                                               ; preds = %28
  %39 = load %struct.device*, %struct.device** %8, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @uniphier_mdmac_interrupt, align 4
  %42 = load i32, i32* @IRQF_SHARED, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %9, align 8
  %45 = call i32 @devm_request_irq(%struct.device* %39, i32 %40, i32 %41, i32 %42, i8* %43, %struct.uniphier_mdmac_chan* %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %4, align 4
  br label %78

50:                                               ; preds = %38
  %51 = load %struct.uniphier_mdmac_device*, %struct.uniphier_mdmac_device** %6, align 8
  %52 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %9, align 8
  %53 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %52, i32 0, i32 3
  store %struct.uniphier_mdmac_device* %51, %struct.uniphier_mdmac_device** %53, align 8
  %54 = load %struct.uniphier_mdmac_device*, %struct.uniphier_mdmac_device** %6, align 8
  %55 = getelementptr inbounds %struct.uniphier_mdmac_device, %struct.uniphier_mdmac_device* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @UNIPHIER_MDMAC_CH_OFFSET, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i32, i32* @UNIPHIER_MDMAC_CH_STRIDE, align 4
  %60 = load i32, i32* %7, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %58, %62
  %64 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %9, align 8
  %65 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %9, align 8
  %68 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @uniphier_mdmac_desc_free, align 4
  %70 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %9, align 8
  %71 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 4
  %73 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %9, align 8
  %74 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %73, i32 0, i32 1
  %75 = load %struct.uniphier_mdmac_device*, %struct.uniphier_mdmac_device** %6, align 8
  %76 = getelementptr inbounds %struct.uniphier_mdmac_device, %struct.uniphier_mdmac_device* %75, i32 0, i32 0
  %77 = call i32 @vchan_init(%struct.TYPE_2__* %74, i32* %76)
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %50, %48, %35, %26
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i8* @devm_kasprintf(%struct.device*, i32, i8*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.uniphier_mdmac_chan*) #1

declare dso_local i32 @vchan_init(%struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
