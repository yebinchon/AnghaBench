; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_dc.h_atmel_hlcdc_layer_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_dc.h_atmel_hlcdc_layer_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_hlcdc_layer = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_hlcdc_layer*, i32, i32)* @atmel_hlcdc_layer_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_hlcdc_layer_write_reg(%struct.atmel_hlcdc_layer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.atmel_hlcdc_layer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atmel_hlcdc_layer* %0, %struct.atmel_hlcdc_layer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.atmel_hlcdc_layer*, %struct.atmel_hlcdc_layer** %4, align 8
  %8 = getelementptr inbounds %struct.atmel_hlcdc_layer, %struct.atmel_hlcdc_layer* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.atmel_hlcdc_layer*, %struct.atmel_hlcdc_layer** %4, align 8
  %11 = getelementptr inbounds %struct.atmel_hlcdc_layer, %struct.atmel_hlcdc_layer* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @regmap_write(i32 %9, i64 %17, i32 %18)
  ret void
}

declare dso_local i32 @regmap_write(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
