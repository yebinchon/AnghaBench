; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_update_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_update_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane = type { i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i8*, i8*, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.intel_plane_state = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.drm_i915_private = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@CUR_FBC_CTL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_plane*, %struct.intel_crtc_state*, %struct.intel_plane_state*)* @i9xx_update_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i9xx_update_cursor(%struct.intel_plane* %0, %struct.intel_crtc_state* %1, %struct.intel_plane_state* %2) #0 {
  %4 = alloca %struct.intel_plane*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.intel_plane_state*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.intel_plane* %0, %struct.intel_plane** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.intel_plane_state* %2, %struct.intel_plane_state** %6, align 8
  %14 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %15 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.drm_i915_private* @to_i915(i32 %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %7, align 8
  %19 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %20 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %22 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %23 = icmp ne %struct.intel_plane_state* %22, null
  br i1 %23, label %24, label %63

24:                                               ; preds = %3
  %25 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %26 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %63

30:                                               ; preds = %24
  %31 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %32 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %35 = call i32 @i9xx_cursor_ctl_crtc(%struct.intel_crtc_state* %34)
  %36 = or i32 %33, %35
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %9, align 8
  %39 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %40 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %44 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %42, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %30
  %49 = load i32, i32* @CUR_FBC_CTL_EN, align 4
  %50 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %51 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %53, 1
  %55 = or i32 %49, %54
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  store i8* %57, i8** %12, align 8
  br label %58

58:                                               ; preds = %48, %30
  %59 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %60 = call i8* @intel_cursor_base(%struct.intel_plane_state* %59)
  store i8* %60, i8** %10, align 8
  %61 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %62 = call i8* @intel_cursor_position(%struct.intel_plane_state* %61)
  store i8* %62, i8** %11, align 8
  br label %63

63:                                               ; preds = %58, %24, %3
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %65 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %13, align 8
  %68 = call i32 @spin_lock_irqsave(i32* %66, i64 %67)
  %69 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %70 = call i32 @INTEL_GEN(%struct.drm_i915_private* %69)
  %71 = icmp sge i32 %70, 9
  br i1 %71, label %72, label %76

72:                                               ; preds = %63
  %73 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %74 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %75 = call i32 @skl_write_cursor_wm(%struct.intel_plane* %73, %struct.intel_crtc_state* %74)
  br label %76

76:                                               ; preds = %72, %63
  %77 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %78 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = icmp ne i8* %80, %81
  br i1 %82, label %97, label %83

83:                                               ; preds = %76
  %84 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %85 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = icmp ne i8* %87, %88
  br i1 %89, label %97, label %90

90:                                               ; preds = %83
  %91 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %92 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = icmp ne i8* %94, %95
  br i1 %96, label %97, label %131

97:                                               ; preds = %90, %83, %76
  %98 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %99 = call i64 @HAS_CUR_FBC(%struct.drm_i915_private* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @CUR_FBC_CTL(i32 %102)
  %104 = load i8*, i8** %12, align 8
  %105 = call i32 @I915_WRITE_FW(i32 %103, i8* %104)
  br label %106

106:                                              ; preds = %101, %97
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @CURCNTR(i32 %107)
  %109 = load i8*, i8** %9, align 8
  %110 = call i32 @I915_WRITE_FW(i32 %108, i8* %109)
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @CURPOS(i32 %111)
  %113 = load i8*, i8** %11, align 8
  %114 = call i32 @I915_WRITE_FW(i32 %112, i8* %113)
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @CURBASE(i32 %115)
  %117 = load i8*, i8** %10, align 8
  %118 = call i32 @I915_WRITE_FW(i32 %116, i8* %117)
  %119 = load i8*, i8** %10, align 8
  %120 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %121 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  store i8* %119, i8** %122, align 8
  %123 = load i8*, i8** %12, align 8
  %124 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %125 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  store i8* %123, i8** %126, align 8
  %127 = load i8*, i8** %9, align 8
  %128 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %129 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  store i8* %127, i8** %130, align 8
  br label %140

131:                                              ; preds = %90
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @CURPOS(i32 %132)
  %134 = load i8*, i8** %11, align 8
  %135 = call i32 @I915_WRITE_FW(i32 %133, i8* %134)
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @CURBASE(i32 %136)
  %138 = load i8*, i8** %10, align 8
  %139 = call i32 @I915_WRITE_FW(i32 %137, i8* %138)
  br label %140

140:                                              ; preds = %131, %106
  %141 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %142 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i64, i64* %13, align 8
  %145 = call i32 @spin_unlock_irqrestore(i32* %143, i64 %144)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @i9xx_cursor_ctl_crtc(%struct.intel_crtc_state*) #1

declare dso_local i8* @intel_cursor_base(%struct.intel_plane_state*) #1

declare dso_local i8* @intel_cursor_position(%struct.intel_plane_state*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @skl_write_cursor_wm(%struct.intel_plane*, %struct.intel_crtc_state*) #1

declare dso_local i64 @HAS_CUR_FBC(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE_FW(i32, i8*) #1

declare dso_local i32 @CUR_FBC_CTL(i32) #1

declare dso_local i32 @CURCNTR(i32) #1

declare dso_local i32 @CURPOS(i32) #1

declare dso_local i32 @CURBASE(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
