; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_mmu.c_panfrost_mmu_pgtable_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_mmu.c_panfrost_mmu_pgtable_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_file_priv = type { %struct.panfrost_mmu, %struct.panfrost_device* }
%struct.panfrost_mmu = type { i64, i32, i32 }
%struct.panfrost_device = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @panfrost_mmu_pgtable_free(%struct.panfrost_file_priv* %0) #0 {
  %2 = alloca %struct.panfrost_file_priv*, align 8
  %3 = alloca %struct.panfrost_device*, align 8
  %4 = alloca %struct.panfrost_mmu*, align 8
  store %struct.panfrost_file_priv* %0, %struct.panfrost_file_priv** %2, align 8
  %5 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %2, align 8
  %6 = getelementptr inbounds %struct.panfrost_file_priv, %struct.panfrost_file_priv* %5, i32 0, i32 1
  %7 = load %struct.panfrost_device*, %struct.panfrost_device** %6, align 8
  store %struct.panfrost_device* %7, %struct.panfrost_device** %3, align 8
  %8 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %2, align 8
  %9 = getelementptr inbounds %struct.panfrost_file_priv, %struct.panfrost_file_priv* %8, i32 0, i32 0
  store %struct.panfrost_mmu* %9, %struct.panfrost_mmu** %4, align 8
  %10 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %11 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.panfrost_mmu*, %struct.panfrost_mmu** %4, align 8
  %14 = getelementptr inbounds %struct.panfrost_mmu, %struct.panfrost_mmu* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %1
  %18 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %19 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pm_runtime_get_noresume(i32 %20)
  %22 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %23 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @pm_runtime_active(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %17
  %28 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %29 = load %struct.panfrost_mmu*, %struct.panfrost_mmu** %4, align 8
  %30 = getelementptr inbounds %struct.panfrost_mmu, %struct.panfrost_mmu* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @panfrost_mmu_disable(%struct.panfrost_device* %28, i64 %31)
  br label %33

33:                                               ; preds = %27, %17
  %34 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %35 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pm_runtime_put_autosuspend(i32 %36)
  %38 = load %struct.panfrost_mmu*, %struct.panfrost_mmu** %4, align 8
  %39 = getelementptr inbounds %struct.panfrost_mmu, %struct.panfrost_mmu* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %42 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %41, i32 0, i32 2
  %43 = call i32 @clear_bit(i64 %40, i32* %42)
  %44 = load %struct.panfrost_mmu*, %struct.panfrost_mmu** %4, align 8
  %45 = getelementptr inbounds %struct.panfrost_mmu, %struct.panfrost_mmu* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %48 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %47, i32 0, i32 1
  %49 = call i32 @clear_bit(i64 %46, i32* %48)
  %50 = load %struct.panfrost_mmu*, %struct.panfrost_mmu** %4, align 8
  %51 = getelementptr inbounds %struct.panfrost_mmu, %struct.panfrost_mmu* %50, i32 0, i32 2
  %52 = call i32 @list_del(i32* %51)
  br label %53

53:                                               ; preds = %33, %1
  %54 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %55 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load %struct.panfrost_mmu*, %struct.panfrost_mmu** %4, align 8
  %58 = getelementptr inbounds %struct.panfrost_mmu, %struct.panfrost_mmu* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @free_io_pgtable_ops(i32 %59)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pm_runtime_get_noresume(i32) #1

declare dso_local i64 @pm_runtime_active(i32) #1

declare dso_local i32 @panfrost_mmu_disable(%struct.panfrost_device*, i64) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @clear_bit(i64, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @free_io_pgtable_ops(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
