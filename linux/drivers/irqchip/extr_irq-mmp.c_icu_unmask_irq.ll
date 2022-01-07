; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mmp.c_icu_unmask_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mmp.c_icu_unmask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icu_chip_data = type { i32, i32, i32, i64 }
%struct.irq_data = type { i32, %struct.irq_domain* }
%struct.irq_domain = type { i64 }

@icu_data = common dso_local global %struct.icu_chip_data* null, align 8
@mmp_icu_base = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @icu_unmask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icu_unmask_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.irq_domain*, align 8
  %4 = alloca %struct.icu_chip_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %7, i32 0, i32 1
  %9 = load %struct.irq_domain*, %struct.irq_domain** %8, align 8
  store %struct.irq_domain* %9, %struct.irq_domain** %3, align 8
  %10 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %11 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.icu_chip_data*
  store %struct.icu_chip_data* %13, %struct.icu_chip_data** %4, align 8
  %14 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %15 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.icu_chip_data*, %struct.icu_chip_data** %4, align 8
  %18 = getelementptr inbounds %struct.icu_chip_data, %struct.icu_chip_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %16, %19
  store i32 %20, i32* %5, align 4
  %21 = load %struct.icu_chip_data*, %struct.icu_chip_data** %4, align 8
  %22 = load %struct.icu_chip_data*, %struct.icu_chip_data** @icu_data, align 8
  %23 = getelementptr inbounds %struct.icu_chip_data, %struct.icu_chip_data* %22, i64 0
  %24 = icmp eq %struct.icu_chip_data* %21, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %1
  %26 = load i64, i64* @mmp_icu_base, align 8
  %27 = load i32, i32* %5, align 4
  %28 = shl i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %26, %29
  %31 = call i32 @readl_relaxed(i64 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.icu_chip_data*, %struct.icu_chip_data** %4, align 8
  %33 = getelementptr inbounds %struct.icu_chip_data, %struct.icu_chip_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load %struct.icu_chip_data*, %struct.icu_chip_data** %4, align 8
  %39 = getelementptr inbounds %struct.icu_chip_data, %struct.icu_chip_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i64, i64* @mmp_icu_base, align 8
  %45 = load i32, i32* %5, align 4
  %46 = shl i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %44, %47
  %49 = call i32 @writel_relaxed(i32 %43, i64 %48)
  br label %64

50:                                               ; preds = %1
  %51 = load %struct.icu_chip_data*, %struct.icu_chip_data** %4, align 8
  %52 = getelementptr inbounds %struct.icu_chip_data, %struct.icu_chip_data* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @readl_relaxed(i64 %53)
  %55 = load i32, i32* %5, align 4
  %56 = shl i32 1, %55
  %57 = xor i32 %56, -1
  %58 = and i32 %54, %57
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.icu_chip_data*, %struct.icu_chip_data** %4, align 8
  %61 = getelementptr inbounds %struct.icu_chip_data, %struct.icu_chip_data* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @writel_relaxed(i32 %59, i64 %62)
  br label %64

64:                                               ; preds = %50, %25
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
