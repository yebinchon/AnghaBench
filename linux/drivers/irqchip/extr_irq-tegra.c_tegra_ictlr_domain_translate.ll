; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-tegra.c_tegra_ictlr_domain_translate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-tegra.c_tegra_ictlr_domain_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.irq_fwspec = type { i32, i64*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* @tegra_ictlr_domain_translate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_ictlr_domain_translate(%struct.irq_domain* %0, %struct.irq_fwspec* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca %struct.irq_fwspec*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store %struct.irq_fwspec* %1, %struct.irq_fwspec** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %11 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @is_of_node(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %4
  %16 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %17 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 3
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %53

23:                                               ; preds = %15
  %24 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %25 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %53

33:                                               ; preds = %23
  %34 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %35 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %8, align 8
  store i64 %38, i64* %39, align 8
  %40 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %41 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 2
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %46 = zext i32 %45 to i64
  %47 = and i64 %44, %46
  %48 = trunc i64 %47 to i32
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  store i32 0, i32* %5, align 4
  br label %53

50:                                               ; preds = %4
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %50, %33, %30, %20
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i64 @is_of_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
