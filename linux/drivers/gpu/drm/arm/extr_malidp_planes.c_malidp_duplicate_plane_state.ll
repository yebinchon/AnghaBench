; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_planes.c_malidp_duplicate_plane_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_planes.c_malidp_duplicate_plane_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_state = type { i32 }
%struct.drm_plane = type { i32 }
%struct.malidp_plane_state = type { %struct.drm_plane_state, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_plane_state* (%struct.drm_plane*)* @malidp_duplicate_plane_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_plane_state* @malidp_duplicate_plane_state(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane_state*, align 8
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.malidp_plane_state*, align 8
  %5 = alloca %struct.malidp_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  %6 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %7 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.drm_plane_state* null, %struct.drm_plane_state** %2, align 8
  br label %53

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.malidp_plane_state* @kmalloc(i32 24, i32 %12)
  store %struct.malidp_plane_state* %13, %struct.malidp_plane_state** %4, align 8
  %14 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %4, align 8
  %15 = icmp ne %struct.malidp_plane_state* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store %struct.drm_plane_state* null, %struct.drm_plane_state** %2, align 8
  br label %53

17:                                               ; preds = %11
  %18 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %19 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.malidp_plane_state* @to_malidp_plane_state(i32 %20)
  store %struct.malidp_plane_state* %21, %struct.malidp_plane_state** %5, align 8
  %22 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %23 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %4, align 8
  %24 = getelementptr inbounds %struct.malidp_plane_state, %struct.malidp_plane_state* %23, i32 0, i32 0
  %25 = call i32 @__drm_atomic_helper_plane_duplicate_state(%struct.drm_plane* %22, %struct.drm_plane_state* %24)
  %26 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %5, align 8
  %27 = getelementptr inbounds %struct.malidp_plane_state, %struct.malidp_plane_state* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %4, align 8
  %30 = getelementptr inbounds %struct.malidp_plane_state, %struct.malidp_plane_state* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %5, align 8
  %32 = getelementptr inbounds %struct.malidp_plane_state, %struct.malidp_plane_state* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %4, align 8
  %35 = getelementptr inbounds %struct.malidp_plane_state, %struct.malidp_plane_state* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %5, align 8
  %37 = getelementptr inbounds %struct.malidp_plane_state, %struct.malidp_plane_state* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %4, align 8
  %40 = getelementptr inbounds %struct.malidp_plane_state, %struct.malidp_plane_state* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %5, align 8
  %42 = getelementptr inbounds %struct.malidp_plane_state, %struct.malidp_plane_state* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %4, align 8
  %45 = getelementptr inbounds %struct.malidp_plane_state, %struct.malidp_plane_state* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %5, align 8
  %47 = getelementptr inbounds %struct.malidp_plane_state, %struct.malidp_plane_state* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %4, align 8
  %50 = getelementptr inbounds %struct.malidp_plane_state, %struct.malidp_plane_state* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %4, align 8
  %52 = getelementptr inbounds %struct.malidp_plane_state, %struct.malidp_plane_state* %51, i32 0, i32 0
  store %struct.drm_plane_state* %52, %struct.drm_plane_state** %2, align 8
  br label %53

53:                                               ; preds = %17, %16, %10
  %54 = load %struct.drm_plane_state*, %struct.drm_plane_state** %2, align 8
  ret %struct.drm_plane_state* %54
}

declare dso_local %struct.malidp_plane_state* @kmalloc(i32, i32) #1

declare dso_local %struct.malidp_plane_state* @to_malidp_plane_state(i32) #1

declare dso_local i32 @__drm_atomic_helper_plane_duplicate_state(%struct.drm_plane*, %struct.drm_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
