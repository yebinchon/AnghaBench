; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_plane.c_armada_drm_plane_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_plane.c_armada_drm_plane_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { i32, %struct.TYPE_5__, %struct.TYPE_5__, i64, %struct.drm_crtc*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.drm_crtc = type { %struct.drm_crtc_state* }
%struct.drm_crtc_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.armada_plane_state = type { i32, i32, i32, i32, i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @armada_drm_plane_atomic_check(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.armada_plane_state*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_crtc_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %11 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %12 = call %struct.armada_plane_state* @to_armada_plane_state(%struct.drm_plane_state* %11)
  store %struct.armada_plane_state* %12, %struct.armada_plane_state** %6, align 8
  %13 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %14 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %13, i32 0, i32 4
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  store %struct.drm_crtc* %15, %struct.drm_crtc** %7, align 8
  %16 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %17 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %22 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %21, i32 0, i32 4
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %22, align 8
  %24 = icmp ne %struct.drm_crtc* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20, %2
  %30 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %31 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  store i32 0, i32* %3, align 4
  br label %168

32:                                               ; preds = %20
  %33 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %34 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %39 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %42 = call %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(i64 %40, %struct.drm_crtc* %41)
  store %struct.drm_crtc_state* %42, %struct.drm_crtc_state** %8, align 8
  br label %47

43:                                               ; preds = %32
  %44 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %45 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %44, i32 0, i32 0
  %46 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %45, align 8
  store %struct.drm_crtc_state* %46, %struct.drm_crtc_state** %8, align 8
  br label %47

47:                                               ; preds = %43, %37
  %48 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %49 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  %50 = load i32, i32* @INT_MAX, align 4
  %51 = call i32 @drm_atomic_helper_check_plane_state(%struct.drm_plane_state* %48, %struct.drm_crtc_state* %49, i32 0, i32 %50, i32 1, i32 0)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %3, align 4
  br label %168

56:                                               ; preds = %47
  %57 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  %58 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %62 = and i32 %60, %61
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %100

65:                                               ; preds = %56
  %66 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %67 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %71 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %69, %73
  %75 = and i32 %74, 1
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %65
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %168

80:                                               ; preds = %65
  %81 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %82 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %81, i32 0, i32 2
  %83 = call i32 @drm_rect_height(%struct.TYPE_5__* %82)
  %84 = ashr i32 %83, 17
  %85 = load %struct.armada_plane_state*, %struct.armada_plane_state** %6, align 8
  %86 = getelementptr inbounds %struct.armada_plane_state, %struct.armada_plane_state* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %88 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = ashr i32 %90, 1
  %92 = load %struct.armada_plane_state*, %struct.armada_plane_state** %6, align 8
  %93 = getelementptr inbounds %struct.armada_plane_state, %struct.armada_plane_state* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %95 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %94, i32 0, i32 1
  %96 = call i32 @drm_rect_height(%struct.TYPE_5__* %95)
  %97 = ashr i32 %96, 1
  %98 = load %struct.armada_plane_state*, %struct.armada_plane_state** %6, align 8
  %99 = getelementptr inbounds %struct.armada_plane_state, %struct.armada_plane_state* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  br label %118

100:                                              ; preds = %56
  %101 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %102 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %101, i32 0, i32 2
  %103 = call i32 @drm_rect_height(%struct.TYPE_5__* %102)
  %104 = ashr i32 %103, 16
  %105 = load %struct.armada_plane_state*, %struct.armada_plane_state** %6, align 8
  %106 = getelementptr inbounds %struct.armada_plane_state, %struct.armada_plane_state* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %108 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.armada_plane_state*, %struct.armada_plane_state** %6, align 8
  %112 = getelementptr inbounds %struct.armada_plane_state, %struct.armada_plane_state* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %114 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %113, i32 0, i32 1
  %115 = call i32 @drm_rect_height(%struct.TYPE_5__* %114)
  %116 = load %struct.armada_plane_state*, %struct.armada_plane_state** %6, align 8
  %117 = getelementptr inbounds %struct.armada_plane_state, %struct.armada_plane_state* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %100, %80
  %119 = load %struct.armada_plane_state*, %struct.armada_plane_state** %6, align 8
  %120 = getelementptr inbounds %struct.armada_plane_state, %struct.armada_plane_state* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = shl i32 %121, 16
  store i32 %122, i32* %120, align 4
  %123 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %124 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %123, i32 0, i32 2
  %125 = call i32 @drm_rect_width(%struct.TYPE_5__* %124)
  %126 = ashr i32 %125, 16
  %127 = load %struct.armada_plane_state*, %struct.armada_plane_state** %6, align 8
  %128 = getelementptr inbounds %struct.armada_plane_state, %struct.armada_plane_state* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load %struct.armada_plane_state*, %struct.armada_plane_state** %6, align 8
  %132 = getelementptr inbounds %struct.armada_plane_state, %struct.armada_plane_state* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = shl i32 %133, 16
  store i32 %134, i32* %132, align 4
  %135 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %136 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 65535
  %140 = load %struct.armada_plane_state*, %struct.armada_plane_state** %6, align 8
  %141 = getelementptr inbounds %struct.armada_plane_state, %struct.armada_plane_state* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  %144 = load %struct.armada_plane_state*, %struct.armada_plane_state** %6, align 8
  %145 = getelementptr inbounds %struct.armada_plane_state, %struct.armada_plane_state* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = shl i32 %146, 16
  store i32 %147, i32* %145, align 4
  %148 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %149 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %148, i32 0, i32 1
  %150 = call i32 @drm_rect_width(%struct.TYPE_5__* %149)
  %151 = and i32 %150, 65535
  %152 = load %struct.armada_plane_state*, %struct.armada_plane_state** %6, align 8
  %153 = getelementptr inbounds %struct.armada_plane_state, %struct.armada_plane_state* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 4
  %156 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %157 = load %struct.armada_plane_state*, %struct.armada_plane_state** %6, align 8
  %158 = getelementptr inbounds %struct.armada_plane_state, %struct.armada_plane_state* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.armada_plane_state*, %struct.armada_plane_state** %6, align 8
  %161 = getelementptr inbounds %struct.armada_plane_state, %struct.armada_plane_state* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @armada_drm_plane_calc(%struct.drm_plane_state* %156, i32 %159, i32 %162, i32 %163)
  %165 = load i32, i32* %9, align 4
  %166 = load %struct.armada_plane_state*, %struct.armada_plane_state** %6, align 8
  %167 = getelementptr inbounds %struct.armada_plane_state, %struct.armada_plane_state* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 4
  store i32 0, i32* %3, align 4
  br label %168

168:                                              ; preds = %118, %77, %54, %29
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local %struct.armada_plane_state* @to_armada_plane_state(%struct.drm_plane_state*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(i64, %struct.drm_crtc*) #1

declare dso_local i32 @drm_atomic_helper_check_plane_state(%struct.drm_plane_state*, %struct.drm_crtc_state*, i32, i32, i32, i32) #1

declare dso_local i32 @drm_rect_height(%struct.TYPE_5__*) #1

declare dso_local i32 @drm_rect_width(%struct.TYPE_5__*) #1

declare dso_local i32 @armada_drm_plane_calc(%struct.drm_plane_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
