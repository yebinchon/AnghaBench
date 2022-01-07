; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_evict.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_evict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.omap_drm_private* }
%struct.omap_drm_private = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.omap_drm_usergart_entry* }
%struct.omap_drm_usergart_entry = type { %struct.drm_gem_object* }
%struct.omap_gem_object = type { i32 }

@OMAP_BO_TILED = common dso_local global i32 0, align 4
@NUM_USERGART_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_gem_object*)* @omap_gem_evict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_gem_evict(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  %3 = alloca %struct.omap_gem_object*, align 8
  %4 = alloca %struct.omap_drm_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.omap_drm_usergart_entry*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %8 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %9 = call %struct.omap_gem_object* @to_omap_bo(%struct.drm_gem_object* %8)
  store %struct.omap_gem_object* %9, %struct.omap_gem_object** %3, align 8
  %10 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %11 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.omap_drm_private*, %struct.omap_drm_private** %13, align 8
  store %struct.omap_drm_private* %14, %struct.omap_drm_private** %4, align 8
  %15 = load %struct.omap_gem_object*, %struct.omap_gem_object** %3, align 8
  %16 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @OMAP_BO_TILED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %57

21:                                               ; preds = %1
  %22 = load %struct.omap_gem_object*, %struct.omap_gem_object** %3, align 8
  %23 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @gem2fmt(i32 %24)
  store i32 %25, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %53, %21
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @NUM_USERGART_ENTRIES, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %26
  %31 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %32 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.omap_drm_usergart_entry*, %struct.omap_drm_usergart_entry** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.omap_drm_usergart_entry, %struct.omap_drm_usergart_entry* %38, i64 %40
  store %struct.omap_drm_usergart_entry* %41, %struct.omap_drm_usergart_entry** %7, align 8
  %42 = load %struct.omap_drm_usergart_entry*, %struct.omap_drm_usergart_entry** %7, align 8
  %43 = getelementptr inbounds %struct.omap_drm_usergart_entry, %struct.omap_drm_usergart_entry* %42, i32 0, i32 0
  %44 = load %struct.drm_gem_object*, %struct.drm_gem_object** %43, align 8
  %45 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %46 = icmp eq %struct.drm_gem_object* %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %30
  %48 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.omap_drm_usergart_entry*, %struct.omap_drm_usergart_entry** %7, align 8
  %51 = call i32 @omap_gem_evict_entry(%struct.drm_gem_object* %48, i32 %49, %struct.omap_drm_usergart_entry* %50)
  br label %52

52:                                               ; preds = %47, %30
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %26

56:                                               ; preds = %26
  br label %57

57:                                               ; preds = %56, %1
  ret void
}

declare dso_local %struct.omap_gem_object* @to_omap_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @gem2fmt(i32) #1

declare dso_local i32 @omap_gem_evict_entry(%struct.drm_gem_object*, i32, %struct.omap_drm_usergart_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
