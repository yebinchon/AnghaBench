; ModuleID = '/home/carl/AnghaBench/linux/drivers/dca/extr_dca-core.c_unregister_dca_provider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dca/extr_dca-core.c_unregister_dca_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dca_provider = type { i32 }
%struct.device = type { i32 }
%struct.pci_bus = type { i32 }
%struct.dca_domain = type { i32 }

@dca_provider_chain = common dso_local global i32 0, align 4
@DCA_PROVIDER_REMOVE = common dso_local global i32 0, align 4
@dca_lock = common dso_local global i32 0, align 4
@dca_domains = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unregister_dca_provider(%struct.dca_provider* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.dca_provider*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca %struct.dca_domain*, align 8
  store %struct.dca_provider* %0, %struct.dca_provider** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %8 = load i32, i32* @DCA_PROVIDER_REMOVE, align 4
  %9 = call i32 @blocking_notifier_call_chain(i32* @dca_provider_chain, i32 %8, i32* null)
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @raw_spin_lock_irqsave(i32* @dca_lock, i64 %10)
  %12 = call i64 @list_empty(i32* @dca_domains)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @raw_spin_unlock_irqrestore(i32* @dca_lock, i64 %15)
  br label %37

17:                                               ; preds = %2
  %18 = load %struct.dca_provider*, %struct.dca_provider** %3, align 8
  %19 = getelementptr inbounds %struct.dca_provider, %struct.dca_provider* %18, i32 0, i32 0
  %20 = call i32 @list_del(i32* %19)
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call %struct.pci_bus* @dca_pci_rc_from_dev(%struct.device* %21)
  store %struct.pci_bus* %22, %struct.pci_bus** %6, align 8
  %23 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %24 = call %struct.dca_domain* @dca_find_domain(%struct.pci_bus* %23)
  store %struct.dca_domain* %24, %struct.dca_domain** %7, align 8
  %25 = load %struct.dca_domain*, %struct.dca_domain** %7, align 8
  %26 = getelementptr inbounds %struct.dca_domain, %struct.dca_domain* %25, i32 0, i32 0
  %27 = call i64 @list_empty(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load %struct.dca_domain*, %struct.dca_domain** %7, align 8
  %31 = call i32 @dca_free_domain(%struct.dca_domain* %30)
  br label %32

32:                                               ; preds = %29, %17
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @raw_spin_unlock_irqrestore(i32* @dca_lock, i64 %33)
  %35 = load %struct.dca_provider*, %struct.dca_provider** %3, align 8
  %36 = call i32 @dca_sysfs_remove_provider(%struct.dca_provider* %35)
  br label %37

37:                                               ; preds = %32, %14
  ret void
}

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, i32*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local %struct.pci_bus* @dca_pci_rc_from_dev(%struct.device*) #1

declare dso_local %struct.dca_domain* @dca_find_domain(%struct.pci_bus*) #1

declare dso_local i32 @dca_free_domain(%struct.dca_domain*) #1

declare dso_local i32 @dca_sysfs_remove_provider(%struct.dca_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
