; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_wait_idle_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_wait_idle_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.drm_file = type { i32 }
%struct.drm_radeon_gem_wait_idle = type { i32 }
%struct.drm_gem_object = type { i32 }
%struct.radeon_bo = type { %struct.TYPE_12__*, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.radeon_device*)* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_VRAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_gem_wait_idle_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.drm_radeon_gem_wait_idle*, align 8
  %10 = alloca %struct.drm_gem_object*, align 8
  %11 = alloca %struct.radeon_bo*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.radeon_device*, %struct.radeon_device** %16, align 8
  store %struct.radeon_device* %17, %struct.radeon_device** %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.drm_radeon_gem_wait_idle*
  store %struct.drm_radeon_gem_wait_idle* %19, %struct.drm_radeon_gem_wait_idle** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %21 = load %struct.drm_radeon_gem_wait_idle*, %struct.drm_radeon_gem_wait_idle** %9, align 8
  %22 = getelementptr inbounds %struct.drm_radeon_gem_wait_idle, %struct.drm_radeon_gem_wait_idle* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %20, i32 %23)
  store %struct.drm_gem_object* %24, %struct.drm_gem_object** %10, align 8
  %25 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %26 = icmp eq %struct.drm_gem_object* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %88

30:                                               ; preds = %3
  %31 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %32 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %31)
  store %struct.radeon_bo* %32, %struct.radeon_bo** %11, align 8
  %33 = load %struct.radeon_bo*, %struct.radeon_bo** %11, align 8
  %34 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @HZ, align 4
  %39 = mul nsw i32 30, %38
  %40 = call i64 @dma_resv_wait_timeout_rcu(i32 %37, i32 1, i32 1, i32 %39)
  store i64 %40, i64* %14, align 8
  %41 = load i64, i64* %14, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %12, align 4
  br label %53

46:                                               ; preds = %30
  %47 = load i64, i64* %14, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i64, i64* %14, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %43
  %54 = load %struct.radeon_bo*, %struct.radeon_bo** %11, align 8
  %55 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @READ_ONCE(i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %53
  %67 = load i32, i32* %13, align 4
  %68 = call i64 @radeon_mem_type_to_domain(i32 %67)
  %69 = load i64, i64* @RADEON_GEM_DOMAIN_VRAM, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load %struct.radeon_bo*, %struct.radeon_bo** %11, align 8
  %73 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %72, i32 0, i32 0
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32 (%struct.radeon_device*)*, i32 (%struct.radeon_device*)** %77, align 8
  %79 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %80 = call i32 %78(%struct.radeon_device* %79)
  br label %81

81:                                               ; preds = %71, %66, %53
  %82 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %83 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %82)
  %84 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @radeon_gem_handle_lockup(%struct.radeon_device* %84, i32 %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %81, %27
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object*) #1

declare dso_local i64 @dma_resv_wait_timeout_rcu(i32, i32, i32, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @radeon_mem_type_to_domain(i32) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

declare dso_local i32 @radeon_gem_handle_lockup(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
