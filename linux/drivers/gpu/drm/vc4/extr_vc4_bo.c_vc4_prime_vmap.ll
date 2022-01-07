; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_prime_vmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_prime_vmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.vc4_bo = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"mmaping of shader BOs not allowed.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vc4_prime_vmap(%struct.drm_gem_object* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.vc4_bo*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  %5 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %6 = call %struct.vc4_bo* @to_vc4_bo(%struct.drm_gem_object* %5)
  store %struct.vc4_bo* %6, %struct.vc4_bo** %4, align 8
  %7 = load %struct.vc4_bo*, %struct.vc4_bo** %4, align 8
  %8 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  %15 = call i8* @ERR_PTR(i32 %14)
  store i8* %15, i8** %2, align 8
  br label %19

16:                                               ; preds = %1
  %17 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %18 = call i8* @drm_gem_cma_prime_vmap(%struct.drm_gem_object* %17)
  store i8* %18, i8** %2, align 8
  br label %19

19:                                               ; preds = %16, %11
  %20 = load i8*, i8** %2, align 8
  ret i8* %20
}

declare dso_local %struct.vc4_bo* @to_vc4_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @drm_gem_cma_prime_vmap(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
