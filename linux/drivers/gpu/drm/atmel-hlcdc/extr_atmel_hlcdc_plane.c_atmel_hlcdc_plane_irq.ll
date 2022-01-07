; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_plane.c_atmel_hlcdc_plane_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_plane.c_atmel_hlcdc_plane_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_hlcdc_plane = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.atmel_hlcdc_layer_desc* }
%struct.atmel_hlcdc_layer_desc = type { i32 }

@ATMEL_HLCDC_LAYER_ISR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"overrun on plane %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atmel_hlcdc_plane_irq(%struct.atmel_hlcdc_plane* %0) #0 {
  %2 = alloca %struct.atmel_hlcdc_plane*, align 8
  %3 = alloca %struct.atmel_hlcdc_layer_desc*, align 8
  %4 = alloca i32, align 4
  store %struct.atmel_hlcdc_plane* %0, %struct.atmel_hlcdc_plane** %2, align 8
  %5 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %2, align 8
  %6 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %7, align 8
  store %struct.atmel_hlcdc_layer_desc* %8, %struct.atmel_hlcdc_layer_desc** %3, align 8
  %9 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %2, align 8
  %10 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %9, i32 0, i32 1
  %11 = load i32, i32* @ATMEL_HLCDC_LAYER_ISR, align 4
  %12 = call i32 @atmel_hlcdc_layer_read_reg(%struct.TYPE_6__* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @ATMEL_HLCDC_LAYER_OVR_IRQ(i32 0)
  %15 = call i32 @ATMEL_HLCDC_LAYER_OVR_IRQ(i32 1)
  %16 = or i32 %14, %15
  %17 = call i32 @ATMEL_HLCDC_LAYER_OVR_IRQ(i32 2)
  %18 = or i32 %16, %17
  %19 = and i32 %13, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %1
  %22 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %2, align 8
  %23 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %3, align 8
  %29 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, %struct.atmel_hlcdc_layer_desc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %21, %1
  ret void
}

declare dso_local i32 @atmel_hlcdc_layer_read_reg(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ATMEL_HLCDC_LAYER_OVR_IRQ(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
