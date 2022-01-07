; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_get_surface_visual_confirm_color.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_get_surface_visual_confirm_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.tg_color = type { i8*, i8*, i8* }

@MAX_TG_COLOR_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_ctx*, %struct.tg_color*)* @get_surface_visual_confirm_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_surface_visual_confirm_color(%struct.pipe_ctx* %0, %struct.tg_color* %1) #0 {
  %3 = alloca %struct.pipe_ctx*, align 8
  %4 = alloca %struct.tg_color*, align 8
  %5 = alloca i8*, align 8
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %3, align 8
  store %struct.tg_color* %1, %struct.tg_color** %4, align 8
  %6 = load i32, i32* @MAX_TG_COLOR_VALUE, align 4
  %7 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 4, %12
  %14 = mul nsw i32 %6, %13
  %15 = sdiv i32 %14, 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %5, align 8
  %18 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %52 [
    i32 129, label %23
    i32 130, label %27
    i32 131, label %31
    i32 132, label %35
    i32 128, label %42
  ]

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %26 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  br label %53

27:                                               ; preds = %2
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %30 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  br label %53

31:                                               ; preds = %2
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %34 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  br label %53

35:                                               ; preds = %2
  %36 = load i8*, i8** %5, align 8
  %37 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %38 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %41 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  br label %53

42:                                               ; preds = %2
  %43 = load i8*, i8** %5, align 8
  %44 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %45 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %48 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %51 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  br label %53

52:                                               ; preds = %2
  br label %53

53:                                               ; preds = %52, %42, %35, %31, %27, %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
