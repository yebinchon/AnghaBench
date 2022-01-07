; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_object_release_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_object_release_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_gem_object = type { i32, %struct.TYPE_4__*, %struct.drm_device* }
%struct.TYPE_4__ = type { i32 (%struct.drm_gem_object*, %struct.drm_file*)* }
%struct.drm_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.drm_gem_object*, %struct.drm_file*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @drm_gem_object_release_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_gem_object_release_handle(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_gem_object*, align 8
  %9 = alloca %struct.drm_device*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.drm_file*
  store %struct.drm_file* %11, %struct.drm_file** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.drm_gem_object*
  store %struct.drm_gem_object* %13, %struct.drm_gem_object** %8, align 8
  %14 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %15 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %14, i32 0, i32 2
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %9, align 8
  %17 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %18 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %3
  %22 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %23 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32 (%struct.drm_gem_object*, %struct.drm_file*)*, i32 (%struct.drm_gem_object*, %struct.drm_file*)** %25, align 8
  %27 = icmp ne i32 (%struct.drm_gem_object*, %struct.drm_file*)* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %30 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (%struct.drm_gem_object*, %struct.drm_file*)*, i32 (%struct.drm_gem_object*, %struct.drm_file*)** %32, align 8
  %34 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %35 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %36 = call i32 %33(%struct.drm_gem_object* %34, %struct.drm_file* %35)
  br label %54

37:                                               ; preds = %21, %3
  %38 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %39 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32 (%struct.drm_gem_object*, %struct.drm_file*)*, i32 (%struct.drm_gem_object*, %struct.drm_file*)** %41, align 8
  %43 = icmp ne i32 (%struct.drm_gem_object*, %struct.drm_file*)* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %46 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32 (%struct.drm_gem_object*, %struct.drm_file*)*, i32 (%struct.drm_gem_object*, %struct.drm_file*)** %48, align 8
  %50 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %51 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %52 = call i32 %49(%struct.drm_gem_object* %50, %struct.drm_file* %51)
  br label %53

53:                                               ; preds = %44, %37
  br label %54

54:                                               ; preds = %53, %28
  %55 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %56 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %57 = call i32 @drm_gem_remove_prime_handles(%struct.drm_gem_object* %55, %struct.drm_file* %56)
  %58 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %59 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %58, i32 0, i32 0
  %60 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %61 = call i32 @drm_vma_node_revoke(i32* %59, %struct.drm_file* %60)
  %62 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %63 = call i32 @drm_gem_object_handle_put_unlocked(%struct.drm_gem_object* %62)
  ret i32 0
}

declare dso_local i32 @drm_gem_remove_prime_handles(%struct.drm_gem_object*, %struct.drm_file*) #1

declare dso_local i32 @drm_vma_node_revoke(i32*, %struct.drm_file*) #1

declare dso_local i32 @drm_gem_object_handle_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
