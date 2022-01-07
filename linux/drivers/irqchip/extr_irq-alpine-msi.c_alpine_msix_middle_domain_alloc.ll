; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-alpine-msi.c_alpine_msix_middle_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-alpine-msi.c_alpine_msix_middle_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.alpine_msix_data* }
%struct.alpine_msix_data = type { i32 }

@middle_irq_chip = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @alpine_msix_middle_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alpine_msix_middle_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.alpine_msix_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %15 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %14, i32 0, i32 0
  %16 = load %struct.alpine_msix_data*, %struct.alpine_msix_data** %15, align 8
  store %struct.alpine_msix_data* %16, %struct.alpine_msix_data** %10, align 8
  %17 = load %struct.alpine_msix_data*, %struct.alpine_msix_data** %10, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @alpine_msix_allocate_sgi(%struct.alpine_msix_data* %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %5, align 4
  br label %71

24:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %25

25:                                               ; preds = %51, %24
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %25
  %30 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %13, align 4
  %33 = add i32 %31, %32
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %13, align 4
  %36 = add nsw i32 %34, %35
  %37 = call i32 @alpine_msix_gic_domain_alloc(%struct.irq_domain* %30, i32 %33, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %55

41:                                               ; preds = %29
  %42 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %13, align 4
  %45 = add i32 %43, %44
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %46, %47
  %49 = load %struct.alpine_msix_data*, %struct.alpine_msix_data** %10, align 8
  %50 = call i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* %42, i32 %45, i32 %48, i32* @middle_irq_chip, %struct.alpine_msix_data* %49)
  br label %51

51:                                               ; preds = %41
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %13, align 4
  br label %25

54:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %71

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %60, %55
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %13, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @irq_domain_free_irqs_parent(%struct.irq_domain* %61, i32 %62, i32 %63)
  br label %56

65:                                               ; preds = %56
  %66 = load %struct.alpine_msix_data*, %struct.alpine_msix_data** %10, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @alpine_msix_free_sgi(%struct.alpine_msix_data* %66, i32 %67, i32 %68)
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %65, %54, %22
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @alpine_msix_allocate_sgi(%struct.alpine_msix_data*, i32) #1

declare dso_local i32 @alpine_msix_gic_domain_alloc(%struct.irq_domain*, i32, i32) #1

declare dso_local i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain*, i32, i32, i32*, %struct.alpine_msix_data*) #1

declare dso_local i32 @irq_domain_free_irqs_parent(%struct.irq_domain*, i32, i32) #1

declare dso_local i32 @alpine_msix_free_sgi(%struct.alpine_msix_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
