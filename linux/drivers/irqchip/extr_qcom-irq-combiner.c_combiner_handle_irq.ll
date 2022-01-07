; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_qcom-irq-combiner.c_combiner_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_qcom-irq-combiner.c_combiner_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.combiner = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.irq_chip = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Unexpected IRQ on CPU%d: (%08x %08lx %p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @combiner_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @combiner_handle_irq(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.combiner*, align 8
  %4 = alloca %struct.irq_chip*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %10 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %11 = call %struct.combiner* @irq_desc_get_handler_data(%struct.irq_desc* %10)
  store %struct.combiner* %11, %struct.combiner** %3, align 8
  %12 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %13 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %12)
  store %struct.irq_chip* %13, %struct.irq_chip** %4, align 8
  %14 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %15 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %16 = call i32 @chained_irq_enter(%struct.irq_chip* %14, %struct.irq_desc* %15)
  store i64 0, i64* %5, align 8
  br label %17

17:                                               ; preds = %93, %1
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.combiner*, %struct.combiner** %3, align 8
  %20 = getelementptr inbounds %struct.combiner, %struct.combiner* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %96

23:                                               ; preds = %17
  %24 = load %struct.combiner*, %struct.combiner** %3, align 8
  %25 = getelementptr inbounds %struct.combiner, %struct.combiner* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @readl_relaxed(i32 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.combiner*, %struct.combiner** %3, align 8
  %34 = getelementptr inbounds %struct.combiner, %struct.combiner* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = and i64 %32, %39
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %23
  %44 = load i64, i64* %9, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %64, label %46

46:                                               ; preds = %43
  %47 = call i32 (...) @smp_processor_id()
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.combiner*, %struct.combiner** %3, align 8
  %50 = getelementptr inbounds %struct.combiner, %struct.combiner* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.combiner*, %struct.combiner** %3, align 8
  %57 = getelementptr inbounds %struct.combiner, %struct.combiner* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i64, i64* %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %47, i64 %48, i64 %55, i32 %62)
  br label %64

64:                                               ; preds = %46, %43, %23
  br label %65

65:                                               ; preds = %91, %64
  %66 = load i64, i64* %9, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %92

68:                                               ; preds = %65
  %69 = load i64, i64* %9, align 8
  %70 = call i64 @__ffs(i64 %69)
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %8, align 8
  %72 = trunc i64 %71 to i32
  %73 = shl i32 1, %72
  %74 = xor i32 %73, -1
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %9, align 8
  %77 = and i64 %76, %75
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @irq_nr(i64 %78, i64 %79)
  store i32 %80, i32* %7, align 4
  %81 = load %struct.combiner*, %struct.combiner** %3, align 8
  %82 = getelementptr inbounds %struct.combiner, %struct.combiner* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @irq_find_mapping(i32 %83, i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %68
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @generic_handle_irq(i32 %89)
  br label %91

91:                                               ; preds = %88, %68
  br label %65

92:                                               ; preds = %65
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %5, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %5, align 8
  br label %17

96:                                               ; preds = %17
  %97 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %98 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %99 = call i32 @chained_irq_exit(%struct.irq_chip* %97, %struct.irq_desc* %98)
  ret void
}

declare dso_local %struct.combiner* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i32 @chained_irq_enter(%struct.irq_chip*, %struct.irq_desc*) #1

declare dso_local i64 @readl_relaxed(i32) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i32, i64, i64, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @__ffs(i64) #1

declare dso_local i32 @irq_nr(i64, i64) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @chained_irq_exit(%struct.irq_chip*, %struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
