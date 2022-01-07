; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/savage/extr_savage_state.c_savage_dispatch_swap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/savage/extr_savage_state.c_savage_dispatch_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.drm_clip_rect = type { i64, i64, i64, i64 }

@DMA_LOCALS = common dso_local global i32 0, align 4
@BCI_CMD_RECT = common dso_local global i32 0, align 4
@BCI_CMD_RECT_XP = common dso_local global i32 0, align 4
@BCI_CMD_RECT_YP = common dso_local global i32 0, align 4
@BCI_CMD_SRC_PBD_COLOR_NEW = common dso_local global i32 0, align 4
@BCI_CMD_DEST_GBD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, %struct.drm_clip_rect*)* @savage_dispatch_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @savage_dispatch_swap(%struct.TYPE_3__* %0, i32 %1, %struct.drm_clip_rect* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_clip_rect*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.drm_clip_rect* %2, %struct.drm_clip_rect** %7, align 8
  %10 = load i32, i32* @DMA_LOCALS, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %103

14:                                               ; preds = %3
  %15 = load i32, i32* @BCI_CMD_RECT, align 4
  %16 = load i32, i32* @BCI_CMD_RECT_XP, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @BCI_CMD_RECT_YP, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @BCI_CMD_SRC_PBD_COLOR_NEW, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @BCI_CMD_DEST_GBD, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @BCI_CMD_SET_ROP(i32 %24, i32 204)
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %99, %14
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %102

30:                                               ; preds = %26
  %31 = call i32 @BEGIN_DMA(i32 6)
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @DMA_WRITE(i32 %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @DMA_WRITE(i32 %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @DMA_WRITE(i32 %40)
  %42 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %42, i64 %44
  %46 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %7, align 8
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %48, i64 %50
  %52 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @BCI_X_Y(i64 %47, i64 %53)
  %55 = call i32 @DMA_WRITE(i32 %54)
  %56 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %56, i64 %58
  %60 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %7, align 8
  %63 = load i32, i32* %9, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %62, i64 %64
  %66 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @BCI_X_Y(i64 %61, i64 %67)
  %69 = call i32 @DMA_WRITE(i32 %68)
  %70 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %7, align 8
  %71 = load i32, i32* %9, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %70, i64 %72
  %74 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %7, align 8
  %77 = load i32, i32* %9, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %76, i64 %78
  %80 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %75, %81
  %83 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %7, align 8
  %84 = load i32, i32* %9, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %83, i64 %85
  %87 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %7, align 8
  %90 = load i32, i32* %9, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %89, i64 %91
  %93 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %88, %94
  %96 = call i32 @BCI_W_H(i64 %82, i64 %95)
  %97 = call i32 @DMA_WRITE(i32 %96)
  %98 = call i32 (...) @DMA_COMMIT()
  br label %99

99:                                               ; preds = %30
  %100 = load i32, i32* %9, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %9, align 4
  br label %26

102:                                              ; preds = %26
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %13
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @BCI_CMD_SET_ROP(i32, i32) #1

declare dso_local i32 @BEGIN_DMA(i32) #1

declare dso_local i32 @DMA_WRITE(i32) #1

declare dso_local i32 @BCI_X_Y(i64, i64) #1

declare dso_local i32 @BCI_W_H(i64, i64) #1

declare dso_local i32 @DMA_COMMIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
