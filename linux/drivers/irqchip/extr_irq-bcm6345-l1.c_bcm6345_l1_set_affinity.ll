; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-bcm6345-l1.c_bcm6345_l1_set_affinity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-bcm6345-l1.c_bcm6345_l1_set_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }
%struct.cpumask = type { i32 }
%struct.bcm6345_l1_chip = type { i32, %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i64* }

@IRQS_PER_WORD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@IRQ_SET_MASK_OK_NOCOPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, %struct.cpumask*, i32)* @bcm6345_l1_set_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm6345_l1_set_affinity(%struct.irq_data* %0, %struct.cpumask* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_data*, align 8
  %6 = alloca %struct.cpumask*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bcm6345_l1_chip*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cpumask, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %5, align 8
  store %struct.cpumask* %1, %struct.cpumask** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %17 = call %struct.bcm6345_l1_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %16)
  store %struct.bcm6345_l1_chip* %17, %struct.bcm6345_l1_chip** %8, align 8
  %18 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %19 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IRQS_PER_WORD, align 8
  %22 = udiv i64 %20, %21
  store i64 %22, i64* %9, align 8
  %23 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %24 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IRQS_PER_WORD, align 8
  %27 = urem i64 %25, %26
  %28 = call i64 @BIT(i64 %27)
  store i64 %28, i64* %10, align 8
  %29 = load %struct.bcm6345_l1_chip*, %struct.bcm6345_l1_chip** %8, align 8
  %30 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %31 = call i32 @cpu_for_irq(%struct.bcm6345_l1_chip* %29, %struct.irq_data* %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.bcm6345_l1_chip*, %struct.bcm6345_l1_chip** %8, align 8
  %33 = getelementptr inbounds %struct.bcm6345_l1_chip, %struct.bcm6345_l1_chip* %32, i32 0, i32 2
  %34 = load %struct.cpumask*, %struct.cpumask** %6, align 8
  %35 = call i32 @cpumask_and(%struct.cpumask* %13, i32* %33, %struct.cpumask* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %3
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %106

40:                                               ; preds = %3
  %41 = load i32, i32* @cpu_online_mask, align 4
  %42 = call i32 @cpumask_any_and(%struct.cpumask* %13, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @nr_cpu_ids, align 4
  %45 = icmp uge i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %106

49:                                               ; preds = %40
  %50 = load i32, i32* %12, align 4
  %51 = call %struct.cpumask* @cpumask_of(i32 %50)
  store %struct.cpumask* %51, %struct.cpumask** %6, align 8
  %52 = load %struct.bcm6345_l1_chip*, %struct.bcm6345_l1_chip** %8, align 8
  %53 = getelementptr inbounds %struct.bcm6345_l1_chip, %struct.bcm6345_l1_chip* %52, i32 0, i32 0
  %54 = load i64, i64* %14, align 8
  %55 = call i32 @raw_spin_lock_irqsave(i32* %53, i64 %54)
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %91

59:                                               ; preds = %49
  %60 = load %struct.bcm6345_l1_chip*, %struct.bcm6345_l1_chip** %8, align 8
  %61 = getelementptr inbounds %struct.bcm6345_l1_chip, %struct.bcm6345_l1_chip* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %62, i64 %64
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %10, align 8
  %73 = and i64 %71, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %59
  %78 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %79 = call i32 @__bcm6345_l1_mask(%struct.irq_data* %78)
  br label %80

80:                                               ; preds = %77, %59
  %81 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %82 = call i32 @irq_data_get_affinity_mask(%struct.irq_data* %81)
  %83 = load %struct.cpumask*, %struct.cpumask** %6, align 8
  %84 = call i32 @cpumask_copy(i32 %82, %struct.cpumask* %83)
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %89 = call i32 @__bcm6345_l1_unmask(%struct.irq_data* %88)
  br label %90

90:                                               ; preds = %87, %80
  br label %96

91:                                               ; preds = %49
  %92 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %93 = call i32 @irq_data_get_affinity_mask(%struct.irq_data* %92)
  %94 = load %struct.cpumask*, %struct.cpumask** %6, align 8
  %95 = call i32 @cpumask_copy(i32 %93, %struct.cpumask* %94)
  br label %96

96:                                               ; preds = %91, %90
  %97 = load %struct.bcm6345_l1_chip*, %struct.bcm6345_l1_chip** %8, align 8
  %98 = getelementptr inbounds %struct.bcm6345_l1_chip, %struct.bcm6345_l1_chip* %97, i32 0, i32 0
  %99 = load i64, i64* %14, align 8
  %100 = call i32 @raw_spin_unlock_irqrestore(i32* %98, i64 %99)
  %101 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %102 = load i32, i32* %12, align 4
  %103 = call %struct.cpumask* @cpumask_of(i32 %102)
  %104 = call i32 @irq_data_update_effective_affinity(%struct.irq_data* %101, %struct.cpumask* %103)
  %105 = load i32, i32* @IRQ_SET_MASK_OK_NOCOPY, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %96, %46, %37
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local %struct.bcm6345_l1_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i64 @BIT(i64) #1

declare dso_local i32 @cpu_for_irq(%struct.bcm6345_l1_chip*, %struct.irq_data*) #1

declare dso_local i32 @cpumask_and(%struct.cpumask*, i32*, %struct.cpumask*) #1

declare dso_local i32 @cpumask_any_and(%struct.cpumask*, i32) #1

declare dso_local %struct.cpumask* @cpumask_of(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__bcm6345_l1_mask(%struct.irq_data*) #1

declare dso_local i32 @cpumask_copy(i32, %struct.cpumask*) #1

declare dso_local i32 @irq_data_get_affinity_mask(%struct.irq_data*) #1

declare dso_local i32 @__bcm6345_l1_unmask(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @irq_data_update_effective_affinity(%struct.irq_data*, %struct.cpumask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
