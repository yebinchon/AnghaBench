; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_drm_postclose.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_drm_postclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.nouveau_cli = type { i32, i32, i64 }
%struct.nouveau_drm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.drm_file*)* @nouveau_drm_postclose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_drm_postclose(%struct.drm_device* %0, %struct.drm_file* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.nouveau_cli*, align 8
  %6 = alloca %struct.nouveau_drm*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_file* %1, %struct.drm_file** %4, align 8
  %7 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %8 = call %struct.nouveau_cli* @nouveau_cli(%struct.drm_file* %7)
  store %struct.nouveau_cli* %8, %struct.nouveau_cli** %5, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %9)
  store %struct.nouveau_drm* %10, %struct.nouveau_drm** %6, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pm_runtime_get_sync(i32 %13)
  %15 = load %struct.nouveau_cli*, %struct.nouveau_cli** %5, align 8
  %16 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.nouveau_cli*, %struct.nouveau_cli** %5, align 8
  %19 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.nouveau_cli*, %struct.nouveau_cli** %5, align 8
  %24 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @nouveau_abi16_fini(i64 %25)
  br label %27

27:                                               ; preds = %22, %2
  %28 = load %struct.nouveau_cli*, %struct.nouveau_cli** %5, align 8
  %29 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %28, i32 0, i32 1
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %32 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.nouveau_cli*, %struct.nouveau_cli** %5, align 8
  %36 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %35, i32 0, i32 0
  %37 = call i32 @list_del(i32* %36)
  %38 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %39 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load %struct.nouveau_cli*, %struct.nouveau_cli** %5, align 8
  %43 = call i32 @nouveau_cli_fini(%struct.nouveau_cli* %42)
  %44 = load %struct.nouveau_cli*, %struct.nouveau_cli** %5, align 8
  %45 = call i32 @kfree(%struct.nouveau_cli* %44)
  %46 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %47 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pm_runtime_mark_last_busy(i32 %48)
  %50 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %51 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pm_runtime_put_autosuspend(i32 %52)
  ret void
}

declare dso_local %struct.nouveau_cli* @nouveau_cli(%struct.drm_file*) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nouveau_abi16_fini(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @nouveau_cli_fini(%struct.nouveau_cli*) #1

declare dso_local i32 @kfree(%struct.nouveau_cli*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
