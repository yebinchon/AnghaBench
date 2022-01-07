; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mips-gic.c_gic_irq_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mips-gic.c_gic_irq_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.irq_fwspec = type { i64* }

@GIC_SHARED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @gic_irq_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gic_irq_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.irq_fwspec*, align 8
  %10 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.irq_fwspec*
  store %struct.irq_fwspec* %12, %struct.irq_fwspec** %9, align 8
  %13 = load %struct.irq_fwspec*, %struct.irq_fwspec** %9, align 8
  %14 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @GIC_SHARED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load %struct.irq_fwspec*, %struct.irq_fwspec** %9, align 8
  %22 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @GIC_SHARED_TO_HWIRQ(i64 %25)
  store i32 %26, i32* %10, align 4
  br label %34

27:                                               ; preds = %4
  %28 = load %struct.irq_fwspec*, %struct.irq_fwspec** %9, align 8
  %29 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @GIC_LOCAL_TO_HWIRQ(i64 %32)
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %27, %20
  %35 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @gic_irq_domain_map(%struct.irq_domain* %35, i32 %36, i32 %37)
  ret i32 %38
}

declare dso_local i32 @GIC_SHARED_TO_HWIRQ(i64) #1

declare dso_local i32 @GIC_LOCAL_TO_HWIRQ(i64) #1

declare dso_local i32 @gic_irq_domain_map(%struct.irq_domain*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
