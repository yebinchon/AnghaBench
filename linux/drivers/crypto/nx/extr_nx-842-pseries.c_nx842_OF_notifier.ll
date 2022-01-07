; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842-pseries.c_nx842_OF_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842-pseries.c_nx842_OF_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.of_reconfig_data = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nx842_devdata = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@devdata = common dso_local global i32 0, align 4
@OF_RECONFIG_UPDATE_PROPERTY = common dso_local global i64 0, align 8
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @nx842_OF_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nx842_OF_notifier(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.of_reconfig_data*, align 8
  %8 = alloca %struct.nx842_devdata*, align 8
  %9 = alloca %struct.device_node*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.of_reconfig_data*
  store %struct.of_reconfig_data* %11, %struct.of_reconfig_data** %7, align 8
  store %struct.device_node* null, %struct.device_node** %9, align 8
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load i32, i32* @devdata, align 4
  %14 = call %struct.nx842_devdata* @rcu_dereference(i32 %13)
  store %struct.nx842_devdata* %14, %struct.nx842_devdata** %8, align 8
  %15 = load %struct.nx842_devdata*, %struct.nx842_devdata** %8, align 8
  %16 = icmp ne %struct.nx842_devdata* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.nx842_devdata*, %struct.nx842_devdata** %8, align 8
  %19 = getelementptr inbounds %struct.nx842_devdata, %struct.nx842_devdata* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.device_node*, %struct.device_node** %21, align 8
  store %struct.device_node* %22, %struct.device_node** %9, align 8
  br label %23

23:                                               ; preds = %17, %3
  %24 = load %struct.nx842_devdata*, %struct.nx842_devdata** %8, align 8
  %25 = icmp ne %struct.nx842_devdata* %24, null
  br i1 %25, label %26, label %47

26:                                               ; preds = %23
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @OF_RECONFIG_UPDATE_PROPERTY, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = load %struct.of_reconfig_data*, %struct.of_reconfig_data** %7, align 8
  %32 = getelementptr inbounds %struct.of_reconfig_data, %struct.of_reconfig_data* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.device_node*, %struct.device_node** %9, align 8
  %37 = getelementptr inbounds %struct.device_node, %struct.device_node* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @strcmp(i32 %35, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %30
  %42 = call i32 (...) @rcu_read_unlock()
  %43 = load %struct.of_reconfig_data*, %struct.of_reconfig_data** %7, align 8
  %44 = getelementptr inbounds %struct.of_reconfig_data, %struct.of_reconfig_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @nx842_OF_upd(i32 %45)
  br label %49

47:                                               ; preds = %30, %26, %23
  %48 = call i32 (...) @rcu_read_unlock()
  br label %49

49:                                               ; preds = %47, %41
  %50 = load i32, i32* @NOTIFY_OK, align 4
  ret i32 %50
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nx842_devdata* @rcu_dereference(i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @nx842_OF_upd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
