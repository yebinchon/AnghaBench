; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_plane.c_mdp5_plane_atomic_async_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_plane.c_mdp5_plane_atomic_async_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.drm_plane_state = type { i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.mdp5_plane_state = type { i32 }
%struct.drm_crtc_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @mdp5_plane_atomic_async_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdp5_plane_atomic_async_check(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.mdp5_plane_state*, align 8
  %7 = alloca %struct.drm_crtc_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %11 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %12 = call %struct.mdp5_plane_state* @to_mdp5_plane_state(%struct.drm_plane_state* %11)
  store %struct.mdp5_plane_state* %12, %struct.mdp5_plane_state** %6, align 8
  %13 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %14 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %17 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(i32 %15, i64 %18)
  store %struct.drm_crtc_state* %19, %struct.drm_crtc_state** %7, align 8
  %20 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %21 = icmp ne %struct.drm_crtc_state* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %143

29:                                               ; preds = %2
  %30 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %31 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %143

37:                                               ; preds = %29
  %38 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %39 = call %struct.mdp5_plane_state* @to_mdp5_plane_state(%struct.drm_plane_state* %38)
  store %struct.mdp5_plane_state* %39, %struct.mdp5_plane_state** %6, align 8
  %40 = load %struct.mdp5_plane_state*, %struct.mdp5_plane_state** %6, align 8
  %41 = getelementptr inbounds %struct.mdp5_plane_state, %struct.mdp5_plane_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %143

47:                                               ; preds = %37
  %48 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %49 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %54 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %114, label %57

57:                                               ; preds = %47
  %58 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %59 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %64 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %114, label %67

67:                                               ; preds = %57
  %68 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %69 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %74 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %114, label %77

77:                                               ; preds = %67
  %78 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %79 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %84 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %82, %85
  br i1 %86, label %114, label %87

87:                                               ; preds = %77
  %88 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %89 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %94 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %92, %95
  br i1 %96, label %114, label %97

97:                                               ; preds = %87
  %98 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %99 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %97
  %105 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %106 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %111 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %109, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %104, %97, %87, %77, %67, %57, %47
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %143

117:                                              ; preds = %104
  %118 = call i32 @FRAC_16_16(i32 1, i32 8)
  store i32 %118, i32* %8, align 4
  %119 = call i32 @FRAC_16_16(i32 8, i32 1)
  store i32 %119, i32* %9, align 4
  %120 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %121 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @drm_atomic_helper_check_plane_state(%struct.drm_plane_state* %120, %struct.drm_crtc_state* %121, i32 %122, i32 %123, i32 1, i32 1)
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %117
  %128 = load i32, i32* %10, align 4
  store i32 %128, i32* %3, align 4
  br label %143

129:                                              ; preds = %117
  %130 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %131 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %130, i32 0, i32 6
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %134 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 6
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %132, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %129
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %3, align 4
  br label %143

142:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %142, %139, %127, %114, %44, %34, %26
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local %struct.mdp5_plane_state* @to_mdp5_plane_state(%struct.drm_plane_state*) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(i32, i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @FRAC_16_16(i32, i32) #1

declare dso_local i32 @drm_atomic_helper_check_plane_state(%struct.drm_plane_state*, %struct.drm_crtc_state*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
