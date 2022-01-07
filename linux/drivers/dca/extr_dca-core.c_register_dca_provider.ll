; ModuleID = '/home/carl/AnghaBench/linux/drivers/dca/extr_dca-core.c_register_dca_provider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dca/extr_dca-core.c_register_dca_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dca_provider = type { i32 }
%struct.device = type { i32 }
%struct.dca_domain = type { i32, i32 }
%struct.pci_bus = type { i32 }

@dca_lock = common dso_local global i32 0, align 4
@dca_providers_blocked = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@dca_domains = common dso_local global i32 0, align 4
@dca_provider_chain = common dso_local global i32 0, align 4
@DCA_PROVIDER_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_dca_provider(%struct.dca_provider* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dca_provider*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.dca_domain*, align 8
  %9 = alloca %struct.dca_domain*, align 8
  %10 = alloca %struct.pci_bus*, align 8
  store %struct.dca_provider* %0, %struct.dca_provider** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store %struct.dca_domain* null, %struct.dca_domain** %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @raw_spin_lock_irqsave(i32* @dca_lock, i64 %11)
  %13 = load i64, i64* @dca_providers_blocked, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @raw_spin_unlock_irqrestore(i32* @dca_lock, i64 %16)
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %85

20:                                               ; preds = %2
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @raw_spin_unlock_irqrestore(i32* @dca_lock, i64 %21)
  %23 = load %struct.dca_provider*, %struct.dca_provider** %4, align 8
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = call i32 @dca_sysfs_add_provider(%struct.dca_provider* %23, %struct.device* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %85

30:                                               ; preds = %20
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @raw_spin_lock_irqsave(i32* @dca_lock, i64 %31)
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = call %struct.dca_domain* @dca_get_domain(%struct.device* %33)
  store %struct.dca_domain* %34, %struct.dca_domain** %8, align 8
  %35 = load %struct.dca_domain*, %struct.dca_domain** %8, align 8
  %36 = icmp ne %struct.dca_domain* %35, null
  br i1 %36, label %73, label %37

37:                                               ; preds = %30
  %38 = load i64, i64* @dca_providers_blocked, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @raw_spin_unlock_irqrestore(i32* @dca_lock, i64 %41)
  %43 = load %struct.dca_provider*, %struct.dca_provider** %4, align 8
  %44 = call i32 @dca_sysfs_remove_provider(%struct.dca_provider* %43)
  %45 = call i32 (...) @unregister_dca_providers()
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %85

48:                                               ; preds = %37
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @raw_spin_unlock_irqrestore(i32* @dca_lock, i64 %49)
  %51 = load %struct.device*, %struct.device** %5, align 8
  %52 = call %struct.pci_bus* @dca_pci_rc_from_dev(%struct.device* %51)
  store %struct.pci_bus* %52, %struct.pci_bus** %10, align 8
  %53 = load %struct.pci_bus*, %struct.pci_bus** %10, align 8
  %54 = call %struct.dca_domain* @dca_allocate_domain(%struct.pci_bus* %53)
  store %struct.dca_domain* %54, %struct.dca_domain** %9, align 8
  %55 = load %struct.dca_domain*, %struct.dca_domain** %9, align 8
  %56 = icmp ne %struct.dca_domain* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %48
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %85

60:                                               ; preds = %48
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @raw_spin_lock_irqsave(i32* @dca_lock, i64 %61)
  %63 = load %struct.device*, %struct.device** %5, align 8
  %64 = call %struct.dca_domain* @dca_get_domain(%struct.device* %63)
  store %struct.dca_domain* %64, %struct.dca_domain** %8, align 8
  %65 = load %struct.dca_domain*, %struct.dca_domain** %8, align 8
  %66 = icmp ne %struct.dca_domain* %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %60
  %68 = load %struct.dca_domain*, %struct.dca_domain** %9, align 8
  store %struct.dca_domain* %68, %struct.dca_domain** %8, align 8
  store %struct.dca_domain* null, %struct.dca_domain** %9, align 8
  %69 = load %struct.dca_domain*, %struct.dca_domain** %8, align 8
  %70 = getelementptr inbounds %struct.dca_domain, %struct.dca_domain* %69, i32 0, i32 1
  %71 = call i32 @list_add(i32* %70, i32* @dca_domains)
  br label %72

72:                                               ; preds = %67, %60
  br label %73

73:                                               ; preds = %72, %30
  %74 = load %struct.dca_provider*, %struct.dca_provider** %4, align 8
  %75 = getelementptr inbounds %struct.dca_provider, %struct.dca_provider* %74, i32 0, i32 0
  %76 = load %struct.dca_domain*, %struct.dca_domain** %8, align 8
  %77 = getelementptr inbounds %struct.dca_domain, %struct.dca_domain* %76, i32 0, i32 0
  %78 = call i32 @list_add(i32* %75, i32* %77)
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @raw_spin_unlock_irqrestore(i32* @dca_lock, i64 %79)
  %81 = load i32, i32* @DCA_PROVIDER_ADD, align 4
  %82 = call i32 @blocking_notifier_call_chain(i32* @dca_provider_chain, i32 %81, i32* null)
  %83 = load %struct.dca_domain*, %struct.dca_domain** %9, align 8
  %84 = call i32 @kfree(%struct.dca_domain* %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %73, %57, %40, %28, %15
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dca_sysfs_add_provider(%struct.dca_provider*, %struct.device*) #1

declare dso_local %struct.dca_domain* @dca_get_domain(%struct.device*) #1

declare dso_local i32 @dca_sysfs_remove_provider(%struct.dca_provider*) #1

declare dso_local i32 @unregister_dca_providers(...) #1

declare dso_local %struct.pci_bus* @dca_pci_rc_from_dev(%struct.device*) #1

declare dso_local %struct.dca_domain* @dca_allocate_domain(%struct.pci_bus*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.dca_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
