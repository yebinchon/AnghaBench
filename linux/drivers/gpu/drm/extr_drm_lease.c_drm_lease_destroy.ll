; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_lease.c_drm_lease_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_lease.c_drm_lease_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_master = type { i64, i64, i32, i32, %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"drm_lease_destroy %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"remove master %d from device list of lessees\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"drm_lease_destroy done %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_lease_destroy(%struct.drm_master* %0) #0 {
  %2 = alloca %struct.drm_master*, align 8
  %3 = alloca %struct.drm_device*, align 8
  store %struct.drm_master* %0, %struct.drm_master** %2, align 8
  %4 = load %struct.drm_master*, %struct.drm_master** %2, align 8
  %5 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %4, i32 0, i32 4
  %6 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  store %struct.drm_device* %6, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.drm_master*, %struct.drm_master** %2, align 8
  %12 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @DRM_DEBUG_LEASE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load %struct.drm_master*, %struct.drm_master** %2, align 8
  %16 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %15, i32 0, i32 3
  %17 = call i32 @list_empty(i32* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load %struct.drm_master*, %struct.drm_master** %2, align 8
  %23 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %1
  %27 = load %struct.drm_master*, %struct.drm_master** %2, align 8
  %28 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @DRM_DEBUG_LEASE(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load %struct.drm_master*, %struct.drm_master** %2, align 8
  %32 = call %struct.TYPE_4__* @drm_lease_owner(%struct.drm_master* %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.drm_master*, %struct.drm_master** %2, align 8
  %35 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @idr_remove(i32* %33, i64 %36)
  br label %38

38:                                               ; preds = %26, %1
  %39 = load %struct.drm_master*, %struct.drm_master** %2, align 8
  %40 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %39, i32 0, i32 2
  %41 = call i32 @list_del(i32* %40)
  %42 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load %struct.drm_master*, %struct.drm_master** %2, align 8
  %47 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %38
  %51 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %52 = call i32 @drm_sysfs_lease_event(%struct.drm_device* %51)
  %53 = load %struct.drm_master*, %struct.drm_master** %2, align 8
  %54 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %53, i32 0, i32 1
  %55 = call i32 @drm_master_put(i64* %54)
  br label %56

56:                                               ; preds = %50, %38
  %57 = load %struct.drm_master*, %struct.drm_master** %2, align 8
  %58 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @DRM_DEBUG_LEASE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %59)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DRM_DEBUG_LEASE(i8*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @idr_remove(i32*, i64) #1

declare dso_local %struct.TYPE_4__* @drm_lease_owner(%struct.drm_master*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_sysfs_lease_event(%struct.drm_device*) #1

declare dso_local i32 @drm_master_put(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
