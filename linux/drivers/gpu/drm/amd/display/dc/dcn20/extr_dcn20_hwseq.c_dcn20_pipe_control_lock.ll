; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_pipe_control_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_pipe_control_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32 }
%struct.pipe_ctx = type { %struct.TYPE_10__, %struct.TYPE_8__*, i32*, i64 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)* }
%struct.TYPE_8__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn20_pipe_control_lock(%struct.dc* %0, %struct.pipe_ctx* %1, i32 %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.pipe_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %9 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %132

13:                                               ; preds = %3
  %14 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = icmp ne %struct.TYPE_8__* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %18, %13
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %24
  %28 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %56

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %37 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %35, %32
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %41
  %45 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %46 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44, %35
  %51 = load %struct.dc*, %struct.dc** %4, align 8
  %52 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @dcn20_setup_gsl_group_as_lock(%struct.dc* %51, %struct.pipe_ctx* %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %44, %41
  br label %56

56:                                               ; preds = %55, %27, %24
  %57 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %58 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %57, i32 0, i32 1
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = icmp ne %struct.TYPE_8__* %59, null
  br i1 %60, label %61, label %100

61:                                               ; preds = %56
  %62 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %63 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %100

68:                                               ; preds = %61
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %68
  %72 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %73 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 3
  %79 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %78, align 8
  %80 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %81 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = call i32 %79(%struct.TYPE_11__* %83)
  br label %99

85:                                               ; preds = %68
  %86 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %87 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %92, align 8
  %94 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %95 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = call i32 %93(%struct.TYPE_11__* %97)
  br label %99

99:                                               ; preds = %85, %71
  br label %132

100:                                              ; preds = %61, %56
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %100
  %104 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %105 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %110, align 8
  %112 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %113 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = call i32 %111(%struct.TYPE_11__* %115)
  br label %131

117:                                              ; preds = %100
  %118 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %119 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %124, align 8
  %126 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %127 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = call i32 %125(%struct.TYPE_11__* %129)
  br label %131

131:                                              ; preds = %117, %103
  br label %132

132:                                              ; preds = %12, %131, %99
  ret void
}

declare dso_local i32 @dcn20_setup_gsl_group_as_lock(%struct.dc*, %struct.pipe_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
