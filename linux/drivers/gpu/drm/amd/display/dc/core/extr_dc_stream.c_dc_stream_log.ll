; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_stream.c_dc_stream_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_stream.c_dc_stream_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32 }
%struct.dc_stream_state = type { %struct.TYPE_8__*, %struct.TYPE_7__, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [75 x i8] c"core_stream 0x%p: src: %d, %d, %d, %d; dst: %d, %d, %d, %d, colorSpace:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"\09pix_clk_khz: %d, h_total: %d, v_total: %d, pixelencoder:%d, displaycolorDepth:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"\09link: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dc_stream_log(%struct.dc* %0, %struct.dc_stream_state* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.dc_stream_state*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %4, align 8
  %5 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %6 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %7 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %11 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %15 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %19 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %23 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %27 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %31 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %35 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %39 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, ...) @DC_LOG_DC(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), %struct.dc_stream_state* %5, i32 %9, i32 %13, i32 %17, i32 %21, i32 %25, i32 %29, i32 %33, i32 %37, i32 %40)
  %42 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %43 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sdiv i32 %45, 10
  %47 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %48 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %52 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %56 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %60 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, ...) @DC_LOG_DC(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %50, i32 %54, i32 %58, i32 %62)
  %64 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %65 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, ...) @DC_LOG_DC(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  ret void
}

declare dso_local i32 @DC_LOG_DC(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
