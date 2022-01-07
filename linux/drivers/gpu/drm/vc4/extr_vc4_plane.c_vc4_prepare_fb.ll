; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_plane.c_vc4_prepare_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_plane.c_vc4_prepare_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.drm_plane_state = type { i64 }
%struct.vc4_bo = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @vc4_prepare_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_prepare_fb(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.vc4_bo*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %8 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %9 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

13:                                               ; preds = %2
  %14 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %15 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call %struct.TYPE_4__* @drm_fb_cma_get_gem_obj(i64 %16, i32 0)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call %struct.vc4_bo* @to_vc4_bo(i32* %18)
  store %struct.vc4_bo* %19, %struct.vc4_bo** %6, align 8
  %20 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %21 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %22 = call i32 @drm_gem_fb_prepare_fb(%struct.drm_plane* %20, %struct.drm_plane_state* %21)
  %23 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %24 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %29 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %41

33:                                               ; preds = %13
  %34 = load %struct.vc4_bo*, %struct.vc4_bo** %6, align 8
  %35 = call i32 @vc4_bo_inc_usecnt(%struct.vc4_bo* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %41

40:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %38, %32, %12
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.vc4_bo* @to_vc4_bo(i32*) #1

declare dso_local %struct.TYPE_4__* @drm_fb_cma_get_gem_obj(i64, i32) #1

declare dso_local i32 @drm_gem_fb_prepare_fb(%struct.drm_plane*, %struct.drm_plane_state*) #1

declare dso_local i32 @vc4_bo_inc_usecnt(%struct.vc4_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
