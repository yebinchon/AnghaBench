; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_get_hdr_visual_confirm_color.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_get_hdr_visual_confirm_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_8__*, %struct.TYPE_6__, %struct.pipe_ctx* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.tg_color = type { i32, i32, i32 }

@MAX_TG_COLOR_VALUE = common dso_local global i32 0, align 4
@TRANSFER_FUNCTION_PQ = common dso_local global i32 0, align 4
@TRANSFER_FUNCTION_GAMMA22 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn10_get_hdr_visual_confirm_color(%struct.pipe_ctx* %0, %struct.tg_color* %1) #0 {
  %3 = alloca %struct.pipe_ctx*, align 8
  %4 = alloca %struct.tg_color*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pipe_ctx*, align 8
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %3, align 8
  store %struct.tg_color* %1, %struct.tg_color** %4, align 8
  %7 = load i32, i32* @MAX_TG_COLOR_VALUE, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  store %struct.pipe_ctx* %8, %struct.pipe_ctx** %6, align 8
  br label %9

9:                                                ; preds = %14, %2
  %10 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %11 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %10, i32 0, i32 2
  %12 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %13 = icmp ne %struct.pipe_ctx* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %16 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %15, i32 0, i32 2
  %17 = load %struct.pipe_ctx*, %struct.pipe_ctx** %16, align 8
  store %struct.pipe_ctx* %17, %struct.pipe_ctx** %6, align 8
  br label %9

18:                                               ; preds = %9
  %19 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %20 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %69 [
    i32 129, label %24
    i32 128, label %39
  ]

24:                                               ; preds = %18
  %25 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %26 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TRANSFER_FUNCTION_PQ, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %37 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %34, %24
  br label %82

39:                                               ; preds = %18
  %40 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %41 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @TRANSFER_FUNCTION_PQ, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %52 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %68

53:                                               ; preds = %39
  %54 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %55 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @TRANSFER_FUNCTION_GAMMA22, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %53
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %66 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %63, %53
  br label %68

68:                                               ; preds = %67, %49
  br label %82

69:                                               ; preds = %18
  %70 = load i32, i32* %5, align 4
  %71 = sdiv i32 %70, 2
  %72 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %73 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %5, align 4
  %75 = sdiv i32 %74, 2
  %76 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %77 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %5, align 4
  %79 = sdiv i32 %78, 2
  %80 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %81 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %69, %68, %38
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
