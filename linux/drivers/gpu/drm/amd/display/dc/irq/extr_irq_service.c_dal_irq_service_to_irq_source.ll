; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/irq/extr_irq_service.c_dal_irq_service_to_irq_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/irq/extr_irq_service.c_dal_irq_service_to_irq_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_service = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.irq_service*, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dal_irq_service_to_irq_source(%struct.irq_service* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.irq_service*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_service* %0, %struct.irq_service** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.irq_service*, %struct.irq_service** %4, align 8
  %8 = getelementptr inbounds %struct.irq_service, %struct.irq_service* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.irq_service*, i32, i32)*, i32 (%struct.irq_service*, i32, i32)** %10, align 8
  %12 = load %struct.irq_service*, %struct.irq_service** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 %11(%struct.irq_service* %12, i32 %13, i32 %14)
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
