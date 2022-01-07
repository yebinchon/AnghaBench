; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/device/extr_base.c_nvkm_device_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/device/extr_base.c_nvkm_device_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { %struct.TYPE_2__*, i32, i64, i32, i64 }
%struct.TYPE_2__ = type { %struct.nvkm_device* (%struct.nvkm_device*)* }
%struct.nvkm_subdev = type { i32 }

@nv_devices_mutex = common dso_local global i32 0, align 4
@NVKM_SUBDEV_NR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_device_del(%struct.nvkm_device** %0) #0 {
  %2 = alloca %struct.nvkm_device**, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_subdev*, align 8
  store %struct.nvkm_device** %0, %struct.nvkm_device*** %2, align 8
  %6 = load %struct.nvkm_device**, %struct.nvkm_device*** %2, align 8
  %7 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  store %struct.nvkm_device* %7, %struct.nvkm_device** %3, align 8
  %8 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %9 = icmp ne %struct.nvkm_device* %8, null
  br i1 %9, label %10, label %65

10:                                               ; preds = %1
  %11 = call i32 @mutex_lock(i32* @nv_devices_mutex)
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %13 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @NVKM_SUBDEV_NR, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %24, %10
  %17 = load i32, i32* %4, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call %struct.nvkm_subdev* @nvkm_device_subdev(%struct.nvkm_device* %20, i32 %21)
  store %struct.nvkm_subdev* %22, %struct.nvkm_subdev** %5, align 8
  %23 = call i32 @nvkm_subdev_del(%struct.nvkm_subdev** %5)
  br label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %4, align 4
  br label %16

27:                                               ; preds = %16
  %28 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %29 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %28, i32 0, i32 3
  %30 = call i32 @nvkm_event_fini(i32* %29)
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %32 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %37 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @iounmap(i64 %38)
  br label %40

40:                                               ; preds = %35, %27
  %41 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %42 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %41, i32 0, i32 1
  %43 = call i32 @list_del(i32* %42)
  %44 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %45 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.nvkm_device* (%struct.nvkm_device*)*, %struct.nvkm_device* (%struct.nvkm_device*)** %47, align 8
  %49 = icmp ne %struct.nvkm_device* (%struct.nvkm_device*)* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %40
  %51 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %52 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.nvkm_device* (%struct.nvkm_device*)*, %struct.nvkm_device* (%struct.nvkm_device*)** %54, align 8
  %56 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %57 = call %struct.nvkm_device* %55(%struct.nvkm_device* %56)
  %58 = load %struct.nvkm_device**, %struct.nvkm_device*** %2, align 8
  store %struct.nvkm_device* %57, %struct.nvkm_device** %58, align 8
  br label %59

59:                                               ; preds = %50, %40
  %60 = call i32 @mutex_unlock(i32* @nv_devices_mutex)
  %61 = load %struct.nvkm_device**, %struct.nvkm_device*** %2, align 8
  %62 = load %struct.nvkm_device*, %struct.nvkm_device** %61, align 8
  %63 = call i32 @kfree(%struct.nvkm_device* %62)
  %64 = load %struct.nvkm_device**, %struct.nvkm_device*** %2, align 8
  store %struct.nvkm_device* null, %struct.nvkm_device** %64, align 8
  br label %65

65:                                               ; preds = %59, %1
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.nvkm_subdev* @nvkm_device_subdev(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_subdev_del(%struct.nvkm_subdev**) #1

declare dso_local i32 @nvkm_event_fini(i32*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.nvkm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
