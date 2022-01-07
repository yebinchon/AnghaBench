; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ti-sci-inta.c_ti_sci_inta_alloc_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ti-sci-inta.c_ti_sci_inta_alloc_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_inta_event_desc = type { i64, i64, i32 }
%struct.ti_sci_inta_vint_desc = type { i32, %struct.ti_sci_inta_event_desc*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.ti_sci_inta_irq_domain* }
%struct.ti_sci_inta_irq_domain = type { i32, %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_10__*, i64, i64, i32, i32, i64, i64)* }

@TI_SCI_RESOURCE_NULL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ti_sci_inta_event_desc* (%struct.ti_sci_inta_vint_desc*, i64, i32)* @ti_sci_inta_alloc_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ti_sci_inta_event_desc* @ti_sci_inta_alloc_event(%struct.ti_sci_inta_vint_desc* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ti_sci_inta_event_desc*, align 8
  %5 = alloca %struct.ti_sci_inta_vint_desc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ti_sci_inta_irq_domain*, align 8
  %9 = alloca %struct.ti_sci_inta_event_desc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ti_sci_inta_vint_desc* %0, %struct.ti_sci_inta_vint_desc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ti_sci_inta_vint_desc*, %struct.ti_sci_inta_vint_desc** %5, align 8
  %14 = getelementptr inbounds %struct.ti_sci_inta_vint_desc, %struct.ti_sci_inta_vint_desc* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %16, align 8
  store %struct.ti_sci_inta_irq_domain* %17, %struct.ti_sci_inta_irq_domain** %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @HWIRQ_TO_DEVID(i32 %18)
  store i64 %19, i64* %10, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @HWIRQ_TO_IRQID(i32 %20)
  store i64 %21, i64* %11, align 8
  %22 = load %struct.ti_sci_inta_vint_desc*, %struct.ti_sci_inta_vint_desc** %5, align 8
  %23 = getelementptr inbounds %struct.ti_sci_inta_vint_desc, %struct.ti_sci_inta_vint_desc* %22, i32 0, i32 1
  %24 = load %struct.ti_sci_inta_event_desc*, %struct.ti_sci_inta_event_desc** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.ti_sci_inta_event_desc, %struct.ti_sci_inta_event_desc* %24, i64 %25
  store %struct.ti_sci_inta_event_desc* %26, %struct.ti_sci_inta_event_desc** %9, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.ti_sci_inta_event_desc*, %struct.ti_sci_inta_event_desc** %9, align 8
  %29 = getelementptr inbounds %struct.ti_sci_inta_event_desc, %struct.ti_sci_inta_event_desc* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.ti_sci_inta_event_desc*, %struct.ti_sci_inta_event_desc** %9, align 8
  %32 = getelementptr inbounds %struct.ti_sci_inta_event_desc, %struct.ti_sci_inta_event_desc* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %8, align 8
  %34 = getelementptr inbounds %struct.ti_sci_inta_irq_domain, %struct.ti_sci_inta_irq_domain* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @ti_sci_get_free_resource(i32 %35)
  %37 = load %struct.ti_sci_inta_event_desc*, %struct.ti_sci_inta_event_desc** %9, align 8
  %38 = getelementptr inbounds %struct.ti_sci_inta_event_desc, %struct.ti_sci_inta_event_desc* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.ti_sci_inta_event_desc*, %struct.ti_sci_inta_event_desc** %9, align 8
  %40 = getelementptr inbounds %struct.ti_sci_inta_event_desc, %struct.ti_sci_inta_event_desc* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TI_SCI_RESOURCE_NULL, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %3
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  %47 = call %struct.ti_sci_inta_event_desc* @ERR_PTR(i32 %46)
  store %struct.ti_sci_inta_event_desc* %47, %struct.ti_sci_inta_event_desc** %4, align 8
  br label %89

48:                                               ; preds = %3
  %49 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %8, align 8
  %50 = getelementptr inbounds %struct.ti_sci_inta_irq_domain, %struct.ti_sci_inta_irq_domain* %49, i32 0, i32 2
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_10__*, i64, i64, i32, i32, i64, i64)*, i32 (%struct.TYPE_10__*, i64, i64, i32, i32, i64, i64)** %54, align 8
  %56 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %8, align 8
  %57 = getelementptr inbounds %struct.ti_sci_inta_irq_domain, %struct.ti_sci_inta_irq_domain* %56, i32 0, i32 2
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %8, align 8
  %62 = getelementptr inbounds %struct.ti_sci_inta_irq_domain, %struct.ti_sci_inta_irq_domain* %61, i32 0, i32 1
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ti_sci_inta_vint_desc*, %struct.ti_sci_inta_vint_desc** %5, align 8
  %67 = getelementptr inbounds %struct.ti_sci_inta_vint_desc, %struct.ti_sci_inta_vint_desc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ti_sci_inta_event_desc*, %struct.ti_sci_inta_event_desc** %9, align 8
  %70 = getelementptr inbounds %struct.ti_sci_inta_event_desc, %struct.ti_sci_inta_event_desc* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = call i32 %55(%struct.TYPE_10__* %58, i64 %59, i64 %60, i32 %65, i32 %68, i64 %71, i64 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %48
  br label %79

77:                                               ; preds = %48
  %78 = load %struct.ti_sci_inta_event_desc*, %struct.ti_sci_inta_event_desc** %9, align 8
  store %struct.ti_sci_inta_event_desc* %78, %struct.ti_sci_inta_event_desc** %4, align 8
  br label %89

79:                                               ; preds = %76
  %80 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %8, align 8
  %81 = getelementptr inbounds %struct.ti_sci_inta_irq_domain, %struct.ti_sci_inta_irq_domain* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.ti_sci_inta_event_desc*, %struct.ti_sci_inta_event_desc** %9, align 8
  %84 = getelementptr inbounds %struct.ti_sci_inta_event_desc, %struct.ti_sci_inta_event_desc* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @ti_sci_release_resource(i32 %82, i64 %85)
  %87 = load i32, i32* %12, align 4
  %88 = call %struct.ti_sci_inta_event_desc* @ERR_PTR(i32 %87)
  store %struct.ti_sci_inta_event_desc* %88, %struct.ti_sci_inta_event_desc** %4, align 8
  br label %89

89:                                               ; preds = %79, %77, %44
  %90 = load %struct.ti_sci_inta_event_desc*, %struct.ti_sci_inta_event_desc** %4, align 8
  ret %struct.ti_sci_inta_event_desc* %90
}

declare dso_local i64 @HWIRQ_TO_DEVID(i32) #1

declare dso_local i64 @HWIRQ_TO_IRQID(i32) #1

declare dso_local i64 @ti_sci_get_free_resource(i32) #1

declare dso_local %struct.ti_sci_inta_event_desc* @ERR_PTR(i32) #1

declare dso_local i32 @ti_sci_release_resource(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
