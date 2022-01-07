; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_core_irq.c_dpu_core_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_core_irq.c_dpu_core_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_kms = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*, i32, %struct.dpu_kms*)*, i32 (%struct.TYPE_5__*)* }

@dpu_core_irq_callback_handler = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpu_core_irq(%struct.dpu_kms* %0) #0 {
  %2 = alloca %struct.dpu_kms*, align 8
  store %struct.dpu_kms* %0, %struct.dpu_kms** %2, align 8
  %3 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %4 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %3, i32 0, i32 0
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %7, align 8
  %9 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %10 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = call i32 %8(%struct.TYPE_5__* %11)
  %13 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %14 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32 (%struct.TYPE_5__*, i32, %struct.dpu_kms*)*, i32 (%struct.TYPE_5__*, i32, %struct.dpu_kms*)** %17, align 8
  %19 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %20 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = load i32, i32* @dpu_core_irq_callback_handler, align 4
  %23 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %24 = call i32 %18(%struct.TYPE_5__* %21, i32 %22, %struct.dpu_kms* %23)
  %25 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
