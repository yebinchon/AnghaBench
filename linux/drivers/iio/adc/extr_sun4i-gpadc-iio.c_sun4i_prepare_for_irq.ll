; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_sun4i-gpadc-iio.c_sun4i_prepare_for_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_sun4i-gpadc-iio.c_sun4i_prepare_for_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sun4i_gpadc_iio = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 (i32)*, i32 }

@SUN4I_GPADC_INT_FIFOC = common dso_local global i32 0, align 4
@SUN4I_GPADC_INT_FIFOC_TP_FIFO_FLUSH = common dso_local global i32 0, align 4
@SUN4I_GPADC_CTRL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32)* @sun4i_prepare_for_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_prepare_for_irq(%struct.iio_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sun4i_gpadc_iio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = call %struct.sun4i_gpadc_iio* @iio_priv(%struct.iio_dev* %11)
  store %struct.sun4i_gpadc_iio* %12, %struct.sun4i_gpadc_iio** %8, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %14 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pm_runtime_get_sync(i32 %16)
  %18 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %8, align 8
  %19 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %18, i32 0, i32 3
  %20 = call i32 @reinit_completion(i32* %19)
  %21 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %8, align 8
  %22 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SUN4I_GPADC_INT_FIFOC, align 4
  %25 = call i32 @SUN4I_GPADC_INT_FIFOC_TP_FIFO_TRIG_LEVEL(i32 1)
  %26 = load i32, i32* @SUN4I_GPADC_INT_FIFOC_TP_FIFO_FLUSH, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @regmap_write(i32 %23, i32 %24, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %4, align 4
  br label %125

33:                                               ; preds = %3
  %34 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %8, align 8
  %35 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SUN4I_GPADC_CTRL1, align 4
  %38 = call i32 @regmap_read(i32 %36, i32 %37, i32* %10)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %125

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %8, align 8
  %46 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %92

49:                                               ; preds = %43
  %50 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %8, align 8
  %51 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SUN4I_GPADC_CTRL1, align 4
  %54 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %8, align 8
  %55 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %8, align 8
  %60 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %58, %63
  %65 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %8, align 8
  %66 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32 (i32)*, i32 (i32)** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 %69(i32 %70)
  %72 = or i32 %64, %71
  %73 = call i32 @regmap_write(i32 %52, i32 %53, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %8, align 8
  %76 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = and i32 %74, %79
  %81 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %8, align 8
  %82 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load i32 (i32)*, i32 (i32)** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 %85(i32 %86)
  %88 = icmp ne i32 %80, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %49
  %90 = call i32 @mdelay(i32 10)
  br label %91

91:                                               ; preds = %89, %49
  br label %103

92:                                               ; preds = %43
  %93 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %8, align 8
  %94 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @SUN4I_GPADC_CTRL1, align 4
  %97 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %8, align 8
  %98 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %97, i32 0, i32 1
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @regmap_write(i32 %95, i32 %96, i32 %101)
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %92, %91
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %4, align 4
  br label %125

108:                                              ; preds = %103
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %8, align 8
  %111 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %110, i32 0, i32 1
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %109, %114
  %116 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %8, align 8
  %117 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %116, i32 0, i32 1
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %115, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %108
  %123 = call i32 @mdelay(i32 100)
  br label %124

124:                                              ; preds = %122, %108
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %106, %41, %31
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local %struct.sun4i_gpadc_iio* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @SUN4I_GPADC_INT_FIFOC_TP_FIFO_TRIG_LEVEL(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
