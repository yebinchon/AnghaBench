; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_plane.c_vc4_plane_atomic_async_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_plane.c_vc4_plane_atomic_async_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.drm_plane_state* }
%struct.drm_plane_state = type { i32 }
%struct.vc4_plane_state = type { i64, i64, i64, i64, i64, i64* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @vc4_plane_atomic_async_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_plane_atomic_async_check(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.vc4_plane_state*, align 8
  %7 = alloca %struct.vc4_plane_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %10 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %11 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %12 = call i32 @vc4_plane_mode_set(%struct.drm_plane* %10, %struct.drm_plane_state* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %125

17:                                               ; preds = %2
  %18 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %19 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %18, i32 0, i32 0
  %20 = load %struct.drm_plane_state*, %struct.drm_plane_state** %19, align 8
  %21 = call %struct.vc4_plane_state* @to_vc4_plane_state(%struct.drm_plane_state* %20)
  store %struct.vc4_plane_state* %21, %struct.vc4_plane_state** %6, align 8
  %22 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %23 = call %struct.vc4_plane_state* @to_vc4_plane_state(%struct.drm_plane_state* %22)
  store %struct.vc4_plane_state* %23, %struct.vc4_plane_state** %7, align 8
  %24 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %6, align 8
  %25 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %28 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %63, label %31

31:                                               ; preds = %17
  %32 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %6, align 8
  %33 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %36 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %63, label %39

39:                                               ; preds = %31
  %40 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %6, align 8
  %41 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %44 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %63, label %47

47:                                               ; preds = %39
  %48 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %6, align 8
  %49 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %52 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %63, label %55

55:                                               ; preds = %47
  %56 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %57 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %56, i32 0, i32 0
  %58 = load %struct.drm_plane_state*, %struct.drm_plane_state** %57, align 8
  %59 = call i64 @vc4_lbm_size(%struct.drm_plane_state* %58)
  %60 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %61 = call i64 @vc4_lbm_size(%struct.drm_plane_state* %60)
  %62 = icmp ne i64 %59, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %55, %47, %39, %31, %17
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %125

66:                                               ; preds = %55
  store i64 0, i64* %9, align 8
  br label %67

67:                                               ; preds = %121, %66
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %70 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ult i64 %68, %71
  br i1 %72, label %73, label %124

73:                                               ; preds = %67
  %74 = load i64, i64* %9, align 8
  %75 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %76 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %102, label %79

79:                                               ; preds = %73
  %80 = load i64, i64* %9, align 8
  %81 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %82 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %80, %83
  br i1 %84, label %102, label %85

85:                                               ; preds = %79
  %86 = load i64, i64* %9, align 8
  %87 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %88 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %102, label %91

91:                                               ; preds = %85
  %92 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %93 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load i64, i64* %9, align 8
  %98 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %99 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %97, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96, %85, %79, %73
  br label %121

103:                                              ; preds = %96, %91
  %104 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %7, align 8
  %105 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %104, i32 0, i32 5
  %106 = load i64*, i64** %105, align 8
  %107 = load i64, i64* %9, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %6, align 8
  %111 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %110, i32 0, i32 5
  %112 = load i64*, i64** %111, align 8
  %113 = load i64, i64* %9, align 8
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %109, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %103
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %125

120:                                              ; preds = %103
  br label %121

121:                                              ; preds = %120, %102
  %122 = load i64, i64* %9, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %9, align 8
  br label %67

124:                                              ; preds = %67
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %117, %63, %15
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @vc4_plane_mode_set(%struct.drm_plane*, %struct.drm_plane_state*) #1

declare dso_local %struct.vc4_plane_state* @to_vc4_plane_state(%struct.drm_plane_state*) #1

declare dso_local i64 @vc4_lbm_size(%struct.drm_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
