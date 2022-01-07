; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_plane.c_vc4_write_scaling_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_plane.c_vc4_write_scaling_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_state = type { i32 }
%struct.vc4_plane_state = type { i64*, i64*, i32, i32*, i32, i32* }

@VC4_SCALING_PPF = common dso_local global i64 0, align 8
@VC4_SCALING_TPZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane_state*, i32)* @vc4_write_scaling_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_write_scaling_parameters(%struct.drm_plane_state* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_plane_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vc4_plane_state*, align 8
  store %struct.drm_plane_state* %0, %struct.drm_plane_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %7 = call %struct.vc4_plane_state* @to_vc4_plane_state(%struct.drm_plane_state* %6)
  store %struct.vc4_plane_state* %7, %struct.vc4_plane_state** %5, align 8
  %8 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %9 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, i64* %10, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @VC4_SCALING_PPF, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %19 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %20 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %27 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @vc4_write_ppf(%struct.vc4_plane_state* %18, i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %17, %2
  %31 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %32 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @VC4_SCALING_PPF, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %30
  %41 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %42 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %43 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %50 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @vc4_write_ppf(%struct.vc4_plane_state* %41, i32 %48, i32 %51)
  %53 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %54 = call i32 @vc4_dlist_write(%struct.vc4_plane_state* %53, i32 -1061109568)
  br label %55

55:                                               ; preds = %40, %30
  %56 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %57 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @VC4_SCALING_TPZ, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %55
  %66 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %67 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %68 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %67, i32 0, i32 5
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %75 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @vc4_write_tpz(%struct.vc4_plane_state* %66, i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %65, %55
  %79 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %80 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @VC4_SCALING_TPZ, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %78
  %89 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %90 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %91 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %98 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @vc4_write_tpz(%struct.vc4_plane_state* %89, i32 %96, i32 %99)
  %101 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %102 = call i32 @vc4_dlist_write(%struct.vc4_plane_state* %101, i32 -1061109568)
  br label %103

103:                                              ; preds = %88, %78
  ret void
}

declare dso_local %struct.vc4_plane_state* @to_vc4_plane_state(%struct.drm_plane_state*) #1

declare dso_local i32 @vc4_write_ppf(%struct.vc4_plane_state*, i32, i32) #1

declare dso_local i32 @vc4_dlist_write(%struct.vc4_plane_state*, i32) #1

declare dso_local i32 @vc4_write_tpz(%struct.vc4_plane_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
