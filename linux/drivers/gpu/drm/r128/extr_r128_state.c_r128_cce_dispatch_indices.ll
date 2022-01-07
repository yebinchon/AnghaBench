; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_dispatch_indices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_dispatch_indices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_7__*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32* }
%struct.drm_buf = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i64 }

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"indices: s=%d e=%d c=%d\0A\00", align 1
@R128_UPLOAD_CLIPRECTS = common dso_local global i32 0, align 4
@R128_3D_RNDR_GEN_INDX_PRIM = common dso_local global i32 0, align 4
@R128_MAX_VB_VERTS = common dso_local global i32 0, align 4
@R128_CCE_VC_CNTL_PRIM_WALK_IND = common dso_local global i32 0, align 4
@R128_LAST_DISPATCH_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.drm_buf*, i32, i32, i32)* @r128_cce_dispatch_indices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r128_cce_dispatch_indices(%struct.drm_device* %0, %struct.drm_buf* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.drm_buf* %1, %struct.drm_buf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %11, align 8
  %23 = load %struct.drm_buf*, %struct.drm_buf** %7, align 8
  %24 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %23, i32 0, i32 2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %12, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %13, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %14, align 4
  %32 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %36, %39
  store i32 %40, i32* %15, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %16, align 4
  store i32 0, i32* %19, align 4
  %44 = load i32, i32* @RING_LOCALS, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %163

52:                                               ; preds = %5
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @R128_UPLOAD_CLIPRECTS, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %64 = call i32 @r128_emit_state(%struct.TYPE_9__* %63)
  br label %65

65:                                               ; preds = %62, %52
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = sub nsw i32 %66, %67
  %69 = add nsw i32 %68, 3
  %70 = sext i32 %69 to i64
  %71 = udiv i64 %70, 4
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %18, align 4
  %73 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %74 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = load %struct.drm_buf*, %struct.drm_buf** %7, align 8
  %80 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %78, i64 %82
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = bitcast i8* %86 to i32*
  store i32* %87, i32** %17, align 8
  %88 = load i32, i32* @R128_3D_RNDR_GEN_INDX_PRIM, align 4
  %89 = load i32, i32* %18, align 4
  %90 = sub nsw i32 %89, 2
  %91 = call i32 @CCE_PACKET3(i32 %88, i32 %90)
  %92 = call i32 @cpu_to_le32(i32 %91)
  %93 = load i32*, i32** %17, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %15, align 4
  %96 = call i32 @cpu_to_le32(i32 %95)
  %97 = load i32*, i32** %17, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @R128_MAX_VB_VERTS, align 4
  %100 = call i32 @cpu_to_le32(i32 %99)
  %101 = load i32*, i32** %17, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @cpu_to_le32(i32 %103)
  %105 = load i32*, i32** %17, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 3
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* @R128_CCE_VC_CNTL_PRIM_WALK_IND, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* %10, align 4
  %111 = shl i32 %110, 16
  %112 = or i32 %109, %111
  %113 = call i32 @cpu_to_le32(i32 %112)
  %114 = load i32*, i32** %17, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 4
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %10, align 4
  %117 = and i32 %116, 1
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %65
  %120 = load i32*, i32** %17, align 8
  %121 = load i32, i32* %18, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, -65536
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %119, %65
  br label %128

128:                                              ; preds = %156, %127
  %129 = load i32, i32* %19, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %148

134:                                              ; preds = %128
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %19, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %19, align 4
  %146 = sub nsw i32 %144, %145
  %147 = call i32 @r128_emit_clip_rects(%struct.TYPE_9__* %135, i32* %141, i32 %146)
  br label %148

148:                                              ; preds = %134, %128
  %149 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %150 = load %struct.drm_buf*, %struct.drm_buf** %7, align 8
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @r128_cce_dispatch_indirect(%struct.drm_device* %149, %struct.drm_buf* %150, i32 %151, i32 %152)
  %154 = load i32, i32* %19, align 4
  %155 = add nsw i32 %154, 3
  store i32 %155, i32* %19, align 4
  br label %156

156:                                              ; preds = %148
  %157 = load i32, i32* %19, align 4
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = icmp slt i32 %157, %160
  br i1 %161, label %128, label %162

162:                                              ; preds = %156
  br label %163

163:                                              ; preds = %162, %5
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %189

168:                                              ; preds = %163
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 8
  %176 = call i32 @BEGIN_RING(i32 2)
  %177 = load i32, i32* @R128_LAST_DISPATCH_REG, align 4
  %178 = call i32 @CCE_PACKET0(i32 %177, i32 0)
  %179 = call i32 @OUT_RING(i32 %178)
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @OUT_RING(i32 %182)
  %184 = call i32 (...) @ADVANCE_RING()
  %185 = load %struct.drm_buf*, %struct.drm_buf** %7, align 8
  %186 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %185, i32 0, i32 1
  store i32 1, i32* %186, align 4
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 1
  store i32 0, i32* %188, align 4
  br label %189

189:                                              ; preds = %168, %163
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 4
  %196 = load i32, i32* @R128_UPLOAD_CLIPRECTS, align 4
  %197 = xor i32 %196, -1
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = and i32 %200, %197
  store i32 %201, i32* %199, align 4
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 2
  store i32 0, i32* %203, align 8
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32, i32) #1

declare dso_local i32 @r128_emit_state(%struct.TYPE_9__*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @CCE_PACKET3(i32, i32) #1

declare dso_local i32 @r128_emit_clip_rects(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @r128_cce_dispatch_indirect(%struct.drm_device*, %struct.drm_buf*, i32, i32) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @CCE_PACKET0(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
