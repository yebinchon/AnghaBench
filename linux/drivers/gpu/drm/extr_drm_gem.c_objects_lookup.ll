; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_objects_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_objects_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32, i32 }
%struct.drm_gem_object = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_file*, i32*, i32, %struct.drm_gem_object**)* @objects_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @objects_lookup(%struct.drm_file* %0, i32* %1, i32 %2, %struct.drm_gem_object** %3) #0 {
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_gem_object**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_gem_object*, align 8
  store %struct.drm_file* %0, %struct.drm_file** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.drm_gem_object** %3, %struct.drm_gem_object*** %8, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %13 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %41, %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %15
  %20 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %21 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %20, i32 0, i32 1
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.drm_gem_object* @idr_find(i32* %21, i32 %26)
  store %struct.drm_gem_object* %27, %struct.drm_gem_object** %11, align 8
  %28 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %29 = icmp ne %struct.drm_gem_object* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %19
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %10, align 4
  br label %44

33:                                               ; preds = %19
  %34 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %35 = call i32 @drm_gem_object_get(%struct.drm_gem_object* %34)
  %36 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %37 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %37, i64 %39
  store %struct.drm_gem_object* %36, %struct.drm_gem_object** %40, align 8
  br label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %15

44:                                               ; preds = %30, %15
  %45 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %46 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load i32, i32* %10, align 4
  ret i32 %48
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.drm_gem_object* @idr_find(i32*, i32) #1

declare dso_local i32 @drm_gem_object_get(%struct.drm_gem_object*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
