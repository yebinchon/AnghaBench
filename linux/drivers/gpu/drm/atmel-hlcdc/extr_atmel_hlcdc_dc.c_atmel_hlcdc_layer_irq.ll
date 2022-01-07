; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_dc.c_atmel_hlcdc_layer_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_dc.c_atmel_hlcdc_layer_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_hlcdc_layer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ATMEL_HLCDC_BASE_LAYER = common dso_local global i64 0, align 8
@ATMEL_HLCDC_OVERLAY_LAYER = common dso_local global i64 0, align 8
@ATMEL_HLCDC_CURSOR_LAYER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_hlcdc_layer*)* @atmel_hlcdc_layer_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_hlcdc_layer_irq(%struct.atmel_hlcdc_layer* %0) #0 {
  %2 = alloca %struct.atmel_hlcdc_layer*, align 8
  store %struct.atmel_hlcdc_layer* %0, %struct.atmel_hlcdc_layer** %2, align 8
  %3 = load %struct.atmel_hlcdc_layer*, %struct.atmel_hlcdc_layer** %2, align 8
  %4 = icmp ne %struct.atmel_hlcdc_layer* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %34

6:                                                ; preds = %1
  %7 = load %struct.atmel_hlcdc_layer*, %struct.atmel_hlcdc_layer** %2, align 8
  %8 = getelementptr inbounds %struct.atmel_hlcdc_layer, %struct.atmel_hlcdc_layer* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ATMEL_HLCDC_BASE_LAYER, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %30, label %14

14:                                               ; preds = %6
  %15 = load %struct.atmel_hlcdc_layer*, %struct.atmel_hlcdc_layer** %2, align 8
  %16 = getelementptr inbounds %struct.atmel_hlcdc_layer, %struct.atmel_hlcdc_layer* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ATMEL_HLCDC_OVERLAY_LAYER, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %14
  %23 = load %struct.atmel_hlcdc_layer*, %struct.atmel_hlcdc_layer** %2, align 8
  %24 = getelementptr inbounds %struct.atmel_hlcdc_layer, %struct.atmel_hlcdc_layer* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ATMEL_HLCDC_CURSOR_LAYER, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %22, %14, %6
  %31 = load %struct.atmel_hlcdc_layer*, %struct.atmel_hlcdc_layer** %2, align 8
  %32 = call i32 @atmel_hlcdc_layer_to_plane(%struct.atmel_hlcdc_layer* %31)
  %33 = call i32 @atmel_hlcdc_plane_irq(i32 %32)
  br label %34

34:                                               ; preds = %5, %30, %22
  ret void
}

declare dso_local i32 @atmel_hlcdc_plane_irq(i32) #1

declare dso_local i32 @atmel_hlcdc_layer_to_plane(%struct.atmel_hlcdc_layer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
