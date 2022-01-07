; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_auth.c_drm_master_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_auth.c_drm_master_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { %struct.drm_master*, i64, i64, %struct.TYPE_2__* }
%struct.drm_master = type { i32 }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32, %struct.drm_master* }

@DRIVER_MODESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_master_release(%struct.drm_file* %0) #0 {
  %2 = alloca %struct.drm_file*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_master*, align 8
  store %struct.drm_file* %0, %struct.drm_file** %2, align 8
  %5 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %6 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %11 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %10, i32 0, i32 0
  %12 = load %struct.drm_master*, %struct.drm_master** %11, align 8
  store %struct.drm_master* %12, %struct.drm_master** %4, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %17 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %22 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %21, i32 0, i32 0
  %23 = load %struct.drm_master*, %struct.drm_master** %22, align 8
  %24 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %23, i32 0, i32 0
  %25 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %26 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @idr_remove(i32* %24, i64 %27)
  br label %29

29:                                               ; preds = %20, %1
  %30 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %31 = call i32 @drm_is_current_master(%struct.drm_file* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %50

34:                                               ; preds = %29
  %35 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %36 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %37 = call i32 @drm_legacy_lock_master_cleanup(%struct.drm_device* %35, %struct.drm_master* %36)
  %38 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %39 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %38, i32 0, i32 1
  %40 = load %struct.drm_master*, %struct.drm_master** %39, align 8
  %41 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %42 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %41, i32 0, i32 0
  %43 = load %struct.drm_master*, %struct.drm_master** %42, align 8
  %44 = icmp eq %struct.drm_master* %40, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %47 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %48 = call i32 @drm_drop_master(%struct.drm_device* %46, %struct.drm_file* %47)
  br label %49

49:                                               ; preds = %45, %34
  br label %50

50:                                               ; preds = %49, %33
  %51 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %52 = load i32, i32* @DRIVER_MODESET, align 4
  %53 = call i64 @drm_core_check_feature(%struct.drm_device* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %57 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %62 = call i32 @drm_lease_revoke(%struct.drm_master* %61)
  br label %63

63:                                               ; preds = %60, %55, %50
  %64 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %65 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %64, i32 0, i32 0
  %66 = load %struct.drm_master*, %struct.drm_master** %65, align 8
  %67 = icmp ne %struct.drm_master* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %70 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %69, i32 0, i32 0
  %71 = call i32 @drm_master_put(%struct.drm_master** %70)
  br label %72

72:                                               ; preds = %68, %63
  %73 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %74 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i64) #1

declare dso_local i32 @drm_is_current_master(%struct.drm_file*) #1

declare dso_local i32 @drm_legacy_lock_master_cleanup(%struct.drm_device*, %struct.drm_master*) #1

declare dso_local i32 @drm_drop_master(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local i64 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_lease_revoke(%struct.drm_master*) #1

declare dso_local i32 @drm_master_put(%struct.drm_master**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
