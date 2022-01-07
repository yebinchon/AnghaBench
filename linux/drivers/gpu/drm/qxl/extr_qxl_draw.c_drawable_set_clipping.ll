; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_draw.c_drawable_set_clipping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_draw.c_drawable_set_clipping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_rect = type { i32 }
%struct.qxl_device = type { i32 }
%struct.qxl_bo = type { i32 }
%struct.qxl_clip_rects = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qxl_rect* (%struct.qxl_device*, i32, %struct.qxl_bo*)* @drawable_set_clipping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qxl_rect* @drawable_set_clipping(%struct.qxl_device* %0, i32 %1, %struct.qxl_bo* %2) #0 {
  %4 = alloca %struct.qxl_rect*, align 8
  %5 = alloca %struct.qxl_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qxl_bo*, align 8
  %8 = alloca %struct.qxl_clip_rects*, align 8
  %9 = alloca i32, align 4
  store %struct.qxl_device* %0, %struct.qxl_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.qxl_bo* %2, %struct.qxl_bo** %7, align 8
  %10 = load %struct.qxl_bo*, %struct.qxl_bo** %7, align 8
  %11 = bitcast %struct.qxl_clip_rects** %8 to i8**
  %12 = call i32 @qxl_bo_kmap(%struct.qxl_bo* %10, i8** %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store %struct.qxl_rect* null, %struct.qxl_rect** %4, align 8
  br label %38

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.qxl_clip_rects*, %struct.qxl_clip_rects** %8, align 8
  %19 = getelementptr inbounds %struct.qxl_clip_rects, %struct.qxl_clip_rects* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.qxl_clip_rects*, %struct.qxl_clip_rects** %8, align 8
  %21 = getelementptr inbounds %struct.qxl_clip_rects, %struct.qxl_clip_rects* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.qxl_clip_rects*, %struct.qxl_clip_rects** %8, align 8
  %24 = getelementptr inbounds %struct.qxl_clip_rects, %struct.qxl_clip_rects* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = mul i64 4, %27
  %29 = trunc i64 %28 to i32
  %30 = load %struct.qxl_clip_rects*, %struct.qxl_clip_rects** %8, align 8
  %31 = getelementptr inbounds %struct.qxl_clip_rects, %struct.qxl_clip_rects* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.qxl_clip_rects*, %struct.qxl_clip_rects** %8, align 8
  %34 = getelementptr inbounds %struct.qxl_clip_rects, %struct.qxl_clip_rects* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.qxl_rect*
  store %struct.qxl_rect* %37, %struct.qxl_rect** %4, align 8
  br label %38

38:                                               ; preds = %16, %15
  %39 = load %struct.qxl_rect*, %struct.qxl_rect** %4, align 8
  ret %struct.qxl_rect* %39
}

declare dso_local i32 @qxl_bo_kmap(%struct.qxl_bo*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
