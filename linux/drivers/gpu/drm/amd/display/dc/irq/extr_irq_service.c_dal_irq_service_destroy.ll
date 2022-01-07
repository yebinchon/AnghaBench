; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/irq/extr_irq_service.c_dal_irq_service_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/irq/extr_irq_service.c_dal_irq_service_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_service = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dal_irq_service_destroy(%struct.irq_service** %0) #0 {
  %2 = alloca %struct.irq_service**, align 8
  store %struct.irq_service** %0, %struct.irq_service*** %2, align 8
  %3 = load %struct.irq_service**, %struct.irq_service*** %2, align 8
  %4 = icmp ne %struct.irq_service** %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load %struct.irq_service**, %struct.irq_service*** %2, align 8
  %7 = load %struct.irq_service*, %struct.irq_service** %6, align 8
  %8 = icmp ne %struct.irq_service* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5, %1
  %10 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %16

11:                                               ; preds = %5
  %12 = load %struct.irq_service**, %struct.irq_service*** %2, align 8
  %13 = load %struct.irq_service*, %struct.irq_service** %12, align 8
  %14 = call i32 @kfree(%struct.irq_service* %13)
  %15 = load %struct.irq_service**, %struct.irq_service*** %2, align 8
  store %struct.irq_service* null, %struct.irq_service** %15, align 8
  br label %16

16:                                               ; preds = %11, %9
  ret void
}

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32 @kfree(%struct.irq_service*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
