; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_get_position.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_get_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_6__*, %struct.crtc_position*)* }
%struct.crtc_position = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_ctx**, i32, %struct.crtc_position*)* @get_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_position(%struct.pipe_ctx** %0, i32 %1, %struct.crtc_position* %2) #0 {
  %4 = alloca %struct.pipe_ctx**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crtc_position*, align 8
  %7 = alloca i32, align 4
  store %struct.pipe_ctx** %0, %struct.pipe_ctx*** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.crtc_position* %2, %struct.crtc_position** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %35, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %8
  %13 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %13, i64 %15
  %17 = load %struct.pipe_ctx*, %struct.pipe_ctx** %16, align 8
  %18 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_6__*, %struct.crtc_position*)*, i32 (%struct.TYPE_6__*, %struct.crtc_position*)** %23, align 8
  %25 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %25, i64 %27
  %29 = load %struct.pipe_ctx*, %struct.pipe_ctx** %28, align 8
  %30 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load %struct.crtc_position*, %struct.crtc_position** %6, align 8
  %34 = call i32 %24(%struct.TYPE_6__* %32, %struct.crtc_position* %33)
  br label %35

35:                                               ; preds = %12
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %8

38:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
