; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-crossbar.c_crossbar_domain_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-crossbar.c_crossbar_domain_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 (i64, i32)*, i32* }
%struct.irq_domain = type { i32 }
%struct.irq_data = type { i64 }

@cb = common dso_local global %struct.TYPE_2__* null, align 8
@IRQ_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_domain*, i32, i32)* @crossbar_domain_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crossbar_domain_free(%struct.irq_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.irq_data*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cb, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @raw_spin_lock(i32* %10)
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %42, %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %12
  %17 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add i32 %18, %19
  %21 = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* %17, i32 %20)
  store %struct.irq_data* %21, %struct.irq_data** %8, align 8
  %22 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %23 = call i32 @irq_domain_reset_irq_data(%struct.irq_data* %22)
  %24 = load i32, i32* @IRQ_FREE, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cb, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %29 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  store i32 %24, i32* %31, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cb, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32 (i64, i32)*, i32 (i64, i32)** %33, align 8
  %35 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %36 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cb, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 %34(i64 %37, i32 %40)
  br label %42

42:                                               ; preds = %16
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %12

45:                                               ; preds = %12
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cb, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @raw_spin_unlock(i32* %47)
  ret void
}

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain*, i32) #1

declare dso_local i32 @irq_domain_reset_irq_data(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
