; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_copy_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_copy_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_state = type { i32, i32, %struct.TYPE_4__*, i32*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { %struct.pipe_ctx* }
%struct.pipe_ctx = type { i64, %struct.pipe_ctx*, %struct.pipe_ctx*, %struct.pipe_ctx*, %struct.pipe_ctx* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MAX_PIPES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dc_state* @dc_copy_state(%struct.dc_state* %0) #0 {
  %2 = alloca %struct.dc_state*, align 8
  %3 = alloca %struct.dc_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc_state*, align 8
  %7 = alloca %struct.pipe_ctx*, align 8
  store %struct.dc_state* %0, %struct.dc_state** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.dc_state* @kvmalloc(i32 32, i32 %8)
  store %struct.dc_state* %9, %struct.dc_state** %6, align 8
  %10 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %11 = icmp ne %struct.dc_state* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.dc_state* null, %struct.dc_state** %2, align 8
  br label %157

13:                                               ; preds = %1
  %14 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %15 = load %struct.dc_state*, %struct.dc_state** %3, align 8
  %16 = call i32 @memcpy(%struct.dc_state* %14, %struct.dc_state* %15, i32 32)
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %101, %13
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @MAX_PIPES, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %104

21:                                               ; preds = %17
  %22 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %23 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.pipe_ctx*, %struct.pipe_ctx** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %25, i64 %27
  store %struct.pipe_ctx* %28, %struct.pipe_ctx** %7, align 8
  %29 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %30 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %29, i32 0, i32 4
  %31 = load %struct.pipe_ctx*, %struct.pipe_ctx** %30, align 8
  %32 = icmp ne %struct.pipe_ctx* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %21
  %34 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %35 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.pipe_ctx*, %struct.pipe_ctx** %36, align 8
  %38 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %39 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %38, i32 0, i32 4
  %40 = load %struct.pipe_ctx*, %struct.pipe_ctx** %39, align 8
  %41 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %37, i64 %42
  %44 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %45 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %44, i32 0, i32 4
  store %struct.pipe_ctx* %43, %struct.pipe_ctx** %45, align 8
  br label %46

46:                                               ; preds = %33, %21
  %47 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %48 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %47, i32 0, i32 3
  %49 = load %struct.pipe_ctx*, %struct.pipe_ctx** %48, align 8
  %50 = icmp ne %struct.pipe_ctx* %49, null
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  %52 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %53 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load %struct.pipe_ctx*, %struct.pipe_ctx** %54, align 8
  %56 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %57 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %56, i32 0, i32 3
  %58 = load %struct.pipe_ctx*, %struct.pipe_ctx** %57, align 8
  %59 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %55, i64 %60
  %62 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %63 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %62, i32 0, i32 3
  store %struct.pipe_ctx* %61, %struct.pipe_ctx** %63, align 8
  br label %64

64:                                               ; preds = %51, %46
  %65 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %66 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %65, i32 0, i32 2
  %67 = load %struct.pipe_ctx*, %struct.pipe_ctx** %66, align 8
  %68 = icmp ne %struct.pipe_ctx* %67, null
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %71 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load %struct.pipe_ctx*, %struct.pipe_ctx** %72, align 8
  %74 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %75 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %74, i32 0, i32 2
  %76 = load %struct.pipe_ctx*, %struct.pipe_ctx** %75, align 8
  %77 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %73, i64 %78
  %80 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %81 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %80, i32 0, i32 2
  store %struct.pipe_ctx* %79, %struct.pipe_ctx** %81, align 8
  br label %82

82:                                               ; preds = %69, %64
  %83 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %84 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %83, i32 0, i32 1
  %85 = load %struct.pipe_ctx*, %struct.pipe_ctx** %84, align 8
  %86 = icmp ne %struct.pipe_ctx* %85, null
  br i1 %86, label %87, label %100

87:                                               ; preds = %82
  %88 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %89 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load %struct.pipe_ctx*, %struct.pipe_ctx** %90, align 8
  %92 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %93 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %92, i32 0, i32 1
  %94 = load %struct.pipe_ctx*, %struct.pipe_ctx** %93, align 8
  %95 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %91, i64 %96
  %98 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %99 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %98, i32 0, i32 1
  store %struct.pipe_ctx* %97, %struct.pipe_ctx** %99, align 8
  br label %100

100:                                              ; preds = %87, %82
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %4, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %4, align 4
  br label %17

104:                                              ; preds = %17
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %149, %104
  %106 = load i32, i32* %4, align 4
  %107 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %108 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %152

111:                                              ; preds = %105
  %112 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %113 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @dc_stream_retain(i32 %118)
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %145, %111
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %123 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %122, i32 0, i32 2
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %121, %129
  br i1 %130, label %131, label %148

131:                                              ; preds = %120
  %132 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %133 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %132, i32 0, i32 2
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @dc_plane_state_retain(i32 %143)
  br label %145

145:                                              ; preds = %131
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %5, align 4
  br label %120

148:                                              ; preds = %120
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %4, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %4, align 4
  br label %105

152:                                              ; preds = %105
  %153 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %154 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %153, i32 0, i32 1
  %155 = call i32 @kref_init(i32* %154)
  %156 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  store %struct.dc_state* %156, %struct.dc_state** %2, align 8
  br label %157

157:                                              ; preds = %152, %12
  %158 = load %struct.dc_state*, %struct.dc_state** %2, align 8
  ret %struct.dc_state* %158
}

declare dso_local %struct.dc_state* @kvmalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.dc_state*, %struct.dc_state*, i32) #1

declare dso_local i32 @dc_stream_retain(i32) #1

declare dso_local i32 @dc_plane_state_retain(i32) #1

declare dso_local i32 @kref_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
