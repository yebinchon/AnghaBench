; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_vpe_irq_domain_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_vpe_irq_domain_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.its_vm* }
%struct.its_vm = type { i32, i32, i32, i32 }
%struct.irq_data = type { i32 }
%struct.its_vpe = type { %struct.its_vm* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_domain*, i32, i32)* @its_vpe_irq_domain_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @its_vpe_irq_domain_free(%struct.irq_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.its_vm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.irq_data*, align 8
  %10 = alloca %struct.its_vpe*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %12 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %11, i32 0, i32 0
  %13 = load %struct.its_vm*, %struct.its_vm** %12, align 8
  store %struct.its_vm* %13, %struct.its_vm** %7, align 8
  %14 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @irq_domain_free_irqs_parent(%struct.irq_domain* %14, i32 %15, i32 %16)
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %48, %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %18
  %23 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %8, align 4
  %26 = add i32 %24, %25
  %27 = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* %23, i32 %26)
  store %struct.irq_data* %27, %struct.irq_data** %9, align 8
  %28 = load %struct.irq_data*, %struct.irq_data** %9, align 8
  %29 = call %struct.its_vpe* @irq_data_get_irq_chip_data(%struct.irq_data* %28)
  store %struct.its_vpe* %29, %struct.its_vpe** %10, align 8
  %30 = load %struct.its_vm*, %struct.its_vm** %7, align 8
  %31 = load %struct.its_vpe*, %struct.its_vpe** %10, align 8
  %32 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %31, i32 0, i32 0
  %33 = load %struct.its_vm*, %struct.its_vm** %32, align 8
  %34 = icmp ne %struct.its_vm* %30, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.irq_data*, %struct.irq_data** %9, align 8
  %38 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.its_vm*, %struct.its_vm** %7, align 8
  %41 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @clear_bit(i32 %39, i32 %42)
  %44 = load %struct.its_vpe*, %struct.its_vpe** %10, align 8
  %45 = call i32 @its_vpe_teardown(%struct.its_vpe* %44)
  %46 = load %struct.irq_data*, %struct.irq_data** %9, align 8
  %47 = call i32 @irq_domain_reset_irq_data(%struct.irq_data* %46)
  br label %48

48:                                               ; preds = %22
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %18

51:                                               ; preds = %18
  %52 = load %struct.its_vm*, %struct.its_vm** %7, align 8
  %53 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.its_vm*, %struct.its_vm** %7, align 8
  %56 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @bitmap_empty(i32 %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %51
  %61 = load %struct.its_vm*, %struct.its_vm** %7, align 8
  %62 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.its_vm*, %struct.its_vm** %7, align 8
  %65 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.its_vm*, %struct.its_vm** %7, align 8
  %68 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @its_lpi_free(i32 %63, i32 %66, i32 %69)
  %71 = load %struct.its_vm*, %struct.its_vm** %7, align 8
  %72 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @its_free_prop_table(i32 %73)
  br label %75

75:                                               ; preds = %60, %51
  ret void
}

declare dso_local i32 @irq_domain_free_irqs_parent(%struct.irq_domain*, i32, i32) #1

declare dso_local %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain*, i32) #1

declare dso_local %struct.its_vpe* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @its_vpe_teardown(%struct.its_vpe*) #1

declare dso_local i32 @irq_domain_reset_irq_data(%struct.irq_data*) #1

declare dso_local i64 @bitmap_empty(i32, i32) #1

declare dso_local i32 @its_lpi_free(i32, i32, i32) #1

declare dso_local i32 @its_free_prop_table(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
