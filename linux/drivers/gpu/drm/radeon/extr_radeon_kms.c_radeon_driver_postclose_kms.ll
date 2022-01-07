; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_kms.c_radeon_driver_postclose_kms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_kms.c_radeon_driver_postclose_kms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.radeon_device* }
%struct.radeon_device = type { i64, %struct.TYPE_4__, i64, %struct.TYPE_3__, %struct.drm_file*, %struct.drm_file* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.drm_file = type { %struct.radeon_fpriv* }
%struct.radeon_fpriv = type { %struct.radeon_vm }
%struct.radeon_vm = type { i64 }

@CHIP_CAYMAN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_driver_postclose_kms(%struct.drm_device* %0, %struct.drm_file* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_fpriv*, align 8
  %7 = alloca %struct.radeon_vm*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_file* %1, %struct.drm_file** %4, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 1
  %11 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  store %struct.radeon_device* %11, %struct.radeon_device** %5, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @pm_runtime_get_sync(i32 %14)
  %16 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 5
  %22 = load %struct.drm_file*, %struct.drm_file** %21, align 8
  %23 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %24 = icmp eq %struct.drm_file* %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 5
  store %struct.drm_file* null, %struct.drm_file** %27, align 8
  br label %28

28:                                               ; preds = %25, %2
  %29 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %30 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %29, i32 0, i32 4
  %31 = load %struct.drm_file*, %struct.drm_file** %30, align 8
  %32 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %33 = icmp eq %struct.drm_file* %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 4
  store %struct.drm_file* null, %struct.drm_file** %36, align 8
  br label %37

37:                                               ; preds = %34, %28
  %38 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %43 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %44 = call i32 @radeon_uvd_free_handles(%struct.radeon_device* %42, %struct.drm_file* %43)
  %45 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %46 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %47 = call i32 @radeon_vce_free_handles(%struct.radeon_device* %45, %struct.drm_file* %46)
  %48 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CHIP_CAYMAN, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %102

53:                                               ; preds = %37
  %54 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %55 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %54, i32 0, i32 0
  %56 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %55, align 8
  %57 = icmp ne %struct.radeon_fpriv* %56, null
  br i1 %57, label %58, label %102

58:                                               ; preds = %53
  %59 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %60 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %59, i32 0, i32 0
  %61 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %60, align 8
  store %struct.radeon_fpriv* %61, %struct.radeon_fpriv** %6, align 8
  %62 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %6, align 8
  %63 = getelementptr inbounds %struct.radeon_fpriv, %struct.radeon_fpriv* %62, i32 0, i32 0
  store %struct.radeon_vm* %63, %struct.radeon_vm** %7, align 8
  %64 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %65 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %97

68:                                               ; preds = %58
  %69 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @radeon_bo_reserve(i32 %72, i32 0)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %93, label %76

76:                                               ; preds = %68
  %77 = load %struct.radeon_vm*, %struct.radeon_vm** %7, align 8
  %78 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %83 = load %struct.radeon_vm*, %struct.radeon_vm** %7, align 8
  %84 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @radeon_vm_bo_rmv(%struct.radeon_device* %82, i64 %85)
  br label %87

87:                                               ; preds = %81, %76
  %88 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %89 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @radeon_bo_unreserve(i32 %91)
  br label %93

93:                                               ; preds = %87, %68
  %94 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %95 = load %struct.radeon_vm*, %struct.radeon_vm** %7, align 8
  %96 = call i32 @radeon_vm_fini(%struct.radeon_device* %94, %struct.radeon_vm* %95)
  br label %97

97:                                               ; preds = %93, %58
  %98 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %6, align 8
  %99 = call i32 @kfree(%struct.radeon_fpriv* %98)
  %100 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %101 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %100, i32 0, i32 0
  store %struct.radeon_fpriv* null, %struct.radeon_fpriv** %101, align 8
  br label %102

102:                                              ; preds = %97, %53, %37
  %103 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %104 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @pm_runtime_mark_last_busy(i32 %105)
  %107 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %108 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @pm_runtime_put_autosuspend(i32 %109)
  ret void
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @radeon_uvd_free_handles(%struct.radeon_device*, %struct.drm_file*) #1

declare dso_local i32 @radeon_vce_free_handles(%struct.radeon_device*, %struct.drm_file*) #1

declare dso_local i32 @radeon_bo_reserve(i32, i32) #1

declare dso_local i32 @radeon_vm_bo_rmv(%struct.radeon_device*, i64) #1

declare dso_local i32 @radeon_bo_unreserve(i32) #1

declare dso_local i32 @radeon_vm_fini(%struct.radeon_device*, %struct.radeon_vm*) #1

declare dso_local i32 @kfree(%struct.radeon_fpriv*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
