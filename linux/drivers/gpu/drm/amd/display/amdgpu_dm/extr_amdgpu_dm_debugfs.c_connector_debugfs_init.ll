; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_debugfs.c_connector_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_debugfs.c_connector_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.amdgpu_dm_connector = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.dentry* }
%struct.dentry = type { i32 }

@DRM_MODE_CONNECTOR_DisplayPort = common dso_local global i64 0, align 8
@DRM_MODE_CONNECTOR_eDP = common dso_local global i64 0, align 8
@dp_debugfs_entries = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @connector_debugfs_init(%struct.amdgpu_dm_connector* %0) #0 {
  %2 = alloca %struct.amdgpu_dm_connector*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  store %struct.amdgpu_dm_connector* %0, %struct.amdgpu_dm_connector** %2, align 8
  %5 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %6 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %8, %struct.dentry** %4, align 8
  %9 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %10 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DRM_MODE_CONNECTOR_DisplayPort, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %17 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %15, %1
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %44, %22
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dp_debugfs_entries, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %25)
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %23
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dp_debugfs_entries, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dentry*, %struct.dentry** %4, align 8
  %36 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dp_debugfs_entries, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @debugfs_create_file(i32 %34, i32 420, %struct.dentry* %35, %struct.amdgpu_dm_connector* %36, i32 %42)
  br label %44

44:                                               ; preds = %28
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %23

47:                                               ; preds = %23
  br label %48

48:                                               ; preds = %47, %15
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @debugfs_create_file(i32, i32, %struct.dentry*, %struct.amdgpu_dm_connector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
