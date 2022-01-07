; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-odmi.c_odmi_irq_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-odmi.c_odmi_irq_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odmi_data = type { i32 }
%struct.irq_domain = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.irq_fwspec = type { i32, i32*, i32 }
%struct.irq_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.irq_data*, i32)* }

@odmis_bm_lock = common dso_local global i32 0, align 4
@odmis_bm = common dso_local global i32 0, align 4
@NODMIS_PER_FRAME = common dso_local global i32 0, align 4
@odmis_count = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@odmis = common dso_local global %struct.odmi_data* null, align 8
@NODMIS_SHIFT = common dso_local global i32 0, align 4
@NODMIS_MASK = common dso_local global i32 0, align 4
@GIC_SPI = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Cannot allocate parent IRQ\0A\00", align 1
@odmi_irq_chip = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @odmi_irq_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @odmi_irq_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.odmi_data*, align 8
  %11 = alloca %struct.irq_fwspec, align 8
  %12 = alloca %struct.irq_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store %struct.odmi_data* null, %struct.odmi_data** %10, align 8
  %16 = call i32 @spin_lock(i32* @odmis_bm_lock)
  %17 = load i32, i32* @odmis_bm, align 4
  %18 = load i32, i32* @NODMIS_PER_FRAME, align 4
  %19 = load i32, i32* @odmis_count, align 4
  %20 = mul i32 %18, %19
  %21 = call i32 @find_first_zero_bit(i32 %17, i32 %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* @NODMIS_PER_FRAME, align 4
  %24 = load i32, i32* @odmis_count, align 4
  %25 = mul i32 %23, %24
  %26 = icmp uge i32 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = call i32 @spin_unlock(i32* @odmis_bm_lock)
  %29 = load i32, i32* @ENOSPC, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %100

31:                                               ; preds = %4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @odmis_bm, align 4
  %34 = call i32 @__set_bit(i32 %32, i32 %33)
  %35 = call i32 @spin_unlock(i32* @odmis_bm_lock)
  %36 = load %struct.odmi_data*, %struct.odmi_data** @odmis, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @NODMIS_SHIFT, align 4
  %39 = lshr i32 %37, %38
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.odmi_data, %struct.odmi_data* %36, i64 %40
  store %struct.odmi_data* %41, %struct.odmi_data** %10, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @NODMIS_MASK, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %14, align 4
  %45 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %46 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 2
  store i32 %49, i32* %50, align 8
  %51 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 0
  store i32 3, i32* %51, align 8
  %52 = load i32, i32* @GIC_SPI, align 4
  %53 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %52, i32* %55, align 4
  %56 = load %struct.odmi_data*, %struct.odmi_data** %10, align 8
  %57 = getelementptr inbounds %struct.odmi_data, %struct.odmi_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 32
  %60 = load i32, i32* %14, align 4
  %61 = add i32 %59, %60
  %62 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %66 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  store i32 %65, i32* %68, align 4
  %69 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain* %69, i32 %70, i32 1, %struct.irq_fwspec* %11)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %31
  %75 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %76 = call i32 @spin_lock(i32* @odmis_bm_lock)
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* @odmis_bm, align 4
  %79 = call i32 @__clear_bit(i32 %77, i32 %78)
  %80 = call i32 @spin_unlock(i32* @odmis_bm_lock)
  %81 = load i32, i32* %15, align 4
  store i32 %81, i32* %5, align 4
  br label %100

82:                                               ; preds = %31
  %83 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %84 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call %struct.irq_data* @irq_domain_get_irq_data(%struct.TYPE_4__* %85, i32 %86)
  store %struct.irq_data* %87, %struct.irq_data** %12, align 8
  %88 = load %struct.irq_data*, %struct.irq_data** %12, align 8
  %89 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)** %91, align 8
  %93 = load %struct.irq_data*, %struct.irq_data** %12, align 8
  %94 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %95 = call i32 %92(%struct.irq_data* %93, i32 %94)
  %96 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* %96, i32 %97, i32 %98, i32* @odmi_irq_chip, i32* null)
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %82, %74, %27
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain*, i32, i32, %struct.irq_fwspec*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local %struct.irq_data* @irq_domain_get_irq_data(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
