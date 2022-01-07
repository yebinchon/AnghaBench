; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_dc_add_stream_to_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_dc_add_stream_to_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.dc*, %struct.dc_state*, %struct.dc_stream_state*)* }
%struct.TYPE_5__ = type { i32 }
%struct.dc_state = type { i64, %struct.dc_stream_state** }
%struct.dc_stream_state = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Max streams reached, can't add stream %p !\0A\00", align 1
@DC_ERROR_UNEXPECTED = common dso_local global i32 0, align 4
@DC_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Adding stream %p to context failed with err %d!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_add_stream_to_ctx(%struct.dc* %0, %struct.dc_state* %1, %struct.dc_stream_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc*, align 8
  %6 = alloca %struct.dc_state*, align 8
  %7 = alloca %struct.dc_stream_state*, align 8
  %8 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %5, align 8
  store %struct.dc_state* %1, %struct.dc_state** %6, align 8
  store %struct.dc_stream_state* %2, %struct.dc_stream_state** %7, align 8
  %9 = load %struct.dc*, %struct.dc** %5, align 8
  %10 = getelementptr inbounds %struct.dc, %struct.dc* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @DC_LOGGER_INIT(i32 %13)
  %15 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %16 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.dc*, %struct.dc** %5, align 8
  %19 = getelementptr inbounds %struct.dc, %struct.dc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp uge i64 %17, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %26 = call i32 (i8*, %struct.dc_stream_state*, ...) @DC_LOG_WARNING(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.dc_stream_state* %25)
  %27 = load i32, i32* @DC_ERROR_UNEXPECTED, align 4
  store i32 %27, i32* %4, align 4
  br label %63

28:                                               ; preds = %3
  %29 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %30 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %31 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %30, i32 0, i32 1
  %32 = load %struct.dc_stream_state**, %struct.dc_stream_state*** %31, align 8
  %33 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %34 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.dc_stream_state*, %struct.dc_stream_state** %32, i64 %35
  store %struct.dc_stream_state* %29, %struct.dc_stream_state** %36, align 8
  %37 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %38 = call i32 @dc_stream_retain(%struct.dc_stream_state* %37)
  %39 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %40 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.dc*, %struct.dc** %5, align 8
  %44 = getelementptr inbounds %struct.dc, %struct.dc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32 (%struct.dc*, %struct.dc_state*, %struct.dc_stream_state*)*, i32 (%struct.dc*, %struct.dc_state*, %struct.dc_stream_state*)** %48, align 8
  %50 = load %struct.dc*, %struct.dc** %5, align 8
  %51 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %52 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %53 = call i32 %49(%struct.dc* %50, %struct.dc_state* %51, %struct.dc_stream_state* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @DC_OK, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %28
  %58 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (i8*, %struct.dc_stream_state*, ...) @DC_LOG_WARNING(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), %struct.dc_stream_state* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %28
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %24
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @DC_LOGGER_INIT(i32) #1

declare dso_local i32 @DC_LOG_WARNING(i8*, %struct.dc_stream_state*, ...) #1

declare dso_local i32 @dc_stream_retain(%struct.dc_stream_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
