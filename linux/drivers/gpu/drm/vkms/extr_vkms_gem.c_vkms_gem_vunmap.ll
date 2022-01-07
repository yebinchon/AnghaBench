; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_gem.c_vkms_gem_vunmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_gem.c_vkms_gem_vunmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.vkms_gem_object = type { i32, i32, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vkms_gem_vunmap(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  %3 = alloca %struct.vkms_gem_object*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %4 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %5 = call %struct.vkms_gem_object* @drm_gem_to_vkms_gem(%struct.drm_gem_object* %4)
  store %struct.vkms_gem_object* %5, %struct.vkms_gem_object** %3, align 8
  %6 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %3, align 8
  %7 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %3, align 8
  %10 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %3, align 8
  %15 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @WARN_ON(i32* %16)
  %18 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %3, align 8
  %19 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @WARN_ON(i32* %20)
  %22 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %3, align 8
  %23 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %22, i32 0, i32 1
  %24 = call i32 @mutex_unlock(i32* %23)
  br label %52

25:                                               ; preds = %1
  %26 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %3, align 8
  %27 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %3, align 8
  %31 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %25
  %35 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %3, align 8
  %36 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @vunmap(i32* %37)
  %39 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %3, align 8
  %40 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %39, i32 0, i32 3
  store i32* null, i32** %40, align 8
  %41 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %42 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %3, align 8
  %43 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @drm_gem_put_pages(%struct.drm_gem_object* %41, i32* %44, i32 0, i32 1)
  %46 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %3, align 8
  %47 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %46, i32 0, i32 2
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %34, %25
  %49 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %3, align 8
  %50 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  br label %52

52:                                               ; preds = %48, %13
  ret void
}

declare dso_local %struct.vkms_gem_object* @drm_gem_to_vkms_gem(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vunmap(i32*) #1

declare dso_local i32 @drm_gem_put_pages(%struct.drm_gem_object*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
