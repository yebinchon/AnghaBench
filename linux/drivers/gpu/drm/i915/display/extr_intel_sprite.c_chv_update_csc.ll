; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_chv_update_csc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_chv_update_csc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.drm_framebuffer*, i32 }
%struct.drm_framebuffer = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.intel_plane = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@chv_update_csc.csc_matrix = internal constant [130 x [9 x i32]] [[9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] zeroinitializer, [9 x i32] [i32 6450, i32 4096, i32 0, i32 -1917, i32 4096, i32 -767, i32 0, i32 4096, i32 7601], [9 x i32] [i32 5743, i32 4096, i32 0, i32 -2925, i32 4096, i32 -1410, i32 0, i32 4096, i32 7258]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_plane_state*)* @chv_update_csc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chv_update_csc(%struct.intel_plane_state* %0) #0 {
  %2 = alloca %struct.intel_plane_state*, align 8
  %3 = alloca %struct.intel_plane*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.drm_framebuffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.intel_plane_state* %0, %struct.intel_plane_state** %2, align 8
  %8 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %9 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.intel_plane* @to_intel_plane(i32 %11)
  store %struct.intel_plane* %12, %struct.intel_plane** %3, align 8
  %13 = load %struct.intel_plane*, %struct.intel_plane** %3, align 8
  %14 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.drm_i915_private* @to_i915(i32 %16)
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %4, align 8
  %18 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %19 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %20, align 8
  store %struct.drm_framebuffer* %21, %struct.drm_framebuffer** %5, align 8
  %22 = load %struct.intel_plane*, %struct.intel_plane** %3, align 8
  %23 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %26 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds [130 x [9 x i32]], [130 x [9 x i32]]* @chv_update_csc.csc_matrix, i64 0, i64 %28
  %30 = getelementptr inbounds [9 x i32], [9 x i32]* %29, i64 0, i64 0
  store i32* %30, i32** %7, align 8
  %31 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %32 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %1
  br label %148

