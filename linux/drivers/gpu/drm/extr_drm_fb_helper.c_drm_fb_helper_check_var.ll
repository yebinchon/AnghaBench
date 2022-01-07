; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_check_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i64, i32, i64, i64, i64, i64, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.fb_info = type { i32, %struct.drm_fb_helper* }
%struct.drm_fb_helper = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i64, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [88 x i8] c"fbdev emulation doesn't support changing the pixel clock, value of pixclock is ignored\0A\00", align 1
@.str.1 = private unnamed_addr constant [99 x i8] c"fb requested width/height/bpp can't fit in current fb request %dx%d-%d (virtual %dx%d) > %dx%d-%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"fbdev emulation doesn't support changing the pixel format\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_fb_helper_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.drm_fb_helper*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 1
  %10 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %9, align 8
  store %struct.drm_fb_helper* %10, %struct.drm_fb_helper** %6, align 8
  %11 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %12 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %11, i32 0, i32 0
  %13 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  store %struct.drm_framebuffer* %13, %struct.drm_framebuffer** %7, align 8
  %14 = call i64 (...) @in_dbg_master()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %212

19:                                               ; preds = %2
  %20 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %21 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %24, %19
  %29 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %30 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %29, i32 0, i32 2
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = call i32 @drm_format_info_block_width(%struct.TYPE_11__* %31, i32 0)
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %36 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %35, i32 0, i32 2
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = call i32 @drm_format_info_block_height(%struct.TYPE_11__* %37, i32 0)
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %43

40:                                               ; preds = %34, %28
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %212

43:                                               ; preds = %34
  %44 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %45 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %48 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %47, i32 0, i32 2
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %53, 8
  %55 = icmp ne i32 %46, %54
  br i1 %55, label %88, label %56

56:                                               ; preds = %43
  %57 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %58 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %61 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %59, %62
  br i1 %63, label %88, label %64

64:                                               ; preds = %56
  %65 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %66 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %69 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %67, %70
  br i1 %71, label %88, label %72

72:                                               ; preds = %64
  %73 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %74 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %77 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %75, %78
  br i1 %79, label %88, label %80

80:                                               ; preds = %72
  %81 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %82 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %85 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %83, %86
  br i1 %87, label %88, label %121

88:                                               ; preds = %80, %72, %64, %56, %43
  %89 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %90 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %93 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %96 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %99 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %102 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %105 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %108 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %111 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %110, i32 0, i32 2
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %116, 8
  %118 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0), i64 %91, i64 %94, i32 %97, i64 %100, i64 %103, i64 %106, i64 %109, i32 %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %212

121:                                              ; preds = %80
  %122 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %123 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %122, i32 0, i32 9
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %201, label %127

127:                                              ; preds = %121
  %128 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %129 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %128, i32 0, i32 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %201, label %133

133:                                              ; preds = %127
  %134 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %135 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %134, i32 0, i32 7
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %201, label %139

139:                                              ; preds = %133
  %140 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %141 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %140, i32 0, i32 6
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %201, label %145

145:                                              ; preds = %139
  %146 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %147 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %146, i32 0, i32 9
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %201, label %151

151:                                              ; preds = %145
  %152 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %153 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %152, i32 0, i32 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %201, label %157

157:                                              ; preds = %151
  %158 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %159 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %158, i32 0, i32 7
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %201, label %163

163:                                              ; preds = %157
  %164 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %165 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %164, i32 0, i32 6
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %201, label %169

169:                                              ; preds = %163
  %170 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %171 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %170, i32 0, i32 9
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %201, label %175

175:                                              ; preds = %169
  %176 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %177 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %176, i32 0, i32 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %201, label %181

181:                                              ; preds = %175
  %182 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %183 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %182, i32 0, i32 7
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %201, label %187

187:                                              ; preds = %181
  %188 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %189 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %188, i32 0, i32 6
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %201, label %193

193:                                              ; preds = %187
  %194 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %195 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %196 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %195, i32 0, i32 2
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @drm_fb_helper_fill_pixel_fmt(%struct.fb_var_screeninfo* %194, i32 %199)
  br label %201

201:                                              ; preds = %193, %187, %181, %175, %169, %163, %157, %151, %145, %139, %133, %127, %121
  %202 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %203 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %204 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %203, i32 0, i32 0
  %205 = call i32 @drm_fb_pixel_format_equal(%struct.fb_var_screeninfo* %202, i32* %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %201
  %208 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %209 = load i32, i32* @EINVAL, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %3, align 4
  br label %212

211:                                              ; preds = %201
  store i32 0, i32* %3, align 4
  br label %212

212:                                              ; preds = %211, %207, %88, %40, %16
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local i64 @in_dbg_master(...) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @drm_format_info_block_width(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @drm_format_info_block_height(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @drm_fb_helper_fill_pixel_fmt(%struct.fb_var_screeninfo*, i32) #1

declare dso_local i32 @drm_fb_pixel_format_equal(%struct.fb_var_screeninfo*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
