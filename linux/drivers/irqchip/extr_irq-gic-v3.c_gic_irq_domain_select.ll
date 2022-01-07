; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3.c_gic_irq_domain_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3.c_gic_irq_domain_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.irq_domain*, i32* }
%struct.irq_domain = type { i64 }
%struct.irq_fwspec = type { i64, i32, i32* }

@gic_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)* @gic_irq_domain_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gic_irq_domain_select(%struct.irq_domain* %0, %struct.irq_fwspec* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca %struct.irq_fwspec*, align 8
  %7 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store %struct.irq_fwspec* %1, %struct.irq_fwspec** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.irq_fwspec*, %struct.irq_fwspec** %6, align 8
  %9 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %12 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %64

16:                                               ; preds = %3
  %17 = load %struct.irq_fwspec*, %struct.irq_fwspec** %6, align 8
  %18 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @is_of_node(i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %64

23:                                               ; preds = %16
  %24 = load %struct.irq_fwspec*, %struct.irq_fwspec** %6, align 8
  %25 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp sge i32 %26, 4
  br i1 %27, label %28, label %59

28:                                               ; preds = %23
  %29 = load %struct.irq_fwspec*, %struct.irq_fwspec** %6, align 8
  %30 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %59

35:                                               ; preds = %28
  %36 = load %struct.irq_fwspec*, %struct.irq_fwspec** %6, align 8
  %37 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %35
  %43 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gic_data, i32 0, i32 1), align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %47 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gic_data, i32 0, i32 1), align 8
  %48 = load %struct.irq_fwspec*, %struct.irq_fwspec** %6, align 8
  %49 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %47, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.irq_domain* @partition_get_domain(i32 %55)
  %57 = icmp eq %struct.irq_domain* %46, %56
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %4, align 4
  br label %64

59:                                               ; preds = %42, %35, %28, %23
  %60 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %61 = load %struct.irq_domain*, %struct.irq_domain** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gic_data, i32 0, i32 0), align 8
  %62 = icmp eq %struct.irq_domain* %60, %61
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %59, %45, %22, %15
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @is_of_node(i64) #1

declare dso_local %struct.irq_domain* @partition_get_domain(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
