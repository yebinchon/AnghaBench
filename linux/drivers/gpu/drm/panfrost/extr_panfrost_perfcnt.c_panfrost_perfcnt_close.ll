; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_perfcnt.c_panfrost_perfcnt_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_perfcnt.c_panfrost_perfcnt_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_file_priv = type { %struct.panfrost_device* }
%struct.panfrost_device = type { i32, %struct.panfrost_perfcnt* }
%struct.panfrost_perfcnt = type { i32, %struct.panfrost_file_priv* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @panfrost_perfcnt_close(%struct.panfrost_file_priv* %0) #0 {
  %2 = alloca %struct.panfrost_file_priv*, align 8
  %3 = alloca %struct.panfrost_device*, align 8
  %4 = alloca %struct.panfrost_perfcnt*, align 8
  store %struct.panfrost_file_priv* %0, %struct.panfrost_file_priv** %2, align 8
  %5 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %2, align 8
  %6 = getelementptr inbounds %struct.panfrost_file_priv, %struct.panfrost_file_priv* %5, i32 0, i32 0
  %7 = load %struct.panfrost_device*, %struct.panfrost_device** %6, align 8
  store %struct.panfrost_device* %7, %struct.panfrost_device** %3, align 8
  %8 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %9 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %8, i32 0, i32 1
  %10 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %9, align 8
  store %struct.panfrost_perfcnt* %10, %struct.panfrost_perfcnt** %4, align 8
  %11 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %12 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @pm_runtime_get_sync(i32 %13)
  %15 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %4, align 8
  %16 = getelementptr inbounds %struct.panfrost_perfcnt, %struct.panfrost_perfcnt* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %4, align 8
  %19 = getelementptr inbounds %struct.panfrost_perfcnt, %struct.panfrost_perfcnt* %18, i32 0, i32 1
  %20 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %19, align 8
  %21 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %2, align 8
  %22 = icmp eq %struct.panfrost_file_priv* %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %25 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %2, align 8
  %26 = call i32 @panfrost_perfcnt_disable_locked(%struct.panfrost_device* %24, %struct.panfrost_file_priv* %25)
  br label %27

27:                                               ; preds = %23, %1
  %28 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %4, align 8
  %29 = getelementptr inbounds %struct.panfrost_perfcnt, %struct.panfrost_perfcnt* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %32 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pm_runtime_mark_last_busy(i32 %33)
  %35 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %36 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @pm_runtime_put_autosuspend(i32 %37)
  ret void
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @panfrost_perfcnt_disable_locked(%struct.panfrost_device*, %struct.panfrost_file_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
