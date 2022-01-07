; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-bcm7038-l1.c_bcm7038_l1_set_affinity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-bcm7038-l1.c_bcm7038_l1_set_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }
%struct.cpumask = type { i32 }
%struct.bcm7038_l1_chip = type { i64*, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64* }

@IRQS_PER_WORD = common dso_local global i64 0, align 8
@cpu_online_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, %struct.cpumask*, i32)* @bcm7038_l1_set_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm7038_l1_set_affinity(%struct.irq_data* %0, %struct.cpumask* %1, i32 %2) #0 {
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca %struct.cpumask*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bcm7038_l1_chip*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store %struct.cpumask* %1, %struct.cpumask** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %15 = call %struct.bcm7038_l1_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %14)
  store %struct.bcm7038_l1_chip* %15, %struct.bcm7038_l1_chip** %7, align 8
  %16 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %17 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @IRQS_PER_WORD, align 8
  %21 = udiv i64 %19, %20
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @IRQS_PER_WORD, align 8
  %24 = urem i64 %22, %23
  %25 = call i64 @BIT(i64 %24)
  store i64 %25, i64* %11, align 8
  %26 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %27 = load i32, i32* @cpu_online_mask, align 4
  %28 = call i32 @cpumask_any_and(%struct.cpumask* %26, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.bcm7038_l1_chip*, %struct.bcm7038_l1_chip** %7, align 8
  %30 = getelementptr inbounds %struct.bcm7038_l1_chip, %struct.bcm7038_l1_chip* %29, i32 0, i32 1
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @raw_spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.bcm7038_l1_chip*, %struct.bcm7038_l1_chip** %7, align 8
  %34 = getelementptr inbounds %struct.bcm7038_l1_chip, %struct.bcm7038_l1_chip* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %34, align 8
  %36 = load %struct.bcm7038_l1_chip*, %struct.bcm7038_l1_chip** %7, align 8
  %37 = getelementptr inbounds %struct.bcm7038_l1_chip, %struct.bcm7038_l1_chip* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %35, i64 %41
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %11, align 8
  %50 = and i64 %48, %49
  %51 = icmp ne i64 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %13, align 4
  %55 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %56 = load %struct.bcm7038_l1_chip*, %struct.bcm7038_l1_chip** %7, align 8
  %57 = getelementptr inbounds %struct.bcm7038_l1_chip, %struct.bcm7038_l1_chip* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @__bcm7038_l1_mask(%struct.irq_data* %55, i64 %61)
  %63 = load i32, i32* %12, align 4
  %64 = zext i32 %63 to i64
  %65 = load %struct.bcm7038_l1_chip*, %struct.bcm7038_l1_chip** %7, align 8
  %66 = getelementptr inbounds %struct.bcm7038_l1_chip, %struct.bcm7038_l1_chip* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  store i64 %64, i64* %69, align 8
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %3
  %73 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @__bcm7038_l1_unmask(%struct.irq_data* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %3
  %77 = load %struct.bcm7038_l1_chip*, %struct.bcm7038_l1_chip** %7, align 8
  %78 = getelementptr inbounds %struct.bcm7038_l1_chip, %struct.bcm7038_l1_chip* %77, i32 0, i32 1
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @raw_spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @cpumask_of(i32 %82)
  %84 = call i32 @irq_data_update_effective_affinity(%struct.irq_data* %81, i32 %83)
  ret i32 0
}

declare dso_local %struct.bcm7038_l1_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i64 @BIT(i64) #1

declare dso_local i32 @cpumask_any_and(%struct.cpumask*, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__bcm7038_l1_mask(%struct.irq_data*, i64) #1

declare dso_local i32 @__bcm7038_l1_unmask(%struct.irq_data*, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @irq_data_update_effective_affinity(%struct.irq_data*, i32) #1

declare dso_local i32 @cpumask_of(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
