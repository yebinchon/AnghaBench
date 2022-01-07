; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_gem.c_armada_gem_mmap_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_gem.c_armada_gem_mmap_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_armada_gem_mmap = type { i64, i32, i32, i32 }
%struct.armada_gem_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @armada_gem_mmap_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_armada_gem_mmap*, align 8
  %9 = alloca %struct.armada_gem_object*, align 8
  %10 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_armada_gem_mmap*
  store %struct.drm_armada_gem_mmap* %12, %struct.drm_armada_gem_mmap** %8, align 8
  %13 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %14 = load %struct.drm_armada_gem_mmap*, %struct.drm_armada_gem_mmap** %8, align 8
  %15 = getelementptr inbounds %struct.drm_armada_gem_mmap, %struct.drm_armada_gem_mmap* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.armada_gem_object* @armada_gem_object_lookup(%struct.drm_file* %13, i32 %16)
  store %struct.armada_gem_object* %17, %struct.armada_gem_object** %9, align 8
  %18 = load %struct.armada_gem_object*, %struct.armada_gem_object** %9, align 8
  %19 = icmp eq %struct.armada_gem_object* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %64

23:                                               ; preds = %3
  %24 = load %struct.armada_gem_object*, %struct.armada_gem_object** %9, align 8
  %25 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.armada_gem_object*, %struct.armada_gem_object** %9, align 8
  %31 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %30, i32 0, i32 0
  %32 = call i32 @drm_gem_object_put_unlocked(%struct.TYPE_2__* %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %64

35:                                               ; preds = %23
  %36 = load %struct.armada_gem_object*, %struct.armada_gem_object** %9, align 8
  %37 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.drm_armada_gem_mmap*, %struct.drm_armada_gem_mmap** %8, align 8
  %41 = getelementptr inbounds %struct.drm_armada_gem_mmap, %struct.drm_armada_gem_mmap* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PROT_READ, align 4
  %44 = load i32, i32* @PROT_WRITE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @MAP_SHARED, align 4
  %47 = load %struct.drm_armada_gem_mmap*, %struct.drm_armada_gem_mmap** %8, align 8
  %48 = getelementptr inbounds %struct.drm_armada_gem_mmap, %struct.drm_armada_gem_mmap* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @vm_mmap(i32 %39, i32 0, i32 %42, i32 %45, i32 %46, i32 %49)
  store i64 %50, i64* %10, align 8
  %51 = load %struct.armada_gem_object*, %struct.armada_gem_object** %9, align 8
  %52 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %51, i32 0, i32 0
  %53 = call i32 @drm_gem_object_put_unlocked(%struct.TYPE_2__* %52)
  %54 = load i64, i64* %10, align 8
  %55 = call i64 @IS_ERR_VALUE(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %35
  %58 = load i64, i64* %10, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %4, align 4
  br label %64

60:                                               ; preds = %35
  %61 = load i64, i64* %10, align 8
  %62 = load %struct.drm_armada_gem_mmap*, %struct.drm_armada_gem_mmap** %8, align 8
  %63 = getelementptr inbounds %struct.drm_armada_gem_mmap, %struct.drm_armada_gem_mmap* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %60, %57, %29, %20
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.armada_gem_object* @armada_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.TYPE_2__*) #1

declare dso_local i64 @vm_mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR_VALUE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
