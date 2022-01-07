; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_pipe_need_reprogram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_pipe_need_reprogram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { i64, %struct.TYPE_11__*, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i64, i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pipe_need_reprogram(%struct.pipe_ctx* %0, %struct.pipe_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pipe_ctx*, align 8
  %5 = alloca %struct.pipe_ctx*, align 8
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %4, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %5, align 8
  %6 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %7 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %6, i32 0, i32 1
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %9 = icmp ne %struct.TYPE_11__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %137

11:                                               ; preds = %2
  %12 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %17, i32 0, i32 1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %16, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %137

24:                                               ; preds = %11
  %25 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %25, i32 0, i32 1
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %31 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %30, i32 0, i32 1
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %29, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %137

37:                                               ; preds = %24
  %38 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %39 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %43 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %41, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %137

48:                                               ; preds = %37
  %49 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %50 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %53 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %48
  %57 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %58 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %57, i32 0, i32 1
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %61 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %60, i32 0, i32 1
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = icmp ne %struct.TYPE_11__* %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %137

65:                                               ; preds = %56, %48
  %66 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %67 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %71 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %69, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  store i32 1, i32* %3, align 4
  br label %137

76:                                               ; preds = %65
  %77 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %78 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %77, i32 0, i32 1
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %81 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %80, i32 0, i32 1
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = call i64 @is_timing_changed(%struct.TYPE_11__* %79, %struct.TYPE_11__* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  store i32 1, i32* %3, align 4
  br label %137

86:                                               ; preds = %76
  %87 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %88 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %87, i32 0, i32 1
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %91 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %90, i32 0, i32 1
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = call i64 @is_hdr_static_meta_changed(%struct.TYPE_11__* %89, %struct.TYPE_11__* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  store i32 1, i32* %3, align 4
  br label %137

96:                                               ; preds = %86
  %97 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %98 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %97, i32 0, i32 1
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %103 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %102, i32 0, i32 1
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %101, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %96
  store i32 1, i32* %3, align 4
  br label %137

109:                                              ; preds = %96
  %110 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %111 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %110, i32 0, i32 1
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %114 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %113, i32 0, i32 1
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = call i64 @is_vsc_info_packet_changed(%struct.TYPE_11__* %112, %struct.TYPE_11__* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  store i32 1, i32* %3, align 4
  br label %137

119:                                              ; preds = %109
  %120 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %121 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %120, i32 0, i32 1
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 0, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %119
  %129 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %130 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %129, i32 0, i32 1
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 0, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  store i32 1, i32* %3, align 4
  br label %137

136:                                              ; preds = %128, %119
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %136, %135, %118, %108, %95, %85, %75, %64, %47, %36, %23, %10
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i64 @is_timing_changed(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i64 @is_hdr_static_meta_changed(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i64 @is_vsc_info_packet_changed(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
