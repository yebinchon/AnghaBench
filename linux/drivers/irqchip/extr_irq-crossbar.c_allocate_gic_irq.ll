; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-crossbar.c_allocate_gic_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-crossbar.c_allocate_gic_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64*, i32 (i32, i64)*, i32 }
%struct.irq_domain = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.irq_fwspec = type { i32, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@cb = common dso_local global %struct.TYPE_4__* null, align 8
@IRQ_FREE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i64)* @allocate_gic_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_gic_irq(%struct.irq_domain* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.irq_fwspec, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %12 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = call i32 @irq_domain_get_of_node(%struct.TYPE_3__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %102

19:                                               ; preds = %3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cb, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = call i32 @raw_spin_lock(i32* %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cb, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %49, %19
  %28 = load i32, i32* %9, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %27
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cb, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IRQ_FREE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %30
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cb, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  store i64 %41, i64* %47, align 8
  br label %52

48:                                               ; preds = %30
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %9, align 4
  br label %27

52:                                               ; preds = %40, %27
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cb, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  %55 = call i32 @raw_spin_unlock(i32* %54)
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %102

61:                                               ; preds = %52
  %62 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %63 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %8, i32 0, i32 2
  store i32 %66, i32* %67, align 8
  %68 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %8, i32 0, i32 0
  store i32 3, i32* %68, align 8
  %69 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %8, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 0, i32* %71, align 4
  %72 = load i32, i32* %9, align 4
  %73 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %8, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %77 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %8, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  store i32 %76, i32* %79, align 4
  %80 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain* %80, i32 %81, i32 1, %struct.irq_fwspec* %8)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %61
  %86 = load i64, i64* @IRQ_FREE, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cb, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  store i64 %86, i64* %92, align 8
  br label %100

93:                                               ; preds = %61
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cb, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i32 (i32, i64)*, i32 (i32, i64)** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i64, i64* %7, align 8
  %99 = call i32 %96(i32 %97, i64 %98)
  br label %100

100:                                              ; preds = %93, %85
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %100, %58, %16
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @irq_domain_get_of_node(%struct.TYPE_3__*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain*, i32, i32, %struct.irq_fwspec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
