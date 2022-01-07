; ModuleID = '/home/carl/AnghaBench/linux/drivers/dca/extr_dca-sysfs.c_dca_sysfs_remove_provider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dca/extr_dca-sysfs.c_dca_sysfs_remove_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dca_provider = type { i32, i32* }

@dca_idr_lock = common dso_local global i32 0, align 4
@dca_idr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dca_sysfs_remove_provider(%struct.dca_provider* %0) #0 {
  %2 = alloca %struct.dca_provider*, align 8
  store %struct.dca_provider* %0, %struct.dca_provider** %2, align 8
  %3 = load %struct.dca_provider*, %struct.dca_provider** %2, align 8
  %4 = getelementptr inbounds %struct.dca_provider, %struct.dca_provider* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @device_unregister(i32* %5)
  %7 = load %struct.dca_provider*, %struct.dca_provider** %2, align 8
  %8 = getelementptr inbounds %struct.dca_provider, %struct.dca_provider* %7, i32 0, i32 1
  store i32* null, i32** %8, align 8
  %9 = call i32 @spin_lock(i32* @dca_idr_lock)
  %10 = load %struct.dca_provider*, %struct.dca_provider** %2, align 8
  %11 = getelementptr inbounds %struct.dca_provider, %struct.dca_provider* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @idr_remove(i32* @dca_idr, i32 %12)
  %14 = call i32 @spin_unlock(i32* @dca_idr_lock)
  ret void
}

declare dso_local i32 @device_unregister(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
