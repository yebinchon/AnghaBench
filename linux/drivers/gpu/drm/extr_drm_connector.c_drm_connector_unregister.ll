; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_connector_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_connector_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.drm_connector*)* }

@DRM_CONNECTOR_REGISTERED = common dso_local global i64 0, align 8
@DRM_CONNECTOR_UNREGISTERED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_connector_unregister(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %3 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %4 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %7 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DRM_CONNECTOR_REGISTERED, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %13 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %12, i32 0, i32 1
  %14 = call i32 @mutex_unlock(i32* %13)
  br label %41

15:                                               ; preds = %1
  %16 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %17 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.drm_connector*)*, i32 (%struct.drm_connector*)** %19, align 8
  %21 = icmp ne i32 (%struct.drm_connector*)* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %24 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.drm_connector*)*, i32 (%struct.drm_connector*)** %26, align 8
  %28 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %29 = call i32 %27(%struct.drm_connector* %28)
  br label %30

30:                                               ; preds = %22, %15
  %31 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %32 = call i32 @drm_sysfs_connector_remove(%struct.drm_connector* %31)
  %33 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %34 = call i32 @drm_debugfs_connector_remove(%struct.drm_connector* %33)
  %35 = load i64, i64* @DRM_CONNECTOR_UNREGISTERED, align 8
  %36 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %37 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %39 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %38, i32 0, i32 1
  %40 = call i32 @mutex_unlock(i32* %39)
  br label %41

41:                                               ; preds = %30, %11
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_sysfs_connector_remove(%struct.drm_connector*) #1

declare dso_local i32 @drm_debugfs_connector_remove(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
