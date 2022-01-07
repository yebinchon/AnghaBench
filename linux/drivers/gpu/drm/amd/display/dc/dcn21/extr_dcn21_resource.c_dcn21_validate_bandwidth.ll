; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_resource.c_dcn21_validate_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_resource.c_dcn21_validate_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.dc_state = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { i64 }

@MAX_PIPES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@fast = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Mode Validation Warning: %s failed validation.\0A\00", align 1
@fail = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcn21_validate_bandwidth(%struct.dc* %0, %struct.dc_state* %1, i32 %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.dc_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.dc_state* %1, %struct.dc_state** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = call i32 (...) @BW_VAL_TRACE_SETUP()
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* @MAX_PIPES, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.dc*, %struct.dc** %4, align 8
  %19 = getelementptr inbounds %struct.dc, %struct.dc* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32* @kzalloc(i32 %25, i32 %26)
  store i32* %27, i32** %12, align 8
  %28 = load %struct.dc*, %struct.dc** %4, align 8
  %29 = getelementptr inbounds %struct.dc, %struct.dc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @DC_LOGGER_INIT(i32 %32)
  %34 = call i32 (...) @BW_VAL_TRACE_COUNT()
  %35 = load %struct.dc*, %struct.dc** %4, align 8
  %36 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = call i32 @dcn20_fast_validate_bw(%struct.dc* %35, %struct.dc_state* %36, i32* %37, i32* %11, i32* %17, i32* %8)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %3
  br label %86

42:                                               ; preds = %3
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  br label %66

46:                                               ; preds = %42
  %47 = call i32 (...) @BW_VAL_TRACE_END_VOLTAGE_LEVEL()
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @fast, align 4
  %52 = call i32 @BW_VAL_TRACE_SKIP(i32 %51)
  br label %86

53:                                               ; preds = %46
  %54 = load %struct.dc*, %struct.dc** %4, align 8
  %55 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @dcn21_calculate_wm(%struct.dc* %54, %struct.dc_state* %55, i32* %56, i32* %11, i32* %17, i32 %57)
  %59 = load %struct.dc*, %struct.dc** %4, align 8
  %60 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @dcn20_calculate_dlg_params(%struct.dc* %59, %struct.dc_state* %60, i32* %61, i32 %62, i32 %63)
  %65 = call i32 (...) @BW_VAL_TRACE_END_WATERMARKS()
  br label %86

66:                                               ; preds = %45
  %67 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %68 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %74 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32, i32* %72, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dml_get_status_message(i32 %81)
  %83 = call i32 @DC_LOG_WARNING(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @fail, align 4
  %85 = call i32 @BW_VAL_TRACE_SKIP(i32 %84)
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %66, %53, %50, %41
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @kfree(i32* %87)
  %89 = call i32 (...) @BW_VAL_TRACE_FINISH()
  %90 = load i32, i32* %7, align 4
  %91 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %91)
  ret i32 %90
}

declare dso_local i32 @BW_VAL_TRACE_SETUP(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @DC_LOGGER_INIT(i32) #1

declare dso_local i32 @BW_VAL_TRACE_COUNT(...) #1

declare dso_local i32 @dcn20_fast_validate_bw(%struct.dc*, %struct.dc_state*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BW_VAL_TRACE_END_VOLTAGE_LEVEL(...) #1

declare dso_local i32 @BW_VAL_TRACE_SKIP(i32) #1

declare dso_local i32 @dcn21_calculate_wm(%struct.dc*, %struct.dc_state*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @dcn20_calculate_dlg_params(%struct.dc*, %struct.dc_state*, i32*, i32, i32) #1

declare dso_local i32 @BW_VAL_TRACE_END_WATERMARKS(...) #1

declare dso_local i32 @DC_LOG_WARNING(i8*, i32) #1

declare dso_local i32 @dml_get_status_message(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @BW_VAL_TRACE_FINISH(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
