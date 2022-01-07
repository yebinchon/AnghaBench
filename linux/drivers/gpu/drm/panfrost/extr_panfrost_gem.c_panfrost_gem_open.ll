; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_gem.c_panfrost_gem_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_gem.c_panfrost_gem_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i64 }
%struct.drm_file = type { %struct.panfrost_file_priv* }
%struct.panfrost_file_priv = type { i32, i32, i32 }
%struct.panfrost_gem_object = type { i32, i32, i32*, i64 }

@PANFROST_BO_NOEXEC = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@SZ_2M = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_gem_object*, %struct.drm_file*)* @panfrost_gem_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panfrost_gem_open(%struct.drm_gem_object* %0, %struct.drm_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.panfrost_gem_object*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.panfrost_file_priv*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %4, align 8
  store %struct.drm_file* %1, %struct.drm_file** %5, align 8
  %12 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %13 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %16 = call %struct.panfrost_gem_object* @to_panfrost_bo(%struct.drm_gem_object* %15)
  store %struct.panfrost_gem_object* %16, %struct.panfrost_gem_object** %9, align 8
  %17 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %9, align 8
  %18 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i64, i64* @PANFROST_BO_NOEXEC, align 8
  br label %24

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i64 [ %22, %21 ], [ 0, %23 ]
  store i64 %25, i64* %10, align 8
  %26 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %27 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %26, i32 0, i32 0
  %28 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %27, align 8
  store %struct.panfrost_file_priv* %28, %struct.panfrost_file_priv** %11, align 8
  %29 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %9, align 8
  %30 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %24
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @PAGE_SHIFT, align 8
  %36 = lshr i64 %34, %35
  store i64 %36, i64* %8, align 8
  br label %48

37:                                               ; preds = %24
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @SZ_2M, align 8
  %40 = icmp uge i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i64, i64* @SZ_2M, align 8
  %43 = load i64, i64* @PAGE_SHIFT, align 8
  %44 = lshr i64 %42, %43
  br label %46

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i64 [ %44, %41 ], [ 0, %45 ]
  store i64 %47, i64* %8, align 8
  br label %48

48:                                               ; preds = %46, %33
  %49 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %11, align 8
  %50 = getelementptr inbounds %struct.panfrost_file_priv, %struct.panfrost_file_priv* %49, i32 0, i32 2
  %51 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %9, align 8
  %52 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %51, i32 0, i32 2
  store i32* %50, i32** %52, align 8
  %53 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %11, align 8
  %54 = getelementptr inbounds %struct.panfrost_file_priv, %struct.panfrost_file_priv* %53, i32 0, i32 0
  %55 = call i32 @spin_lock(i32* %54)
  %56 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %11, align 8
  %57 = getelementptr inbounds %struct.panfrost_file_priv, %struct.panfrost_file_priv* %56, i32 0, i32 1
  %58 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %9, align 8
  %59 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %58, i32 0, i32 0
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* @PAGE_SHIFT, align 8
  %62 = lshr i64 %60, %61
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @drm_mm_insert_node_generic(i32* %57, i32* %59, i64 %62, i64 %63, i64 %64, i32 0)
  store i32 %65, i32* %6, align 4
  %66 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %11, align 8
  %67 = getelementptr inbounds %struct.panfrost_file_priv, %struct.panfrost_file_priv* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %48
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %96

73:                                               ; preds = %48
  %74 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %9, align 8
  %75 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %94, label %78

78:                                               ; preds = %73
  %79 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %9, align 8
  %80 = call i32 @panfrost_mmu_map(%struct.panfrost_gem_object* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %11, align 8
  %85 = getelementptr inbounds %struct.panfrost_file_priv, %struct.panfrost_file_priv* %84, i32 0, i32 0
  %86 = call i32 @spin_lock(i32* %85)
  %87 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %9, align 8
  %88 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %87, i32 0, i32 0
  %89 = call i32 @drm_mm_remove_node(i32* %88)
  %90 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %11, align 8
  %91 = getelementptr inbounds %struct.panfrost_file_priv, %struct.panfrost_file_priv* %90, i32 0, i32 0
  %92 = call i32 @spin_unlock(i32* %91)
  br label %93

93:                                               ; preds = %83, %78
  br label %94

94:                                               ; preds = %93, %73
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %94, %71
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.panfrost_gem_object* @to_panfrost_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @drm_mm_insert_node_generic(i32*, i32*, i64, i64, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @panfrost_mmu_map(%struct.panfrost_gem_object*) #1

declare dso_local i32 @drm_mm_remove_node(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
