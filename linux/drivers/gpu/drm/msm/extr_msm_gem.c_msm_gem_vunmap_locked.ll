; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_vunmap_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_vunmap_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.msm_gem_object = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_gem_object*)* @msm_gem_vunmap_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_gem_vunmap_locked(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  %3 = alloca %struct.msm_gem_object*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %4 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %5 = call %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object* %4)
  store %struct.msm_gem_object* %5, %struct.msm_gem_object** %3, align 8
  %6 = load %struct.msm_gem_object*, %struct.msm_gem_object** %3, align 8
  %7 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %6, i32 0, i32 1
  %8 = call i32 @mutex_is_locked(i32* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = load %struct.msm_gem_object*, %struct.msm_gem_object** %3, align 8
  %14 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.msm_gem_object*, %struct.msm_gem_object** %3, align 8
  %19 = call i32 @is_vunmapable(%struct.msm_gem_object* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17, %1
  br label %33

26:                                               ; preds = %17
  %27 = load %struct.msm_gem_object*, %struct.msm_gem_object** %3, align 8
  %28 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @vunmap(i32* %29)
  %31 = load %struct.msm_gem_object*, %struct.msm_gem_object** %3, align 8
  %32 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %26, %25
  ret void
}

declare dso_local %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @is_vunmapable(%struct.msm_gem_object*) #1

declare dso_local i32 @vunmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