38:                                               ; preds = %1
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @SPCSCYGOFF(i32 %39)
  %41 = call i32 @SPCSC_OOFF(i32 0)
  %42 = call i32 @SPCSC_IOFF(i32 0)
  %43 = or i32 %41, %42
  %44 = call i32 @I915_WRITE_FW(i32 %40, i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @SPCSCCBOFF(i32 %45)
  %47 = call i32 @SPCSC_OOFF(i32 0)
  %48 = call i32 @SPCSC_IOFF(i32 0)
  %49 = or i32 %47, %48
  %50 = call i32 @I915_WRITE_FW(i32 %46, i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @SPCSCCROFF(i32 %51)
  %53 = call i32 @SPCSC_OOFF(i32 0)
  %54 = call i32 @SPCSC_IOFF(i32 0)
  %55 = or i32 %53, %54
  %56 = call i32 @I915_WRITE_FW(i32 %52, i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @SPCSCC01(i32 %57)
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @SPCSC_C1(i32 %61)
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @SPCSC_C0(i32 %65)
  %67 = or i32 %62, %66
  %68 = call i32 @I915_WRITE_FW(i32 %58, i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @SPCSCC23(i32 %69)
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @SPCSC_C1(i32 %73)
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @SPCSC_C0(i32 %77)
  %79 = or i32 %74, %78
  %80 = call i32 @I915_WRITE_FW(i32 %70, i32 %79)
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @SPCSCC45(i32 %81)
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 5
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @SPCSC_C1(i32 %85)
  %87 = load i32*, i32** %7, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 4
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @SPCSC_C0(i32 %89)
  %91 = or i32 %86, %90
  %92 = call i32 @I915_WRITE_FW(i32 %82, i32 %91)
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @SPCSCC67(i32 %93)
  %95 = load i32*, i32** %7, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 7
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @SPCSC_C1(i32 %97)
  %99 = load i32*, i32** %7, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 6
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @SPCSC_C0(i32 %101)
  %103 = or i32 %98, %102
  %104 = call i32 @I915_WRITE_FW(i32 %94, i32 %103)
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @SPCSCC8(i32 %105)
  %107 = load i32*, i32** %7, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 8
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @SPCSC_C0(i32 %109)
  %111 = call i32 @I915_WRITE_FW(i32 %106, i32 %110)
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @SPCSCYGICLAMP(i32 %112)
  %114 = call i32 @SPCSC_IMAX(i32 1023)
  %115 = call i32 @SPCSC_IMIN(i32 0)
  %116 = or i32 %114, %115
  %117 = call i32 @I915_WRITE_FW(i32 %113, i32 %116)
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @SPCSCCBICLAMP(i32 %118)
  %120 = call i32 @SPCSC_IMAX(i32 512)
  %121 = call i32 @SPCSC_IMIN(i32 -512)
  %122 = or i32 %120, %121
  %123 = call i32 @I915_WRITE_FW(i32 %119, i32 %122)
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @SPCSCCRICLAMP(i32 %124)
  %126 = call i32 @SPCSC_IMAX(i32 512)
  %127 = call i32 @SPCSC_IMIN(i32 -512)
  %128 = or i32 %126, %127
  %129 = call i32 @I915_WRITE_FW(i32 %125, i32 %128)
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @SPCSCYGOCLAMP(i32 %130)
  %132 = call i32 @SPCSC_OMAX(i32 1023)
  %133 = call i32 @SPCSC_OMIN(i32 0)
  %134 = or i32 %132, %133
  %135 = call i32 @I915_WRITE_FW(i32 %131, i32 %134)
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @SPCSCCBOCLAMP(i32 %136)
  %138 = call i32 @SPCSC_OMAX(i32 1023)
  %139 = call i32 @SPCSC_OMIN(i32 0)
  %140 = or i32 %138, %139
  %141 = call i32 @I915_WRITE_FW(i32 %137, i32 %140)
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @SPCSCCROCLAMP(i32 %142)
  %144 = call i32 @SPCSC_OMAX(i32 1023)
  %145 = call i32 @SPCSC_OMIN(i32 0)
  %146 = or i32 %144, %145
  %147 = call i32 @I915_WRITE_FW(i32 %143, i32 %146)
  br label %148

148:                                              ; preds = %38, %37
  ret void
}

declare dso_local %struct.intel_plane* @to_intel_plane(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @I915_WRITE_FW(i32, i32) #1

declare dso_local i32 @SPCSCYGOFF(i32) #1

declare dso_local i32 @SPCSC_OOFF(i32) #1

declare dso_local i32 @SPCSC_IOFF(i32) #1

declare dso_local i32 @SPCSCCBOFF(i32) #1

declare dso_local i32 @SPCSCCROFF(i32) #1

declare dso_local i32 @SPCSCC01(i32) #1

declare dso_local i32 @SPCSC_C1(i32) #1

declare dso_local i32 @SPCSC_C0(i32) #1

declare dso_local i32 @SPCSCC23(i32) #1

declare dso_local i32 @SPCSCC45(i32) #1

declare dso_local i32 @SPCSCC67(i32) #1

declare dso_local i32 @SPCSCC8(i32) #1

declare dso_local i32 @SPCSCYGICLAMP(i32) #1

declare dso_local i32 @SPCSC_IMAX(i32) #1

declare dso_local i32 @SPCSC_IMIN(i32) #1

declare dso_local i32 @SPCSCCBICLAMP(i32) #1

declare dso_local i32 @SPCSCCRICLAMP(i32) #1

declare dso_local i32 @SPCSCYGOCLAMP(i32) #1

declare dso_local i32 @SPCSC_OMAX(i32) #1

declare dso_local i32 @SPCSC_OMIN(i32) #1

declare dso_local i32 @SPCSCCBOCLAMP(i32) #1

declare dso_local i32 @SPCSCCROCLAMP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
