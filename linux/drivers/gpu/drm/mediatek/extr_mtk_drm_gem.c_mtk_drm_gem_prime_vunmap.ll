; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_gem.c_mtk_drm_gem_prime_vunmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_gem.c_mtk_drm_gem_prime_vunmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.mtk_drm_gem_obj = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mtk_drm_gem_prime_vunmap(%struct.drm_gem_object* %0, i8* %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mtk_drm_gem_obj*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %7 = call %struct.mtk_drm_gem_obj* @to_mtk_gem_obj(%struct.drm_gem_object* %6)
  store %struct.mtk_drm_gem_obj* %7, %struct.mtk_drm_gem_obj** %5, align 8
  %8 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %5, align 8
  %9 = getelementptr inbounds %struct.mtk_drm_gem_obj, %struct.mtk_drm_gem_obj* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %23

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @vunmap(i8* %14)
  %16 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %5, align 8
  %17 = getelementptr inbounds %struct.mtk_drm_gem_obj, %struct.mtk_drm_gem_obj* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %5, align 8
  %19 = getelementptr inbounds %struct.mtk_drm_gem_obj, %struct.mtk_drm_gem_obj* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @kfree(i8* %21)
  br label %23

23:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.mtk_drm_gem_obj* @to_mtk_gem_obj(%struct.drm_gem_object*) #1

declare dso_local i32 @vunmap(i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
