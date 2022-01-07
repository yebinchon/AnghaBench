; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_setup_gsl_group_as_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_setup_gsl_group_as_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.pipe_ctx = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_11__*, i32, i32)*, i32 (%struct.TYPE_11__*, %struct.gsl_params*)* }
%struct.gsl_params = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn20_setup_gsl_group_as_lock(%struct.dc* %0, %struct.pipe_ctx* %1, i32 %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.pipe_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gsl_params, align 4
  %8 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 @memset(%struct.gsl_params* %7, i32 0, i32 16)
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %56

12:                                               ; preds = %3
  %13 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %148

19:                                               ; preds = %12
  %20 = load %struct.dc*, %struct.dc** %4, align 8
  %21 = call i32 @find_free_gsl_group(%struct.dc* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* %8, align 4
  switch i32 %30, label %52 [
    i32 1, label %31
    i32 2, label %38
    i32 3, label %45
  ]

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.gsl_params, %struct.gsl_params* %7, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load %struct.dc*, %struct.dc** %4, align 8
  %34 = getelementptr inbounds %struct.dc, %struct.dc* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %54

38:                                               ; preds = %19
  %39 = getelementptr inbounds %struct.gsl_params, %struct.gsl_params* %7, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load %struct.dc*, %struct.dc** %4, align 8
  %41 = getelementptr inbounds %struct.dc, %struct.dc* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  br label %54

45:                                               ; preds = %19
  %46 = getelementptr inbounds %struct.gsl_params, %struct.gsl_params* %7, i32 0, i32 2
  store i32 1, i32* %46, align 4
  %47 = load %struct.dc*, %struct.dc** %4, align 8
  %48 = getelementptr inbounds %struct.dc, %struct.dc* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  store i32 1, i32* %51, align 4
  br label %54

52:                                               ; preds = %19
  %53 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %148

54:                                               ; preds = %45, %38, %31
  %55 = getelementptr inbounds %struct.gsl_params, %struct.gsl_params* %7, i32 0, i32 3
  store i32 1, i32* %55, align 4
  br label %94

56:                                               ; preds = %3
  %57 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %58 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %148

64:                                               ; preds = %56
  %65 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %66 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  %68 = load i32, i32* %8, align 4
  switch i32 %68, label %90 [
    i32 1, label %69
    i32 2, label %76
    i32 3, label %83
  ]

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.gsl_params, %struct.gsl_params* %7, i32 0, i32 0
  store i32 0, i32* %70, align 4
  %71 = load %struct.dc*, %struct.dc** %4, align 8
  %72 = getelementptr inbounds %struct.dc, %struct.dc* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  store i32 0, i32* %75, align 4
  br label %92

76:                                               ; preds = %64
  %77 = getelementptr inbounds %struct.gsl_params, %struct.gsl_params* %7, i32 0, i32 1
  store i32 0, i32* %77, align 4
  %78 = load %struct.dc*, %struct.dc** %4, align 8
  %79 = getelementptr inbounds %struct.dc, %struct.dc* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store i32 0, i32* %82, align 4
  br label %92

83:                                               ; preds = %64
  %84 = getelementptr inbounds %struct.gsl_params, %struct.gsl_params* %7, i32 0, i32 2
  store i32 0, i32* %84, align 4
  %85 = load %struct.dc*, %struct.dc** %4, align 8
  %86 = getelementptr inbounds %struct.dc, %struct.dc* %85, i32 0, i32 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  store i32 0, i32* %89, align 4
  br label %92

90:                                               ; preds = %64
  %91 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %148

92:                                               ; preds = %83, %76, %69
  %93 = getelementptr inbounds %struct.gsl_params, %struct.gsl_params* %7, i32 0, i32 3
  store i32 0, i32* %93, align 4
  br label %94

94:                                               ; preds = %92, %54
  %95 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %96 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i32 (%struct.TYPE_11__*, %struct.gsl_params*)*, i32 (%struct.TYPE_11__*, %struct.gsl_params*)** %101, align 8
  %103 = icmp ne i32 (%struct.TYPE_11__*, %struct.gsl_params*)* %102, null
  br i1 %103, label %104, label %146

104:                                              ; preds = %94
  %105 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %106 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32 (%struct.TYPE_11__*, i32, i32)*, i32 (%struct.TYPE_11__*, i32, i32)** %111, align 8
  %113 = icmp ne i32 (%struct.TYPE_11__*, i32, i32)* %112, null
  br i1 %113, label %114, label %146

114:                                              ; preds = %104
  %115 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %116 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i32 (%struct.TYPE_11__*, %struct.gsl_params*)*, i32 (%struct.TYPE_11__*, %struct.gsl_params*)** %121, align 8
  %123 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %124 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = call i32 %122(%struct.TYPE_11__* %126, %struct.gsl_params* %7)
  %128 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %129 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i32 (%struct.TYPE_11__*, i32, i32)*, i32 (%struct.TYPE_11__*, i32, i32)** %134, align 8
  %136 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %137 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp ne i32 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i32 4, i32 0
  %145 = call i32 %135(%struct.TYPE_11__* %139, i32 %140, i32 %144)
  br label %148

146:                                              ; preds = %104, %94
  %147 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %148

148:                                              ; preds = %18, %52, %63, %90, %146, %114
  ret void
}

declare dso_local i32 @memset(%struct.gsl_params*, i32, i32) #1

declare dso_local i32 @find_free_gsl_group(%struct.dc*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
