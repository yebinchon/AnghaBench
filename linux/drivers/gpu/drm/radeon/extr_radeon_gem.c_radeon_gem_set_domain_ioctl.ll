; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_set_domain_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_set_domain_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_radeon_gem_set_domain = type { i32, i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.radeon_bo = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_gem_set_domain_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.drm_radeon_gem_set_domain*, align 8
  %10 = alloca %struct.drm_gem_object*, align 8
  %11 = alloca %struct.radeon_bo*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  store %struct.radeon_device* %15, %struct.radeon_device** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.drm_radeon_gem_set_domain*
  store %struct.drm_radeon_gem_set_domain* %17, %struct.drm_radeon_gem_set_domain** %9, align 8
  %18 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 0
  %20 = call i32 @down_read(i32* %19)
  %21 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %22 = load %struct.drm_radeon_gem_set_domain*, %struct.drm_radeon_gem_set_domain** %9, align 8
  %23 = getelementptr inbounds %struct.drm_radeon_gem_set_domain, %struct.drm_radeon_gem_set_domain* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %21, i32 %24)
  store %struct.drm_gem_object* %25, %struct.drm_gem_object** %10, align 8
  %26 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %27 = icmp eq %struct.drm_gem_object* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %30 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %29, i32 0, i32 0
  %31 = call i32 @up_read(i32* %30)
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %56

34:                                               ; preds = %3
  %35 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %36 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %35)
  store %struct.radeon_bo* %36, %struct.radeon_bo** %11, align 8
  %37 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %38 = load %struct.drm_radeon_gem_set_domain*, %struct.drm_radeon_gem_set_domain** %9, align 8
  %39 = getelementptr inbounds %struct.drm_radeon_gem_set_domain, %struct.drm_radeon_gem_set_domain* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.drm_radeon_gem_set_domain*, %struct.drm_radeon_gem_set_domain** %9, align 8
  %42 = getelementptr inbounds %struct.drm_radeon_gem_set_domain, %struct.drm_radeon_gem_set_domain* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @radeon_gem_set_domain(%struct.drm_gem_object* %37, i32 %40, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %46 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %45)
  %47 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %48 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %47, i32 0, i32 0
  %49 = call i32 @up_read(i32* %48)
  %50 = load %struct.radeon_bo*, %struct.radeon_bo** %11, align 8
  %51 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @radeon_gem_handle_lockup(i32 %52, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %34, %28
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @radeon_gem_set_domain(%struct.drm_gem_object*, i32, i32) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

declare dso_local i32 @radeon_gem_handle_lockup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
