; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mga/extr_mga_state.c_mga_emit_clip_rect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mga/extr_mga_state.c_mga_emit_clip_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.drm_clip_rect = type { i32, i32, i32, i32 }

@DMA_LOCALS = common dso_local global i32 0, align 4
@MGA_CARD_TYPE_G400 = common dso_local global i64 0, align 8
@MGA_DWGCTL = common dso_local global i32 0, align 4
@MGA_LEN = common dso_local global i64 0, align 8
@MGA_EXEC = common dso_local global i64 0, align 8
@MGA_DMAPAD = common dso_local global i32 0, align 4
@MGA_CXBNDRY = common dso_local global i64 0, align 8
@MGA_YTOP = common dso_local global i32 0, align 4
@MGA_YBOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.drm_clip_rect*)* @mga_emit_clip_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mga_emit_clip_rect(%struct.TYPE_6__* %0, %struct.drm_clip_rect* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.drm_clip_rect*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.drm_clip_rect* %1, %struct.drm_clip_rect** %4, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %5, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %6, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @DMA_LOCALS, align 4
  %17 = call i32 @BEGIN_DMA(i32 2)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MGA_CARD_TYPE_G400, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %2
  %24 = load i32, i32* @MGA_DWGCTL, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* @MGA_LEN, align 8
  %29 = load i64, i64* @MGA_EXEC, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i32, i32* @MGA_DWGCTL, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* @MGA_LEN, align 8
  %36 = load i64, i64* @MGA_EXEC, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @DMA_BLOCK(i32 %24, i32 %27, i64 %30, i32 -2147483648, i32 %31, i32 %34, i64 %37, i32 -2147483648)
  br label %39

39:                                               ; preds = %23, %2
  %40 = load i32, i32* @MGA_DMAPAD, align 4
  %41 = load i64, i64* @MGA_CXBNDRY, align 8
  %42 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %4, align 8
  %43 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  %46 = shl i32 %45, 16
  %47 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %4, align 8
  %48 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %46, %49
  %51 = load i32, i32* @MGA_YTOP, align 4
  %52 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %4, align 8
  %53 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = mul i32 %54, %55
  %57 = load i64, i64* @MGA_YBOT, align 8
  %58 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %4, align 8
  %59 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, 1
  %62 = load i32, i32* %7, align 4
  %63 = mul i32 %61, %62
  %64 = call i32 @DMA_BLOCK(i32 %40, i32 0, i64 %41, i32 %50, i32 %51, i32 %56, i64 %57, i32 %63)
  %65 = call i32 (...) @ADVANCE_DMA()
  ret void
}

declare dso_local i32 @BEGIN_DMA(i32) #1

declare dso_local i32 @DMA_BLOCK(i32, i32, i64, i32, i32, i32, i64, i32) #1

declare dso_local i32 @ADVANCE_DMA(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
