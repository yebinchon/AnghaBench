; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_plane_atomic_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_plane_atomic_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__, %struct.TYPE_11__, i32, %struct.drm_framebuffer*, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.drm_framebuffer = type { i32*, i64*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.drm_plane_state = type { i32 }
%struct.tegra_plane_state = type { i32, i32, i32, i64 }
%struct.tegra_plane = type { i32 }
%struct.tegra_dc_window = type { i32, i32, i32*, i64*, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.tegra_bo = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @tegra_plane_atomic_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_plane_atomic_update(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.tegra_plane_state*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.tegra_plane*, align 8
  %8 = alloca %struct.tegra_dc_window, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tegra_bo*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %11 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %12 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = call %struct.tegra_plane_state* @to_tegra_plane_state(%struct.TYPE_10__* %13)
  store %struct.tegra_plane_state* %14, %struct.tegra_plane_state** %5, align 8
  %15 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %16 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 4
  %19 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %18, align 8
  store %struct.drm_framebuffer* %19, %struct.drm_framebuffer** %6, align 8
  %20 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %21 = call %struct.tegra_plane* @to_tegra_plane(%struct.drm_plane* %20)
  store %struct.tegra_plane* %21, %struct.tegra_plane** %7, align 8
  %22 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %23 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %30 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 4
  %33 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %32, align 8
  %34 = icmp ne %struct.drm_framebuffer* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %28, %2
  br label %201

36:                                               ; preds = %28
  %37 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %38 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %45 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  call void @tegra_plane_atomic_disable(%struct.drm_plane* %44, %struct.drm_plane_state* %45)
  br label %201

46:                                               ; preds = %36
  %47 = call i32 @memset(%struct.tegra_dc_window* %8, i32 0, i32 72)
  %48 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %49 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %48, i32 0, i32 0
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 16
  %55 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %8, i32 0, i32 9
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %58 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %57, i32 0, i32 0
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 16
  %64 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %8, i32 0, i32 9
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %67 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = call i32 @drm_rect_width(%struct.TYPE_11__* %69)
  %71 = ashr i32 %70, 16
  %72 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %8, i32 0, i32 9
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %75 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = call i32 @drm_rect_height(%struct.TYPE_11__* %77)
  %79 = ashr i32 %78, 16
  %80 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %8, i32 0, i32 9
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %83 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %82, i32 0, i32 0
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %8, i32 0, i32 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %91 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %90, i32 0, i32 0
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %8, i32 0, i32 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %99 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %98, i32 0, i32 0
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = call i32 @drm_rect_width(%struct.TYPE_11__* %101)
  %103 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %8, i32 0, i32 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %106 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %105, i32 0, i32 0
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = call i32 @drm_rect_height(%struct.TYPE_11__* %108)
  %110 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %8, i32 0, i32 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %113 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %112, i32 0, i32 2
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %118, 8
  %120 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %8, i32 0, i32 0
  store i32 %119, i32* %120, align 8
  %121 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %122 = call i64 @tegra_fb_is_bottom_up(%struct.drm_framebuffer* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %46
  %125 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %5, align 8
  %126 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br label %129

129:                                              ; preds = %124, %46
  %130 = phi i1 [ true, %46 ], [ %128, %124 ]
  %131 = zext i1 %130 to i32
  %132 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %8, i32 0, i32 1
  store i32 %131, i32* %132, align 4
  %133 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %134 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %133, i32 0, i32 0
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %8, i32 0, i32 7
  store i32 %137, i32* %138, align 4
  %139 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %5, align 8
  %140 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %8, i32 0, i32 6
  store i32 %141, i32* %142, align 8
  %143 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %5, align 8
  %144 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %8, i32 0, i32 5
  store i32 %145, i32* %146, align 4
  %147 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %5, align 8
  %148 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %8, i32 0, i32 4
  store i32 %149, i32* %150, align 8
  store i32 0, i32* %9, align 4
  br label %151

151:                                              ; preds = %195, %129
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %154 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %153, i32 0, i32 2
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = icmp ult i32 %152, %157
  br i1 %158, label %159, label %198

159:                                              ; preds = %151
  %160 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %161 = load i32, i32* %9, align 4
  %162 = call %struct.tegra_bo* @tegra_fb_get_plane(%struct.drm_framebuffer* %160, i32 %161)
  store %struct.tegra_bo* %162, %struct.tegra_bo** %10, align 8
  %163 = load %struct.tegra_bo*, %struct.tegra_bo** %10, align 8
  %164 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %167 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %166, i32 0, i32 1
  %168 = load i64*, i64** %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %165, %172
  %174 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %8, i32 0, i32 3
  %175 = load i64*, i64** %174, align 8
  %176 = load i32, i32* %9, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i64, i64* %175, i64 %177
  store i64 %173, i64* %178, align 8
  %179 = load i32, i32* %9, align 4
  %180 = icmp ult i32 %179, 2
  br i1 %180, label %181, label %194

181:                                              ; preds = %159
  %182 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %183 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %9, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %8, i32 0, i32 2
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %9, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  store i32 %188, i32* %193, align 4
  br label %194

194:                                              ; preds = %181, %159
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %9, align 4
  %197 = add i32 %196, 1
  store i32 %197, i32* %9, align 4
  br label %151

198:                                              ; preds = %151
  %199 = load %struct.tegra_plane*, %struct.tegra_plane** %7, align 8
  %200 = call i32 @tegra_dc_setup_window(%struct.tegra_plane* %199, %struct.tegra_dc_window* %8)
  br label %201

201:                                              ; preds = %198, %43, %35
  ret void
}

declare dso_local %struct.tegra_plane_state* @to_tegra_plane_state(%struct.TYPE_10__*) #1

declare dso_local %struct.tegra_plane* @to_tegra_plane(%struct.drm_plane*) #1

declare dso_local void @tegra_plane_atomic_disable(%struct.drm_plane*, %struct.drm_plane_state*) #1

declare dso_local i32 @memset(%struct.tegra_dc_window*, i32, i32) #1

declare dso_local i32 @drm_rect_width(%struct.TYPE_11__*) #1

declare dso_local i32 @drm_rect_height(%struct.TYPE_11__*) #1

declare dso_local i64 @tegra_fb_is_bottom_up(%struct.drm_framebuffer*) #1

declare dso_local %struct.tegra_bo* @tegra_fb_get_plane(%struct.drm_framebuffer*, i32) #1

declare dso_local i32 @tegra_dc_setup_window(%struct.tegra_plane*, %struct.tegra_dc_window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
