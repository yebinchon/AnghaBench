; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ls-scfg-msi.c_ls_scfg_msi_domain_irq_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ls-scfg-msi.c_ls_scfg_msi_domain_irq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.ls_scfg_msi* }
%struct.ls_scfg_msi = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@ls_scfg_msi_parent_chip = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @ls_scfg_msi_domain_irq_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ls_scfg_msi_domain_irq_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca %struct.ls_scfg_msi*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %10, align 8
  %16 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %17 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %16, i32 0, i32 0
  %18 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %17, align 8
  store %struct.ls_scfg_msi* %18, %struct.ls_scfg_msi** %11, align 8
  store i32 0, i32* %13, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 1
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %11, align 8
  %24 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %23, i32 0, i32 2
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %11, align 8
  %27 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %11, align 8
  %30 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @find_first_zero_bit(i32 %28, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %11, align 8
  %35 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %4
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %11, align 8
  %41 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @__set_bit(i32 %39, i32 %42)
  br label %47

44:                                               ; preds = %4
  %45 = load i32, i32* @ENOSPC, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %44, %38
  %48 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %11, align 8
  %49 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %48, i32 0, i32 2
  %50 = call i32 @spin_unlock(i32* %49)
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %5, align 4
  br label %74

55:                                               ; preds = %47
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %11, align 8
  %60 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @iommu_dma_prepare_msi(i32 %58, i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %5, align 4
  br label %74

67:                                               ; preds = %55
  %68 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %11, align 8
  %72 = load i32, i32* @handle_simple_irq, align 4
  %73 = call i32 @irq_domain_set_info(%struct.irq_domain* %68, i32 %69, i32 %70, i32* @ls_scfg_msi_parent_chip, %struct.ls_scfg_msi* %71, i32 %72, i32* null, i32* null)
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %67, %65, %53
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @iommu_dma_prepare_msi(i32, i32) #1

declare dso_local i32 @irq_domain_set_info(%struct.irq_domain*, i32, i32, i32*, %struct.ls_scfg_msi*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
