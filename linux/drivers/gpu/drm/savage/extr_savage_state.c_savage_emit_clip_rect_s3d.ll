; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/savage/extr_savage_state.c_savage_emit_clip_rect_s3d.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/savage/extr_savage_state.c_savage_emit_clip_rect_s3d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.drm_clip_rect = type { i64, i64, i64, i64 }

@SAVAGE_SCISSOR_MASK_S3D = common dso_local global i32 0, align 4
@DMA_LOCALS = common dso_local global i32 0, align 4
@BCI_CMD_WAIT = common dso_local global i32 0, align 4
@BCI_CMD_WAIT_3D = common dso_local global i32 0, align 4
@SAVAGE_SCSTART_S3D = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @savage_emit_clip_rect_s3d(%struct.TYPE_7__* %0, %struct.drm_clip_rect* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.drm_clip_rect*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.drm_clip_rect* %1, %struct.drm_clip_rect** %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SAVAGE_SCISSOR_MASK_S3D, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %4, align 8
  %22 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = and i32 %24, 2047
  %26 = or i32 %20, %25
  %27 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %4, align 8
  %28 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = shl i32 %30, 16
  %32 = and i32 %31, 134152192
  %33 = or i32 %26, %32
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @SAVAGE_SCISSOR_MASK_S3D, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %4, align 8
  %39 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %42, 2047
  %44 = or i32 %37, %43
  %45 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %4, align 8
  %46 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = sub nsw i32 %48, 1
  %50 = shl i32 %49, 16
  %51 = and i32 %50, 134152192
  %52 = or i32 %44, %51
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %53, %58
  br i1 %59, label %68, label %60

60:                                               ; preds = %2
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %61, %66
  br i1 %67, label %68, label %94

68:                                               ; preds = %60, %2
  %69 = load i32, i32* @DMA_LOCALS, align 4
  %70 = call i32 @BEGIN_DMA(i32 4)
  %71 = load i32, i32* @BCI_CMD_WAIT, align 4
  %72 = load i32, i32* @BCI_CMD_WAIT_3D, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @DMA_WRITE(i32 %73)
  %75 = load i32, i32* @SAVAGE_SCSTART_S3D, align 4
  %76 = call i32 @DMA_SET_REGISTERS(i32 %75, i32 2)
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @DMA_WRITE(i32 %77)
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @DMA_WRITE(i32 %79)
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  store i32 %81, i32* %85, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 3
  store i32 %86, i32* %90, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  store i32 1, i32* %92, align 4
  %93 = call i32 (...) @DMA_COMMIT()
  br label %94

94:                                               ; preds = %68, %60
  ret void
}

declare dso_local i32 @BEGIN_DMA(i32) #1

declare dso_local i32 @DMA_WRITE(i32) #1

declare dso_local i32 @DMA_SET_REGISTERS(i32, i32) #1

declare dso_local i32 @DMA_COMMIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
