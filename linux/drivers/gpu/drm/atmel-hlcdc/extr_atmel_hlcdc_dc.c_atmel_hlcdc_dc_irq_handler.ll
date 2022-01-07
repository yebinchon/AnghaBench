; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_dc.c_atmel_hlcdc_dc_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_dc.c_atmel_hlcdc_dc_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.atmel_hlcdc_dc* }
%struct.atmel_hlcdc_dc = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ATMEL_HLCDC_IMR = common dso_local global i32 0, align 4
@ATMEL_HLCDC_ISR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@ATMEL_HLCDC_SOF = common dso_local global i64 0, align 8
@ATMEL_HLCDC_MAX_LAYERS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @atmel_hlcdc_dc_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_hlcdc_dc_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.atmel_hlcdc_dc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.drm_device*
  store %struct.drm_device* %13, %struct.drm_device** %6, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %15, align 8
  store %struct.atmel_hlcdc_dc* %16, %struct.atmel_hlcdc_dc** %7, align 8
  %17 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %7, align 8
  %18 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ATMEL_HLCDC_IMR, align 4
  %23 = call i32 @regmap_read(i32 %21, i32 %22, i32* %9)
  %24 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %7, align 8
  %25 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ATMEL_HLCDC_ISR, align 4
  %30 = call i32 @regmap_read(i32 %28, i32 %29, i32* %10)
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %31, %32
  %34 = zext i32 %33 to i64
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %2
  %38 = load i32, i32* @IRQ_NONE, align 4
  store i32 %38, i32* %3, align 4
  br label %75

39:                                               ; preds = %2
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @ATMEL_HLCDC_SOF, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %7, align 8
  %46 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @atmel_hlcdc_crtc_irq(i32 %47)
  br label %49

49:                                               ; preds = %44, %39
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %70, %49
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @ATMEL_HLCDC_MAX_LAYERS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = call i64 @ATMEL_HLCDC_LAYER_STATUS(i32 %55)
  %57 = load i64, i64* %8, align 8
  %58 = and i64 %56, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %7, align 8
  %62 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @atmel_hlcdc_layer_irq(i32 %67)
  br label %69

69:                                               ; preds = %60, %54
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %50

73:                                               ; preds = %50
  %74 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %37
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @atmel_hlcdc_crtc_irq(i32) #1

declare dso_local i64 @ATMEL_HLCDC_LAYER_STATUS(i32) #1

declare dso_local i32 @atmel_hlcdc_layer_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
