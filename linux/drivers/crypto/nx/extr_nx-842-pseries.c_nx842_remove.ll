; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842-pseries.c_nx842_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842-pseries.c_nx842_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nx842_devdata = type { %struct.nx842_devdata* }

@.str = private unnamed_addr constant [43 x i8] c"Removing IBM Power 842 compression device\0A\00", align 1
@nx842_attribute_group = common dso_local global i32 0, align 4
@nx842_pseries_alg = common dso_local global i32 0, align 4
@devdata_mutex = common dso_local global i32 0, align 4
@devdata = common dso_local global i32 0, align 4
@nx842_of_nb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_dev*)* @nx842_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nx842_remove(%struct.vio_dev* %0) #0 {
  %2 = alloca %struct.vio_dev*, align 8
  %3 = alloca %struct.nx842_devdata*, align 8
  %4 = alloca i64, align 8
  store %struct.vio_dev* %0, %struct.vio_dev** %2, align 8
  %5 = call i32 @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.vio_dev*, %struct.vio_dev** %2, align 8
  %7 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @sysfs_remove_group(i32* %8, i32* @nx842_attribute_group)
  %10 = call i32 @crypto_unregister_alg(i32* @nx842_pseries_alg)
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* @devdata_mutex, i64 %11)
  %13 = load i32, i32* @devdata, align 4
  %14 = call i32 @lockdep_is_held(i32* @devdata_mutex)
  %15 = call %struct.nx842_devdata* @rcu_dereference_check(i32 %13, i32 %14)
  store %struct.nx842_devdata* %15, %struct.nx842_devdata** %3, align 8
  %16 = call i32 @of_reconfig_notifier_unregister(i32* @nx842_of_nb)
  %17 = load i32, i32* @devdata, align 4
  %18 = call i32 @RCU_INIT_POINTER(i32 %17, i32* null)
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* @devdata_mutex, i64 %19)
  %21 = call i32 (...) @synchronize_rcu()
  %22 = load %struct.vio_dev*, %struct.vio_dev** %2, align 8
  %23 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %22, i32 0, i32 0
  %24 = call i32 @dev_set_drvdata(%struct.TYPE_2__* %23, i32* null)
  %25 = load %struct.nx842_devdata*, %struct.nx842_devdata** %3, align 8
  %26 = icmp ne %struct.nx842_devdata* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.nx842_devdata*, %struct.nx842_devdata** %3, align 8
  %29 = getelementptr inbounds %struct.nx842_devdata, %struct.nx842_devdata* %28, i32 0, i32 0
  %30 = load %struct.nx842_devdata*, %struct.nx842_devdata** %29, align 8
  %31 = call i32 @kfree(%struct.nx842_devdata* %30)
  br label %32

32:                                               ; preds = %27, %1
  %33 = load %struct.nx842_devdata*, %struct.nx842_devdata** %3, align 8
  %34 = call i32 @kfree(%struct.nx842_devdata* %33)
  ret i32 0
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @crypto_unregister_alg(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.nx842_devdata* @rcu_dereference_check(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @of_reconfig_notifier_unregister(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @kfree(%struct.nx842_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
