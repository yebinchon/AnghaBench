; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_gem.c_mtk_drm_gem_dumb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_gem.c_mtk_drm_gem_dumb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32 }
%struct.mtk_drm_gem_obj = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_drm_gem_dumb_create(%struct.drm_file* %0, %struct.drm_device* %1, %struct.drm_mode_create_dumb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_mode_create_dumb*, align 8
  %8 = alloca %struct.mtk_drm_gem_obj*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %5, align 8
  store %struct.drm_device* %1, %struct.drm_device** %6, align 8
  store %struct.drm_mode_create_dumb* %2, %struct.drm_mode_create_dumb** %7, align 8
  %10 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %11 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %14 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %12, %15
  %17 = call i32 @DIV_ROUND_UP(i32 %16, i32 8)
  %18 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %19 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %21 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %24 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  %27 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %28 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %30 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %31 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.mtk_drm_gem_obj* @mtk_drm_gem_create(%struct.drm_device* %29, i32 %32, i32 0)
  store %struct.mtk_drm_gem_obj* %33, %struct.mtk_drm_gem_obj** %8, align 8
  %34 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %8, align 8
  %35 = call i64 @IS_ERR(%struct.mtk_drm_gem_obj* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %8, align 8
  %39 = call i32 @PTR_ERR(%struct.mtk_drm_gem_obj* %38)
  store i32 %39, i32* %4, align 4
  br label %59

40:                                               ; preds = %3
  %41 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %42 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %8, align 8
  %43 = getelementptr inbounds %struct.mtk_drm_gem_obj, %struct.mtk_drm_gem_obj* %42, i32 0, i32 0
  %44 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %45 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %44, i32 0, i32 5
  %46 = call i32 @drm_gem_handle_create(%struct.drm_file* %41, i32* %43, i32* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %54

50:                                               ; preds = %40
  %51 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %8, align 8
  %52 = getelementptr inbounds %struct.mtk_drm_gem_obj, %struct.mtk_drm_gem_obj* %51, i32 0, i32 0
  %53 = call i32 @drm_gem_object_put_unlocked(i32* %52)
  store i32 0, i32* %4, align 4
  br label %59

54:                                               ; preds = %49
  %55 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %8, align 8
  %56 = getelementptr inbounds %struct.mtk_drm_gem_obj, %struct.mtk_drm_gem_obj* %55, i32 0, i32 0
  %57 = call i32 @mtk_drm_gem_free_object(i32* %56)
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %54, %50, %37
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.mtk_drm_gem_obj* @mtk_drm_gem_create(%struct.drm_device*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mtk_drm_gem_obj*) #1

declare dso_local i32 @PTR_ERR(%struct.mtk_drm_gem_obj*) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, i32*, i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32*) #1

declare dso_local i32 @mtk_drm_gem_free_object(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
