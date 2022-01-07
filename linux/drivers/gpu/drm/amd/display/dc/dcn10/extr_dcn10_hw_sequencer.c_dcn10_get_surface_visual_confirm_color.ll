; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_get_surface_visual_confirm_color.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_get_surface_visual_confirm_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.tg_color = type { i8*, i8*, i8* }

@MAX_TG_COLOR_VALUE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn10_get_surface_visual_confirm_color(%struct.pipe_ctx* %0, %struct.tg_color* %1) #0 {
  %3 = alloca %struct.pipe_ctx*, align 8
  %4 = alloca %struct.tg_color*, align 8
  %5 = alloca i8*, align 8
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %3, align 8
  store %struct.tg_color* %1, %struct.tg_color** %4, align 8
  %6 = load i8*, i8** @MAX_TG_COLOR_VALUE, align 8
  store i8* %6, i8** %5, align 8
  %7 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %41 [
    i32 129, label %12
    i32 130, label %16
    i32 131, label %20
    i32 132, label %24
    i32 128, label %31
  ]

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %15 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  br label %42

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %19 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  br label %42

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %23 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  br label %42

24:                                               ; preds = %2
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %27 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %30 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  br label %42

31:                                               ; preds = %2
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %34 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %37 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %40 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  br label %42

41:                                               ; preds = %2
  br label %42

42:                                               ; preds = %41, %31, %24, %20, %16, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
