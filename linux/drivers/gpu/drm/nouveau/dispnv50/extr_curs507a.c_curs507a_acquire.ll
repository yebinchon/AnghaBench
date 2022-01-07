; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_curs507a.c_curs507a_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_curs507a.c_curs507a_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_wndw = type { i32 }
%struct.nv50_wndw_atom = type { %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.nv50_head_atom = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.nv50_head = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.nv50_head*, %struct.nv50_wndw_atom*, %struct.nv50_head_atom*)*, i32 (%struct.nv50_head*, %struct.nv50_wndw_atom*, %struct.nv50_head_atom*)* }

@DRM_PLANE_HELPER_NO_SCALING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv50_wndw*, %struct.nv50_wndw_atom*, %struct.nv50_head_atom*)* @curs507a_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @curs507a_acquire(%struct.nv50_wndw* %0, %struct.nv50_wndw_atom* %1, %struct.nv50_head_atom* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv50_wndw*, align 8
  %6 = alloca %struct.nv50_wndw_atom*, align 8
  %7 = alloca %struct.nv50_head_atom*, align 8
  %8 = alloca %struct.nv50_head*, align 8
  %9 = alloca i32, align 4
  store %struct.nv50_wndw* %0, %struct.nv50_wndw** %5, align 8
  store %struct.nv50_wndw_atom* %1, %struct.nv50_wndw_atom** %6, align 8
  store %struct.nv50_head_atom* %2, %struct.nv50_head_atom** %7, align 8
  %10 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %11 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.nv50_head* @nv50_head(i32 %13)
  store %struct.nv50_head* %14, %struct.nv50_head** %8, align 8
  %15 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %16 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %15, i32 0, i32 1
  %17 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %7, align 8
  %18 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %17, i32 0, i32 1
  %19 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  %20 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  %21 = call i32 @drm_atomic_helper_check_plane_state(%struct.TYPE_8__* %16, i32* %18, i32 %19, i32 %20, i32 1, i32 1)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %23 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %7, align 8
  %27 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %3
  %32 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %7, align 8
  %33 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %31, %3
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %76

39:                                               ; preds = %31
  %40 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %41 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %45 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %43, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %76

52:                                               ; preds = %39
  %53 = load %struct.nv50_head*, %struct.nv50_head** %8, align 8
  %54 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32 (%struct.nv50_head*, %struct.nv50_wndw_atom*, %struct.nv50_head_atom*)*, i32 (%struct.nv50_head*, %struct.nv50_wndw_atom*, %struct.nv50_head_atom*)** %56, align 8
  %58 = load %struct.nv50_head*, %struct.nv50_head** %8, align 8
  %59 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %60 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %7, align 8
  %61 = call i32 %57(%struct.nv50_head* %58, %struct.nv50_wndw_atom* %59, %struct.nv50_head_atom* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %4, align 4
  br label %76

66:                                               ; preds = %52
  %67 = load %struct.nv50_head*, %struct.nv50_head** %8, align 8
  %68 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32 (%struct.nv50_head*, %struct.nv50_wndw_atom*, %struct.nv50_head_atom*)*, i32 (%struct.nv50_head*, %struct.nv50_wndw_atom*, %struct.nv50_head_atom*)** %70, align 8
  %72 = load %struct.nv50_head*, %struct.nv50_head** %8, align 8
  %73 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %74 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %7, align 8
  %75 = call i32 %71(%struct.nv50_head* %72, %struct.nv50_wndw_atom* %73, %struct.nv50_head_atom* %74)
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %66, %64, %49, %37
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.nv50_head* @nv50_head(i32) #1

declare dso_local i32 @drm_atomic_helper_check_plane_state(%struct.TYPE_8__*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
