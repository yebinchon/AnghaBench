; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_hwseq.c_dce_pipe_control_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_hwseq.c_dce_pipe_control_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.dce_hwseq* }
%struct.dce_hwseq = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.pipe_ctx = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 (%struct.TYPE_10__*)* }

@BLND_V_UPDATE_LOCK = common dso_local global i32* null, align 8
@BLND_DCP_GRPH_V_UPDATE_LOCK = common dso_local global i32 0, align 4
@BLND_SCL_V_UPDATE_LOCK = common dso_local global i32 0, align 4
@BLND_BLND_V_UPDATE_LOCK = common dso_local global i32 0, align 4
@BLND_V_UPDATE_LOCK_MODE = common dso_local global i32 0, align 4
@CRTC_H_BLANK_START_END = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce_pipe_control_lock(%struct.dc* %0, %struct.pipe_ctx* %1, i32 %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.pipe_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dce_hwseq*, align 8
  %14 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  store i32 %18, i32* %7, align 4
  %19 = load %struct.dc*, %struct.dc** %4, align 8
  %20 = getelementptr inbounds %struct.dc, %struct.dc* %19, i32 0, i32 0
  %21 = load %struct.dce_hwseq*, %struct.dce_hwseq** %20, align 8
  store %struct.dce_hwseq* %21, %struct.dce_hwseq** %13, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %3
  %25 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %26 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64 (%struct.TYPE_10__*)*, i64 (%struct.TYPE_10__*)** %31, align 8
  %33 = icmp ne i64 (%struct.TYPE_10__*)* %32, null
  br i1 %33, label %34, label %50

34:                                               ; preds = %24
  %35 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %36 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64 (%struct.TYPE_10__*)*, i64 (%struct.TYPE_10__*)** %41, align 8
  %43 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %44 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = call i64 %42(%struct.TYPE_10__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  br label %138

50:                                               ; preds = %34, %24, %3
  %51 = load i32*, i32** @BLND_V_UPDATE_LOCK, align 8
  %52 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %53 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %51, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @BLND_DCP_GRPH_V_UPDATE_LOCK, align 4
  %61 = load i32, i32* @BLND_SCL_V_UPDATE_LOCK, align 4
  %62 = load i32, i32* @BLND_BLND_V_UPDATE_LOCK, align 4
  %63 = load i32, i32* @BLND_V_UPDATE_LOCK_MODE, align 4
  %64 = call i32 @REG_GET_4(i32 %59, i32 %60, i32* %8, i32 %61, i32* %9, i32 %62, i32* %10, i32 %63, i32* %11)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %11, align 4
  %69 = load i32*, i32** @BLND_V_UPDATE_LOCK, align 8
  %70 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %71 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32, i32* %69, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @BLND_DCP_GRPH_V_UPDATE_LOCK, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @BLND_SCL_V_UPDATE_LOCK, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @REG_SET_2(i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82)
  %84 = load %struct.dce_hwseq*, %struct.dce_hwseq** %13, align 8
  %85 = getelementptr inbounds %struct.dce_hwseq, %struct.dce_hwseq* %84, i32 0, i32 1
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %50
  %91 = load i32*, i32** @BLND_V_UPDATE_LOCK, align 8
  %92 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %93 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i32, i32* %91, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @BLND_BLND_V_UPDATE_LOCK, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @BLND_V_UPDATE_LOCK_MODE, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @REG_SET_2(i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %90, %50
  %107 = load %struct.dce_hwseq*, %struct.dce_hwseq** %13, align 8
  %108 = getelementptr inbounds %struct.dce_hwseq, %struct.dce_hwseq* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %138

112:                                              ; preds = %106
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %137, label %115

115:                                              ; preds = %112
  %116 = load i32*, i32** @CRTC_H_BLANK_START_END, align 8
  %117 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %118 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds i32, i32* %116, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @REG_READ(i32 %124)
  store i32 %125, i32* %14, align 4
  %126 = load i32*, i32** @CRTC_H_BLANK_START_END, align 8
  %127 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %128 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds i32, i32* %126, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @REG_WRITE(i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %115, %112
  br label %138

138:                                              ; preds = %49, %137, %106
  ret void
}

declare dso_local i32 @REG_GET_4(i32, i32, i32*, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
