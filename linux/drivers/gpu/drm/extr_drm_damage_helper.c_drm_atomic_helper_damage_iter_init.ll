; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_damage_helper.c_drm_atomic_helper_damage_iter_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_damage_helper.c_drm_atomic_helper_damage_iter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_atomic_helper_damage_iter = type { i32, i64, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.drm_plane_state = type { %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_atomic_helper_damage_iter_init(%struct.drm_atomic_helper_damage_iter* %0, %struct.drm_plane_state* %1, %struct.drm_plane_state* %2) #0 {
  %4 = alloca %struct.drm_atomic_helper_damage_iter*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.drm_plane_state*, align 8
  store %struct.drm_atomic_helper_damage_iter* %0, %struct.drm_atomic_helper_damage_iter** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  store %struct.drm_plane_state* %2, %struct.drm_plane_state** %6, align 8
  %7 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %4, align 8
  %8 = call i32 @memset(%struct.drm_atomic_helper_damage_iter* %7, i32 0, i32 40)
  %9 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %10 = icmp ne %struct.drm_plane_state* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %3
  %12 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %13 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %18 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %23 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %16, %11, %3
  br label %106

27:                                               ; preds = %21
  %28 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %29 = call i32* @drm_helper_get_plane_damage_clips(%struct.drm_plane_state* %28)
  %30 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %4, align 8
  %31 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  %32 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %33 = call i64 @drm_plane_get_damage_clips_count(%struct.drm_plane_state* %32)
  %34 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %4, align 8
  %35 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %37 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 16
  %41 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %4, align 8
  %42 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %45 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 16
  %49 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %4, align 8
  %50 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %53 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 16
  %57 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %58 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 65535
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = add nsw i32 %56, %65
  %67 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %4, align 8
  %68 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 8
  %70 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %71 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = ashr i32 %73, 16
  %75 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %76 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 65535
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = add nsw i32 %74, %83
  %85 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %4, align 8
  %86 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  store i32 %84, i32* %87, align 4
  %88 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %4, align 8
  %89 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %27
  %93 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %94 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %93, i32 0, i32 0
  %95 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %96 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %95, i32 0, i32 0
  %97 = call i32 @drm_rect_equals(%struct.TYPE_5__* %94, %struct.TYPE_5__* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %92, %27
  %100 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %4, align 8
  %101 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %100, i32 0, i32 2
  store i32* null, i32** %101, align 8
  %102 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %4, align 8
  %103 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %102, i32 0, i32 1
  store i64 0, i64* %103, align 8
  %104 = load %struct.drm_atomic_helper_damage_iter*, %struct.drm_atomic_helper_damage_iter** %4, align 8
  %105 = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, %struct.drm_atomic_helper_damage_iter* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  br label %106

106:                                              ; preds = %26, %99, %92
  ret void
}

declare dso_local i32 @memset(%struct.drm_atomic_helper_damage_iter*, i32, i32) #1

declare dso_local i32* @drm_helper_get_plane_damage_clips(%struct.drm_plane_state*) #1

declare dso_local i64 @drm_plane_get_damage_clips_count(%struct.drm_plane_state*) #1

declare dso_local i32 @drm_rect_equals(%struct.TYPE_5__*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
