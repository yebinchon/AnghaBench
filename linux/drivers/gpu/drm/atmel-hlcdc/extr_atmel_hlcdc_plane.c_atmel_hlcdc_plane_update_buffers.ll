; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_plane.c_atmel_hlcdc_plane_update_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_plane.c_atmel_hlcdc_plane_update_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_hlcdc_plane = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.atmel_hlcdc_layer_desc* }
%struct.atmel_hlcdc_layer_desc = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64*, i64* }
%struct.atmel_hlcdc_plane_state = type { i32, i32*, i32*, %struct.TYPE_8__**, i64*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_7__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32 }
%struct.drm_gem_cma_object = type { i64 }

@ATMEL_HLCDC_LAYER_CHSR = common dso_local global i32 0, align 4
@ATMEL_HLCDC_LAYER_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane_state*)* @atmel_hlcdc_plane_update_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_hlcdc_plane_update_buffers(%struct.atmel_hlcdc_plane* %0, %struct.atmel_hlcdc_plane_state* %1) #0 {
  %3 = alloca %struct.atmel_hlcdc_plane*, align 8
  %4 = alloca %struct.atmel_hlcdc_plane_state*, align 8
  %5 = alloca %struct.atmel_hlcdc_layer_desc*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_gem_cma_object*, align 8
  store %struct.atmel_hlcdc_plane* %0, %struct.atmel_hlcdc_plane** %3, align 8
  store %struct.atmel_hlcdc_plane_state* %1, %struct.atmel_hlcdc_plane_state** %4, align 8
  %10 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %3, align 8
  %11 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %12, align 8
  store %struct.atmel_hlcdc_layer_desc* %13, %struct.atmel_hlcdc_layer_desc** %5, align 8
  %14 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %15 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  store %struct.drm_framebuffer* %17, %struct.drm_framebuffer** %6, align 8
  %18 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %3, align 8
  %19 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %18, i32 0, i32 0
  %20 = load i32, i32* @ATMEL_HLCDC_LAYER_CHSR, align 4
  %21 = call i32 @atmel_hlcdc_layer_read_reg(%struct.TYPE_10__* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %171, %2
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %25 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %174

28:                                               ; preds = %22
  %29 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer* %29, i32 %30)
  store %struct.drm_gem_cma_object* %31, %struct.drm_gem_cma_object** %9, align 8
  %32 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %9, align 8
  %33 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %36 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %35, i32 0, i32 4
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %34, %41
  %43 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %44 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %43, i32 0, i32 3
  %45 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %45, i64 %47
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  store i64 %42, i64* %50, align 8
  %51 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %3, align 8
  %52 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %51, i32 0, i32 0
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @ATMEL_HLCDC_LAYER_PLANE_HEAD(i32 %53)
  %55 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %56 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %55, i32 0, i32 3
  %57 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %57, i64 %59
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @atmel_hlcdc_layer_write_reg(%struct.TYPE_10__* %52, i32 %54, i64 %63)
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @ATMEL_HLCDC_LAYER_EN, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %112, label %69

69:                                               ; preds = %28
  %70 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %3, align 8
  %71 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %70, i32 0, i32 0
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @ATMEL_HLCDC_LAYER_PLANE_ADDR(i32 %72)
  %74 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %75 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %74, i32 0, i32 3
  %76 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %76, i64 %78
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @atmel_hlcdc_layer_write_reg(%struct.TYPE_10__* %71, i32 %73, i64 %82)
  %84 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %3, align 8
  %85 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %84, i32 0, i32 0
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @ATMEL_HLCDC_LAYER_PLANE_CTRL(i32 %86)
  %88 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %89 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %88, i32 0, i32 3
  %90 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %90, i64 %92
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @atmel_hlcdc_layer_write_reg(%struct.TYPE_10__* %85, i32 %87, i64 %96)
  %98 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %3, align 8
  %99 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %98, i32 0, i32 0
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @ATMEL_HLCDC_LAYER_PLANE_NEXT(i32 %100)
  %102 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %103 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %102, i32 0, i32 3
  %104 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %104, i64 %106
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @atmel_hlcdc_layer_write_reg(%struct.TYPE_10__* %99, i32 %101, i64 %110)
  br label %112

112:                                              ; preds = %69, %28
  %113 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %5, align 8
  %114 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, %struct.atmel_hlcdc_layer_desc* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %141

122:                                              ; preds = %112
  %123 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %3, align 8
  %124 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %123, i32 0, i32 0
  %125 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %5, align 8
  %126 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, %struct.atmel_hlcdc_layer_desc* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = load i64*, i64** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %134 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @atmel_hlcdc_layer_write_cfg(%struct.TYPE_10__* %124, i64 %132, i32 %139)
  br label %141

141:                                              ; preds = %122, %112
  %142 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %5, align 8
  %143 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, %struct.atmel_hlcdc_layer_desc* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i64*, i64** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %145, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %170

151:                                              ; preds = %141
  %152 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %3, align 8
  %153 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %152, i32 0, i32 0
  %154 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %5, align 8
  %155 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, %struct.atmel_hlcdc_layer_desc* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load i64*, i64** %156, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %163 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @atmel_hlcdc_layer_write_cfg(%struct.TYPE_10__* %153, i64 %161, i32 %168)
  br label %170

170:                                              ; preds = %151, %141
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %8, align 4
  br label %22

174:                                              ; preds = %22
  ret void
}

declare dso_local i32 @atmel_hlcdc_layer_read_reg(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer*, i32) #1

declare dso_local i32 @atmel_hlcdc_layer_write_reg(%struct.TYPE_10__*, i32, i64) #1

declare dso_local i32 @ATMEL_HLCDC_LAYER_PLANE_HEAD(i32) #1

declare dso_local i32 @ATMEL_HLCDC_LAYER_PLANE_ADDR(i32) #1

declare dso_local i32 @ATMEL_HLCDC_LAYER_PLANE_CTRL(i32) #1

declare dso_local i32 @ATMEL_HLCDC_LAYER_PLANE_NEXT(i32) #1

declare dso_local i32 @atmel_hlcdc_layer_write_cfg(%struct.TYPE_10__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
