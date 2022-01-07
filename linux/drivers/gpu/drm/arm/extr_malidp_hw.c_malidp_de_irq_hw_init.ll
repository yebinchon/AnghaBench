; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp_de_irq_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp_de_irq_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malidp_hw_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@MALIDP_DE_BLOCK = common dso_local global i32 0, align 4
@MALIDP_DC_BLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @malidp_de_irq_hw_init(%struct.malidp_hw_device* %0) #0 {
  %2 = alloca %struct.malidp_hw_device*, align 8
  store %struct.malidp_hw_device* %0, %struct.malidp_hw_device** %2, align 8
  %3 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %2, align 8
  %4 = load i32, i32* @MALIDP_DE_BLOCK, align 4
  %5 = call i32 @malidp_hw_disable_irq(%struct.malidp_hw_device* %3, i32 %4, i32 -1)
  %6 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %2, align 8
  %7 = load i32, i32* @MALIDP_DE_BLOCK, align 4
  %8 = call i32 @malidp_hw_clear_irq(%struct.malidp_hw_device* %6, i32 %7, i32 -1)
  %9 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %2, align 8
  %10 = load i32, i32* @MALIDP_DC_BLOCK, align 4
  %11 = call i32 @malidp_hw_disable_irq(%struct.malidp_hw_device* %9, i32 %10, i32 -1)
  %12 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %2, align 8
  %13 = load i32, i32* @MALIDP_DC_BLOCK, align 4
  %14 = call i32 @malidp_hw_clear_irq(%struct.malidp_hw_device* %12, i32 %13, i32 -1)
  %15 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %2, align 8
  %16 = load i32, i32* @MALIDP_DC_BLOCK, align 4
  %17 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %2, align 8
  %18 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @malidp_hw_enable_irq(%struct.malidp_hw_device* %15, i32 %16, i32 %23)
  %25 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %2, align 8
  %26 = load i32, i32* @MALIDP_DE_BLOCK, align 4
  %27 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %2, align 8
  %28 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @malidp_hw_enable_irq(%struct.malidp_hw_device* %25, i32 %26, i32 %33)
  ret void
}

declare dso_local i32 @malidp_hw_disable_irq(%struct.malidp_hw_device*, i32, i32) #1

declare dso_local i32 @malidp_hw_clear_irq(%struct.malidp_hw_device*, i32, i32) #1

declare dso_local i32 @malidp_hw_enable_irq(%struct.malidp_hw_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
