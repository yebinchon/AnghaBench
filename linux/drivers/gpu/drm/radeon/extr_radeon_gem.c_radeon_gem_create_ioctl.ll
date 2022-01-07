; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_create_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_create_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_radeon_gem_create = type { i32, i32, i32, i32, i32 }
%struct.drm_gem_object = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_gem_create_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.drm_radeon_gem_create*, align 8
  %10 = alloca %struct.drm_gem_object*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  store %struct.radeon_device* %15, %struct.radeon_device** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.drm_radeon_gem_create*
  store %struct.drm_radeon_gem_create* %17, %struct.drm_radeon_gem_create** %9, align 8
  %18 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 0
  %20 = call i32 @down_read(i32* %19)
  %21 = load %struct.drm_radeon_gem_create*, %struct.drm_radeon_gem_create** %9, align 8
  %22 = getelementptr inbounds %struct.drm_radeon_gem_create, %struct.drm_radeon_gem_create* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = call i32 @roundup(i32 %23, i32 %24)
  %26 = load %struct.drm_radeon_gem_create*, %struct.drm_radeon_gem_create** %9, align 8
  %27 = getelementptr inbounds %struct.drm_radeon_gem_create, %struct.drm_radeon_gem_create* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %29 = load %struct.drm_radeon_gem_create*, %struct.drm_radeon_gem_create** %9, align 8
  %30 = getelementptr inbounds %struct.drm_radeon_gem_create, %struct.drm_radeon_gem_create* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.drm_radeon_gem_create*, %struct.drm_radeon_gem_create** %9, align 8
  %33 = getelementptr inbounds %struct.drm_radeon_gem_create, %struct.drm_radeon_gem_create* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.drm_radeon_gem_create*, %struct.drm_radeon_gem_create** %9, align 8
  %36 = getelementptr inbounds %struct.drm_radeon_gem_create, %struct.drm_radeon_gem_create* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.drm_radeon_gem_create*, %struct.drm_radeon_gem_create** %9, align 8
  %39 = getelementptr inbounds %struct.drm_radeon_gem_create, %struct.drm_radeon_gem_create* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @radeon_gem_object_create(%struct.radeon_device* %28, i32 %31, i32 %34, i32 %37, i32 %40, i32 0, %struct.drm_gem_object** %10)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %3
  %45 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 0
  %47 = call i32 @up_read(i32* %46)
  %48 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @radeon_gem_handle_lockup(%struct.radeon_device* %48, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %4, align 4
  br label %75

52:                                               ; preds = %3
  %53 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %54 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %55 = call i32 @drm_gem_handle_create(%struct.drm_file* %53, %struct.drm_gem_object* %54, i32* %11)
  store i32 %55, i32* %12, align 4
  %56 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %57 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %56)
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %52
  %61 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %62 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %61, i32 0, i32 0
  %63 = call i32 @up_read(i32* %62)
  %64 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @radeon_gem_handle_lockup(%struct.radeon_device* %64, i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %4, align 4
  br label %75

68:                                               ; preds = %52
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.drm_radeon_gem_create*, %struct.drm_radeon_gem_create** %9, align 8
  %71 = getelementptr inbounds %struct.drm_radeon_gem_create, %struct.drm_radeon_gem_create* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %73 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %72, i32 0, i32 0
  %74 = call i32 @up_read(i32* %73)
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %68, %60, %44
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @radeon_gem_object_create(%struct.radeon_device*, i32, i32, i32, i32, i32, %struct.drm_gem_object**) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @radeon_gem_handle_lockup(%struct.radeon_device*, i32) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, %struct.drm_gem_object*, i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
