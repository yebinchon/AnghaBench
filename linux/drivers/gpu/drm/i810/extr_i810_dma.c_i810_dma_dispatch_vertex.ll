; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i810/extr_i810_dma.c_i810_dma_dispatch_vertex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i810/extr_i810_dma.c_i810_dma_dispatch_vertex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_5__*, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i64, %struct.drm_clip_rect* }
%struct.drm_clip_rect = type { i32, i32, i32, i32 }
%struct.drm_buf = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, i32, i64 }

@RING_LOCALS = common dso_local global i32 0, align 4
@I810_NR_SAREA_CLIPRECTS = common dso_local global i32 0, align 4
@I810_BUF_MAPPED = common dso_local global i64 0, align 8
@PR_MASK = common dso_local global i32 0, align 4
@GFX_OP_PRIMITIVE = common dso_local global i32 0, align 4
@GFX_OP_SCISSOR = common dso_local global i32 0, align 4
@SC_UPDATE_SCISSOR = common dso_local global i32 0, align 4
@SC_ENABLE = common dso_local global i32 0, align 4
@GFX_OP_SCISSOR_INFO = common dso_local global i32 0, align 4
@CMD_OP_BATCH_BUFFER = common dso_local global i32 0, align 4
@BB1_PROTECTED = common dso_local global i64 0, align 8
@I810_BUF_CLIENT = common dso_local global i32 0, align 4
@I810_BUF_HARDWARE = common dso_local global i32 0, align 4
@CMD_STORE_DWORD_IDX = common dso_local global i32 0, align 4
@I810_BUF_FREE = common dso_local global i32 0, align 4
@CMD_REPORT_HEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.drm_buf*, i32, i32)* @i810_dma_dispatch_vertex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i810_dma_dispatch_vertex(%struct.drm_device* %0, %struct.drm_buf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.drm_clip_rect*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_buf* %1, %struct.drm_buf** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %9, align 8
  %21 = load %struct.drm_buf*, %struct.drm_buf** %6, align 8
  %22 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %10, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %11, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %28, align 8
  store %struct.drm_clip_rect* %29, %struct.drm_clip_rect** %12, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %13, align 4
  %33 = load %struct.drm_buf*, %struct.drm_buf** %6, align 8
  %34 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %14, align 8
  %36 = load i64, i64* %14, align 8
  %37 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %38 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %36, %41
  store i64 %42, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %43 = load i32, i32* @RING_LOCALS, align 4
  %44 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %45 = call i32 @i810_kernel_lost_context(%struct.drm_device* %44)
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @I810_NR_SAREA_CLIPRECTS, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %4
  %50 = load i32, i32* @I810_NR_SAREA_CLIPRECTS, align 4
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %49, %4
  %52 = load i32, i32* %8, align 4
  %53 = icmp sgt i32 %52, 4096
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %54, %51
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %62 = call i32 @i810EmitState(%struct.drm_device* %61)
  br label %63

63:                                               ; preds = %60, %55
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @I810_BUF_MAPPED, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %103

69:                                               ; preds = %63
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @PR_MASK, align 4
  %74 = and i32 %72, %73
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* @GFX_OP_PRIMITIVE, align 4
  %76 = load i32, i32* %17, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* %8, align 4
  %79 = sdiv i32 %78, 4
  %80 = sub nsw i32 %79, 2
  %81 = or i32 %77, %80
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i32*
  store i32 %81, i32* %85, align 4
  %86 = load i32, i32* %8, align 4
  %87 = and i32 %86, 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %69
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = bitcast i8* %96 to i32*
  store i32 0, i32* %97, align 4
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 4
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %89, %69
  %101 = load %struct.drm_buf*, %struct.drm_buf** %6, align 8
  %102 = call i32 @i810_unmap_buffer(%struct.drm_buf* %101)
  br label %103

103:                                              ; preds = %100, %63
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %178

106:                                              ; preds = %103
  br label %107

107:                                              ; preds = %172, %106
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %154

111:                                              ; preds = %107
  %112 = call i32 @BEGIN_LP_RING(i32 4)
  %113 = load i32, i32* @GFX_OP_SCISSOR, align 4
  %114 = load i32, i32* @SC_UPDATE_SCISSOR, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @SC_ENABLE, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @OUT_RING(i32 %117)
  %119 = load i32, i32* @GFX_OP_SCISSOR_INFO, align 4
  %120 = call i32 @OUT_RING(i32 %119)
  %121 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %12, align 8
  %122 = load i32, i32* %16, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %121, i64 %123
  %125 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %12, align 8
  %128 = load i32, i32* %16, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %127, i64 %129
  %131 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %132, 16
  %134 = or i32 %126, %133
  %135 = call i32 @OUT_RING(i32 %134)
  %136 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %12, align 8
  %137 = load i32, i32* %16, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %136, i64 %138
  %140 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %141, 1
  %143 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %12, align 8
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %143, i64 %145
  %147 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %148, 1
  %150 = shl i32 %149, 16
  %151 = or i32 %142, %150
  %152 = call i32 @OUT_RING(i32 %151)
  %153 = call i32 (...) @ADVANCE_LP_RING()
  br label %154

154:                                              ; preds = %111, %107
  %155 = call i32 @BEGIN_LP_RING(i32 4)
  %156 = load i32, i32* @CMD_OP_BATCH_BUFFER, align 4
  %157 = call i32 @OUT_RING(i32 %156)
  %158 = load i64, i64* %15, align 8
  %159 = load i64, i64* @BB1_PROTECTED, align 8
  %160 = or i64 %158, %159
  %161 = trunc i64 %160 to i32
  %162 = call i32 @OUT_RING(i32 %161)
  %163 = load i64, i64* %15, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = add i64 %163, %165
  %167 = sub i64 %166, 4
  %168 = trunc i64 %167 to i32
  %169 = call i32 @OUT_RING(i32 %168)
  %170 = call i32 @OUT_RING(i32 0)
  %171 = call i32 (...) @ADVANCE_LP_RING()
  br label %172

172:                                              ; preds = %154
  %173 = load i32, i32* %16, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %16, align 4
  %175 = load i32, i32* %13, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %107, label %177

177:                                              ; preds = %172
  br label %178

178:                                              ; preds = %177, %103
  %179 = load i32, i32* %7, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %212

181:                                              ; preds = %178
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 8
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @I810_BUF_CLIENT, align 4
  %190 = load i32, i32* @I810_BUF_HARDWARE, align 4
  %191 = call i32 @cmpxchg(i32 %188, i32 %189, i32 %190)
  %192 = call i32 @BEGIN_LP_RING(i32 8)
  %193 = load i32, i32* @CMD_STORE_DWORD_IDX, align 4
  %194 = call i32 @OUT_RING(i32 %193)
  %195 = call i32 @OUT_RING(i32 20)
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @OUT_RING(i32 %198)
  %200 = load i32, i32* @CMD_STORE_DWORD_IDX, align 4
  %201 = call i32 @OUT_RING(i32 %200)
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @OUT_RING(i32 %204)
  %206 = load i32, i32* @I810_BUF_FREE, align 4
  %207 = call i32 @OUT_RING(i32 %206)
  %208 = load i32, i32* @CMD_REPORT_HEAD, align 4
  %209 = call i32 @OUT_RING(i32 %208)
  %210 = call i32 @OUT_RING(i32 0)
  %211 = call i32 (...) @ADVANCE_LP_RING()
  br label %212

212:                                              ; preds = %181, %178
  ret void
}

declare dso_local i32 @i810_kernel_lost_context(%struct.drm_device*) #1

declare dso_local i32 @i810EmitState(%struct.drm_device*) #1

declare dso_local i32 @i810_unmap_buffer(%struct.drm_buf*) #1

declare dso_local i32 @BEGIN_LP_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @ADVANCE_LP_RING(...) #1

declare dso_local i32 @cmpxchg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
