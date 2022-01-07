; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_kirin_drm_ade.c_ade_plane_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_kirin_drm_ade.c_ade_plane_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { i32, i32, i32, i32, i32, i32, i64, i64, i32, %struct.drm_crtc*, %struct.drm_framebuffer* }
%struct.drm_crtc = type { i32 }
%struct.drm_framebuffer = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.drm_crtc_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@ADE_FORMAT_UNSUPPORT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @ade_plane_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ade_plane_atomic_check(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_crtc_state*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %18 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %19 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %18, i32 0, i32 10
  %20 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %19, align 8
  store %struct.drm_framebuffer* %20, %struct.drm_framebuffer** %6, align 8
  %21 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %22 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %21, i32 0, i32 9
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %22, align 8
  store %struct.drm_crtc* %23, %struct.drm_crtc** %7, align 8
  %24 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %25 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = ashr i32 %26, 16
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %9, align 8
  %29 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %30 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 16
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %10, align 8
  %34 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %35 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = ashr i32 %36, 16
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %11, align 8
  %39 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %40 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 16
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %12, align 8
  %44 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %45 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %13, align 4
  %47 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %48 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %14, align 4
  %50 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %51 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %15, align 8
  %53 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %54 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %53, i32 0, i32 7
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %16, align 8
  %56 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %57 = icmp ne %struct.drm_crtc* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %2
  %59 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %60 = icmp ne %struct.drm_framebuffer* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %58, %2
  store i32 0, i32* %3, align 4
  br label %150

62:                                               ; preds = %58
  %63 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %64 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %63, i32 0, i32 2
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @ade_get_format(i32 %67)
  store i64 %68, i64* %17, align 8
  %69 = load i64, i64* %17, align 8
  %70 = load i64, i64* @ADE_FORMAT_UNSUPPORT, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %150

75:                                               ; preds = %62
  %76 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %77 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %80 = call %struct.drm_crtc_state* @drm_atomic_get_crtc_state(i32 %78, %struct.drm_crtc* %79)
  store %struct.drm_crtc_state* %80, %struct.drm_crtc_state** %8, align 8
  %81 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  %82 = call i64 @IS_ERR(%struct.drm_crtc_state* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  %86 = call i32 @PTR_ERR(%struct.drm_crtc_state* %85)
  store i32 %86, i32* %3, align 4
  br label %150

87:                                               ; preds = %75
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %15, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i64, i64* %12, align 8
  %93 = load i64, i64* %16, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91, %87
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %150

98:                                               ; preds = %91
  %99 = load i64, i64* %9, align 8
  %100 = load i64, i64* %11, align 8
  %101 = add nsw i64 %99, %100
  %102 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %103 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp sgt i64 %101, %104
  br i1 %105, label %114, label %106

106:                                              ; preds = %98
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* %12, align 8
  %109 = add nsw i64 %107, %108
  %110 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %111 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp sgt i64 %109, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %106, %98
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %150

117:                                              ; preds = %106
  %118 = load i32, i32* %13, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %14, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120, %117
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %150

126:                                              ; preds = %120
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* %15, align 8
  %130 = add nsw i64 %128, %129
  %131 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  %132 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp sgt i64 %130, %134
  br i1 %135, label %146, label %136

136:                                              ; preds = %126
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = load i64, i64* %16, align 8
  %140 = add nsw i64 %138, %139
  %141 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  %142 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp sgt i64 %140, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %136, %126
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  br label %150

149:                                              ; preds = %136
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %149, %146, %123, %114, %95, %84, %72, %61
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i64 @ade_get_format(i32) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_crtc_state(i32, %struct.drm_crtc*) #1

declare dso_local i64 @IS_ERR(%struct.drm_crtc_state*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
