; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mga/extr_mga_state.c_mga_dma_dispatch_blit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mga/extr_mga_state.c_mga_dma_dispatch_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.drm_clip_rect*, %struct.TYPE_8__ }
%struct.drm_clip_rect = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DMA_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MGA_DMAPAD = common dso_local global i64 0, align 8
@MGA_DWGSYNC = common dso_local global i64 0, align 8
@MGA_DWGCTL = common dso_local global i64 0, align 8
@MGA_DWGCTL_COPY = common dso_local global i32 0, align 4
@MGA_PLNWT = common dso_local global i64 0, align 8
@MGA_SRCORG = common dso_local global i64 0, align 8
@MGA_DSTORG = common dso_local global i64 0, align 8
@MGA_SGN = common dso_local global i64 0, align 8
@MGA_MACCESS = common dso_local global i64 0, align 8
@MGA_AR5 = common dso_local global i64 0, align 8
@MGA_PITCH = common dso_local global i64 0, align 8
@MGA_AR0 = common dso_local global i64 0, align 8
@MGA_AR3 = common dso_local global i64 0, align 8
@MGA_FXBNDRY = common dso_local global i64 0, align 8
@MGA_YDSTLEN = common dso_local global i64 0, align 8
@MGA_EXEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.TYPE_9__*)* @mga_dma_dispatch_blit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mga_dma_dispatch_blit(%struct.drm_device* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.drm_clip_rect*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %5, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %6, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %7, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %28, align 8
  store %struct.drm_clip_rect* %29, %struct.drm_clip_rect** %8, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %33 = load i32, i32* @DMA_LOCALS, align 4
  %34 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 4, %35
  %37 = call i32 @BEGIN_DMA(i32 %36)
  %38 = load i64, i64* @MGA_DMAPAD, align 8
  %39 = load i64, i64* @MGA_DMAPAD, align 8
  %40 = load i64, i64* @MGA_DWGSYNC, align 8
  %41 = load i64, i64* @MGA_DWGSYNC, align 8
  %42 = call i32 @DMA_BLOCK(i64 %38, i32 0, i64 %39, i32 0, i64 %40, i32 28928, i64 %41, i32 28672)
  %43 = load i64, i64* @MGA_DWGCTL, align 8
  %44 = load i32, i32* @MGA_DWGCTL_COPY, align 4
  %45 = load i64, i64* @MGA_PLNWT, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* @MGA_SRCORG, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* @MGA_DSTORG, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @DMA_BLOCK(i64 %43, i32 %44, i64 %45, i32 %48, i64 %49, i32 %52, i64 %53, i32 %56)
  %58 = load i64, i64* @MGA_SGN, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i64, i64* @MGA_MACCESS, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* @MGA_AR5, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %67, %70
  %72 = load i64, i64* @MGA_PITCH, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @DMA_BLOCK(i64 %58, i32 %59, i64 %60, i32 %63, i64 %64, i32 %71, i64 %72, i32 %75)
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %190, %2
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %193

81:                                               ; preds = %77
  %82 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %8, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %82, i64 %84
  %86 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %87, %90
  store i32 %91, i32* %12, align 4
  %92 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %8, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %92, i64 %94
  %96 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %97, %100
  store i32 %101, i32* %13, align 4
  %102 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %8, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %102, i64 %104
  %106 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 8
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %107, %110
  store i32 %111, i32* %14, align 4
  %112 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %8, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %112, i64 %114
  %116 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 9
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %117, %120
  store i32 %121, i32* %15, align 4
  %122 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %8, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %122, i64 %124
  %126 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %8, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %128, i64 %130
  %132 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sub nsw i32 %127, %133
  store i32 %134, i32* %16, align 4
  %135 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %8, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %135, i64 %137
  %139 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %8, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %141, i64 %143
  %145 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %140, %146
  %148 = sub nsw i32 %147, 1
  store i32 %148, i32* %17, align 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, -1
  br i1 %152, label %153, label %160

153:                                              ; preds = %81
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 10
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %13, align 4
  %158 = sub nsw i32 %156, %157
  %159 = sub nsw i32 %158, 1
  store i32 %159, i32* %13, align 4
  br label %160

160:                                              ; preds = %153, %81
  %161 = load i32, i32* %13, align 4
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = mul nsw i32 %161, %164
  %166 = load i32, i32* %12, align 4
  %167 = add nsw i32 %165, %166
  store i32 %167, i32* %18, align 4
  %168 = load i64, i64* @MGA_AR0, align 8
  %169 = load i32, i32* %18, align 4
  %170 = load i32, i32* %17, align 4
  %171 = add nsw i32 %169, %170
  %172 = load i64, i64* @MGA_AR3, align 8
  %173 = load i32, i32* %18, align 4
  %174 = load i64, i64* @MGA_FXBNDRY, align 8
  %175 = load i32, i32* %14, align 4
  %176 = load i32, i32* %17, align 4
  %177 = add nsw i32 %175, %176
  %178 = shl i32 %177, 16
  %179 = load i32, i32* %14, align 4
  %180 = and i32 %179, 65535
  %181 = or i32 %178, %180
  %182 = load i64, i64* @MGA_YDSTLEN, align 8
  %183 = load i64, i64* @MGA_EXEC, align 8
  %184 = add nsw i64 %182, %183
  %185 = load i32, i32* %15, align 4
  %186 = shl i32 %185, 16
  %187 = load i32, i32* %16, align 4
  %188 = or i32 %186, %187
  %189 = call i32 @DMA_BLOCK(i64 %168, i32 %171, i64 %172, i32 %173, i64 %174, i32 %181, i64 %184, i32 %188)
  br label %190

190:                                              ; preds = %160
  %191 = load i32, i32* %11, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %11, align 4
  br label %77

193:                                              ; preds = %77
  %194 = load i64, i64* @MGA_DMAPAD, align 8
  %195 = load i64, i64* @MGA_PLNWT, align 8
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i64, i64* @MGA_PITCH, align 8
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i64, i64* @MGA_DWGCTL, align 8
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @DMA_BLOCK(i64 %194, i32 0, i64 %195, i32 %198, i64 %199, i32 %202, i64 %203, i32 %206)
  %208 = call i32 (...) @ADVANCE_DMA()
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @BEGIN_DMA(i32) #1

declare dso_local i32 @DMA_BLOCK(i64, i32, i64, i32, i64, i32, i64, i32) #1

declare dso_local i32 @ADVANCE_DMA(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
