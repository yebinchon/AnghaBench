; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_plane.c_vc4_lbm_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_plane.c_vc4_lbm_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_state = type { i32 }
%struct.vc4_plane_state = type { i64*, i32, i64, i32* }

@VC4_SCALING_NONE = common dso_local global i64 0, align 8
@VC4_SCALING_TPZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane_state*)* @vc4_lbm_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_lbm_size(%struct.drm_plane_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_plane_state*, align 8
  %4 = alloca %struct.vc4_plane_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_plane_state* %0, %struct.drm_plane_state** %3, align 8
  %7 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %8 = call %struct.vc4_plane_state* @to_vc4_plane_state(%struct.drm_plane_state* %7)
  store %struct.vc4_plane_state* %8, %struct.vc4_plane_state** %4, align 8
  %9 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %10 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %15 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @max(i32 %13, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %20 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VC4_SCALING_NONE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %1
  %27 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %28 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VC4_SCALING_NONE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %62

35:                                               ; preds = %26, %1
  %36 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %37 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %35
  %41 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %42 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @VC4_SCALING_TPZ, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* %5, align 4
  %50 = mul nsw i32 %49, 8
  store i32 %50, i32* %6, align 4
  br label %54

51:                                               ; preds = %40
  %52 = load i32, i32* %5, align 4
  %53 = mul nsw i32 %52, 16
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %51, %48
  br label %58

55:                                               ; preds = %35
  %56 = load i32, i32* %5, align 4
  %57 = mul nsw i32 %56, 16
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %55, %54
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @roundup(i32 %59, i32 32)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %58, %34
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.vc4_plane_state* @to_vc4_plane_state(%struct.drm_plane_state*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
