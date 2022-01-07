; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_should_enable_fbc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_should_enable_fbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_9__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.dc_state = type { i32, %struct.resource_context }
%struct.resource_context = type { %struct.pipe_ctx* }
%struct.pipe_ctx = type { i32, %struct.TYPE_14__*, %struct.TYPE_11__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64 }

@SIGNAL_TYPE_EDP = common dso_local global i64 0, align 8
@DC_ARRAY_LINEAR_GENERAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc*, %struct.dc_state*, i64*)* @should_enable_fbc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_enable_fbc(%struct.dc* %0, %struct.dc_state* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc*, align 8
  %6 = alloca %struct.dc_state*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pipe_ctx*, align 8
  %10 = alloca %struct.resource_context*, align 8
  %11 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %5, align 8
  store %struct.dc_state* %1, %struct.dc_state** %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.pipe_ctx* null, %struct.pipe_ctx** %9, align 8
  %12 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %13 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %12, i32 0, i32 1
  store %struct.resource_context* %13, %struct.resource_context** %10, align 8
  %14 = load %struct.dc*, %struct.dc** %5, align 8
  %15 = getelementptr inbounds %struct.dc, %struct.dc* %14, i32 0, i32 0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %11, align 4
  %19 = load %struct.dc*, %struct.dc** %5, align 8
  %20 = getelementptr inbounds %struct.dc, %struct.dc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.dc*, %struct.dc** %5, align 8
  %24 = getelementptr inbounds %struct.dc, %struct.dc* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %133

30:                                               ; preds = %3
  %31 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %32 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %133

36:                                               ; preds = %30
  store i64 0, i64* %8, align 8
  br label %37

37:                                               ; preds = %74, %36
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.dc*, %struct.dc** %5, align 8
  %40 = getelementptr inbounds %struct.dc, %struct.dc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %38, %43
  br i1 %44, label %45, label %77

45:                                               ; preds = %37
  %46 = load %struct.resource_context*, %struct.resource_context** %10, align 8
  %47 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %46, i32 0, i32 0
  %48 = load %struct.pipe_ctx*, %struct.pipe_ctx** %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %48, i64 %49
  %51 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %50, i32 0, i32 2
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = icmp ne %struct.TYPE_11__* %52, null
  br i1 %53, label %54, label %73

54:                                               ; preds = %45
  %55 = load %struct.resource_context*, %struct.resource_context** %10, align 8
  %56 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %55, i32 0, i32 0
  %57 = load %struct.pipe_ctx*, %struct.pipe_ctx** %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %57, i64 %58
  store %struct.pipe_ctx* %59, %struct.pipe_ctx** %9, align 8
  %60 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %61 = icmp ne %struct.pipe_ctx* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  br label %74

63:                                               ; preds = %54
  %64 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %65 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i64, i64* %8, align 8
  %71 = load i64*, i64** %7, align 8
  store i64 %70, i64* %71, align 8
  br label %77

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %45
  br label %74

74:                                               ; preds = %73, %62
  %75 = load i64, i64* %8, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %8, align 8
  br label %37

77:                                               ; preds = %69, %37
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.dc*, %struct.dc** %5, align 8
  %80 = getelementptr inbounds %struct.dc, %struct.dc* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %78, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %133

86:                                               ; preds = %77
  %87 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %88 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %87, i32 0, i32 2
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = icmp ne %struct.TYPE_10__* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  store i32 0, i32* %4, align 4
  br label %133

94:                                               ; preds = %86
  %95 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %96 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %95, i32 0, i32 2
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @SIGNAL_TYPE_EDP, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  store i32 0, i32* %4, align 4
  br label %133

105:                                              ; preds = %94
  %106 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %107 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %106, i32 0, i32 2
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  store i32 0, i32* %4, align 4
  br label %133

115:                                              ; preds = %105
  %116 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %117 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %116, i32 0, i32 1
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = icmp ne %struct.TYPE_14__* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %115
  store i32 0, i32* %4, align 4
  br label %133

121:                                              ; preds = %115
  %122 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %123 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %122, i32 0, i32 1
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @DC_ARRAY_LINEAR_GENERAL, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %121
  store i32 0, i32* %4, align 4
  br label %133

132:                                              ; preds = %121
  store i32 1, i32* %4, align 4
  br label %133

133:                                              ; preds = %132, %131, %120, %114, %104, %93, %85, %35, %29
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
