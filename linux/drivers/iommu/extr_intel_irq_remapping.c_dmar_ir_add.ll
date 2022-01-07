; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_dmar_ir_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_dmar_ir_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_drhd_unit = type { i32 }
%struct.intel_iommu = type { i32, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"DRHD %Lx: EIM not supported by DRHD, ecap %Lx\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"DRHD %Lx: failed to parse managed IOAPIC/HPET\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to setup irq remapping for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmar_drhd_unit*, %struct.intel_iommu*)* @dmar_ir_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_ir_add(%struct.dmar_drhd_unit* %0, %struct.intel_iommu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmar_drhd_unit*, align 8
  %5 = alloca %struct.intel_iommu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dmar_drhd_unit* %0, %struct.dmar_drhd_unit** %4, align 8
  store %struct.intel_iommu* %1, %struct.intel_iommu** %5, align 8
  %8 = call i32 (...) @x2apic_enabled()
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %2
  %12 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %13 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ecap_eim_support(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %11
  %18 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %19 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %22 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %60

27:                                               ; preds = %11, %2
  %28 = load %struct.dmar_drhd_unit*, %struct.dmar_drhd_unit** %4, align 8
  %29 = getelementptr inbounds %struct.dmar_drhd_unit, %struct.dmar_drhd_unit* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %32 = call i64 @ir_parse_ioapic_hpet_scope(i32 %30, %struct.intel_iommu* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %36 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %60

41:                                               ; preds = %27
  %42 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %43 = call i32 @intel_setup_irq_remapping(%struct.intel_iommu* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %48 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %52 = call i32 @intel_teardown_irq_remapping(%struct.intel_iommu* %51)
  %53 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %54 = call i32 @ir_remove_ioapic_hpet_scope(%struct.intel_iommu* %53)
  br label %58

55:                                               ; preds = %41
  %56 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %57 = call i32 @iommu_enable_irq_remapping(%struct.intel_iommu* %56)
  br label %58

58:                                               ; preds = %55, %46
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %34, %17
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @x2apic_enabled(...) #1

declare dso_local i32 @ecap_eim_support(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i64 @ir_parse_ioapic_hpet_scope(i32, %struct.intel_iommu*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @intel_setup_irq_remapping(%struct.intel_iommu*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @intel_teardown_irq_remapping(%struct.intel_iommu*) #1

declare dso_local i32 @ir_remove_ioapic_hpet_scope(%struct.intel_iommu*) #1

declare dso_local i32 @iommu_enable_irq_remapping(%struct.intel_iommu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
