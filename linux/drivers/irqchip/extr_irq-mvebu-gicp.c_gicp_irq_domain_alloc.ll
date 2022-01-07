; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-gicp.c_gicp_irq_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-gicp.c_gicp_irq_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.TYPE_2__*, %struct.mvebu_gicp* }
%struct.TYPE_2__ = type { i32 }
%struct.mvebu_gicp = type { i32, i32, i32, i32 }
%struct.irq_fwspec = type { i32, i64*, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@GIC_SPI = common dso_local global i64 0, align 8
@IRQ_TYPE_EDGE_RISING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Cannot allocate parent IRQ\0A\00", align 1
@gicp_irq_chip = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @gicp_irq_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gicp_irq_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mvebu_gicp*, align 8
  %11 = alloca %struct.irq_fwspec, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %15 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %14, i32 0, i32 1
  %16 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %15, align 8
  store %struct.mvebu_gicp* %16, %struct.mvebu_gicp** %10, align 8
  %17 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %10, align 8
  %18 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %17, i32 0, i32 1
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %10, align 8
  %21 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %10, align 8
  %24 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @find_first_zero_bit(i32 %22, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %10, align 8
  %29 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %4
  %33 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %10, align 8
  %34 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %33, i32 0, i32 1
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load i32, i32* @ENOSPC, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %107

38:                                               ; preds = %4
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %10, align 8
  %41 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @__set_bit(i32 %39, i32 %42)
  %44 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %10, align 8
  %45 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %44, i32 0, i32 1
  %46 = call i32 @spin_unlock(i32* %45)
  %47 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %48 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 2
  store i32 %51, i32* %52, align 8
  %53 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 0
  store i32 3, i32* %53, align 8
  %54 = load i64, i64* @GIC_SPI, align 8
  %55 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  store i64 %54, i64* %57, align 8
  %58 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %10, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i64 @gicp_idx_to_spi(%struct.mvebu_gicp* %58, i32 %59)
  %61 = sub nsw i64 %60, 32
  %62 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  store i64 %61, i64* %64, align 8
  %65 = load i64, i64* @IRQ_TYPE_EDGE_RISING, align 8
  %66 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 2
  store i64 %65, i64* %68, align 8
  %69 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain* %69, i32 %70, i32 1, %struct.irq_fwspec* %11)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %38
  %75 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %10, align 8
  %76 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %94

79:                                               ; preds = %38
  %80 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %10, align 8
  %84 = call i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* %80, i32 %81, i32 %82, i32* @gicp_irq_chip, %struct.mvebu_gicp* %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %89

88:                                               ; preds = %79
  store i32 0, i32* %5, align 4
  br label %107

89:                                               ; preds = %87
  %90 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @irq_domain_free_irqs_parent(%struct.irq_domain* %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %74
  %95 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %10, align 8
  %96 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %95, i32 0, i32 1
  %97 = call i32 @spin_lock(i32* %96)
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %10, align 8
  %100 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @__clear_bit(i32 %98, i32 %101)
  %103 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %10, align 8
  %104 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %103, i32 0, i32 1
  %105 = call i32 @spin_unlock(i32* %104)
  %106 = load i32, i32* %13, align 4
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %94, %88, %32
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i64 @gicp_idx_to_spi(%struct.mvebu_gicp*, i32) #1

declare dso_local i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain*, i32, i32, %struct.irq_fwspec*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain*, i32, i32, i32*, %struct.mvebu_gicp*) #1

declare dso_local i32 @irq_domain_free_irqs_parent(%struct.irq_domain*, i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
