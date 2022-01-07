; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_busy_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_busy_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_radeon_gem_busy = type { i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.radeon_bo = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_gem_busy_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_radeon_gem_busy*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca %struct.radeon_bo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.drm_radeon_gem_busy*
  store %struct.drm_radeon_gem_busy* %14, %struct.drm_radeon_gem_busy** %8, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %16 = load %struct.drm_radeon_gem_busy*, %struct.drm_radeon_gem_busy** %8, align 8
  %17 = getelementptr inbounds %struct.drm_radeon_gem_busy, %struct.drm_radeon_gem_busy* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %15, i32 %18)
  store %struct.drm_gem_object* %19, %struct.drm_gem_object** %9, align 8
  %20 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %21 = icmp eq %struct.drm_gem_object* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %54

25:                                               ; preds = %3
  %26 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %27 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %26)
  store %struct.radeon_bo* %27, %struct.radeon_bo** %10, align 8
  %28 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %29 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dma_resv_test_signaled_rcu(i32 %32, i32 1)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %11, align 4
  br label %40

39:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %39, %36
  %41 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %42 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @READ_ONCE(i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @radeon_mem_type_to_domain(i32 %47)
  %49 = load %struct.drm_radeon_gem_busy*, %struct.drm_radeon_gem_busy** %8, align 8
  %50 = getelementptr inbounds %struct.drm_radeon_gem_busy, %struct.drm_radeon_gem_busy* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %52 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %51)
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %40, %22
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @dma_resv_test_signaled_rcu(i32, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @radeon_mem_type_to_domain(i32) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
