; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_benchmark.c_radeon_benchmark_move.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_benchmark.c_radeon_benchmark_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.radeon_bo = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@RADEON_BENCHMARK_ITERATIONS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@RADEON_BENCHMARK_COPY_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@RADEON_BENCHMARK_COPY_BLIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"blit\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Error while benchmarking BO move.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32, i32, i32)* @radeon_benchmark_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_benchmark_move(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.radeon_bo*, align 8
  %10 = alloca %struct.radeon_bo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.radeon_bo* null, %struct.radeon_bo** %9, align 8
  store %struct.radeon_bo* null, %struct.radeon_bo** %10, align 8
  %16 = load i32, i32* @RADEON_BENCHMARK_ITERATIONS, align 4
  store i32 %16, i32* %14, align 4
  %17 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @radeon_bo_create(%struct.radeon_device* %17, i32 %18, i32 %19, i32 1, i32 %20, i32 0, i32* null, i32* null, %struct.radeon_bo** %10)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %141

25:                                               ; preds = %4
  %26 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %27 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %26, i32 0)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %141

34:                                               ; preds = %25
  %35 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @radeon_bo_pin(%struct.radeon_bo* %35, i32 %36, i32* %11)
  store i32 %37, i32* %13, align 4
  %38 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %39 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %38)
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %141

43:                                               ; preds = %34
  %44 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @radeon_bo_create(%struct.radeon_device* %44, i32 %45, i32 %46, i32 1, i32 %47, i32 0, i32* null, i32* null, %struct.radeon_bo** %9)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %141

52:                                               ; preds = %43
  %53 = load %struct.radeon_bo*, %struct.radeon_bo** %9, align 8
  %54 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %53, i32 0)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %141

61:                                               ; preds = %52
  %62 = load %struct.radeon_bo*, %struct.radeon_bo** %9, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @radeon_bo_pin(%struct.radeon_bo* %62, i32 %63, i32* %12)
  store i32 %64, i32* %13, align 4
  %65 = load %struct.radeon_bo*, %struct.radeon_bo** %9, align 8
  %66 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %65)
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %141

70:                                               ; preds = %61
  %71 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %72 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %105

78:                                               ; preds = %70
  %79 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @RADEON_BENCHMARK_COPY_DMA, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load %struct.radeon_bo*, %struct.radeon_bo** %9, align 8
  %86 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @radeon_benchmark_do_move(%struct.radeon_device* %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %89)
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %15, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %78
  br label %141

94:                                               ; preds = %78
  %95 = load i32, i32* %15, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @radeon_benchmark_log_results(i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %104

104:                                              ; preds = %97, %94
  br label %105

105:                                              ; preds = %104, %70
  %106 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %107 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %140

113:                                              ; preds = %105
  %114 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @RADEON_BENCHMARK_COPY_BLIT, align 4
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.radeon_bo*, %struct.radeon_bo** %9, align 8
  %121 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @radeon_benchmark_do_move(%struct.radeon_device* %114, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %124)
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %15, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %113
  br label %141

129:                                              ; preds = %113
  %130 = load i32, i32* %15, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %129
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @radeon_benchmark_log_results(i32 %133, i32 %134, i32 %135, i32 %136, i32 %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %139

139:                                              ; preds = %132, %129
  br label %140

140:                                              ; preds = %139, %105
  br label %141

141:                                              ; preds = %140, %128, %93, %69, %60, %51, %42, %33, %24
  %142 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %143 = icmp ne %struct.radeon_bo* %142, null
  br i1 %143, label %144, label %159

144:                                              ; preds = %141
  %145 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %146 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %145, i32 0)
  store i32 %146, i32* %13, align 4
  %147 = load i32, i32* %13, align 4
  %148 = icmp eq i32 %147, 0
  %149 = zext i1 %148 to i32
  %150 = call i64 @likely(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %144
  %153 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %154 = call i32 @radeon_bo_unpin(%struct.radeon_bo* %153)
  %155 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %156 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %155)
  br label %157

157:                                              ; preds = %152, %144
  %158 = call i32 @radeon_bo_unref(%struct.radeon_bo** %10)
  br label %159

159:                                              ; preds = %157, %141
  %160 = load %struct.radeon_bo*, %struct.radeon_bo** %9, align 8
  %161 = icmp ne %struct.radeon_bo* %160, null
  br i1 %161, label %162, label %177

162:                                              ; preds = %159
  %163 = load %struct.radeon_bo*, %struct.radeon_bo** %9, align 8
  %164 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %163, i32 0)
  store i32 %164, i32* %13, align 4
  %165 = load i32, i32* %13, align 4
  %166 = icmp eq i32 %165, 0
  %167 = zext i1 %166 to i32
  %168 = call i64 @likely(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %162
  %171 = load %struct.radeon_bo*, %struct.radeon_bo** %9, align 8
  %172 = call i32 @radeon_bo_unpin(%struct.radeon_bo* %171)
  %173 = load %struct.radeon_bo*, %struct.radeon_bo** %9, align 8
  %174 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %173)
  br label %175

175:                                              ; preds = %170, %162
  %176 = call i32 @radeon_bo_unref(%struct.radeon_bo** %9)
  br label %177

177:                                              ; preds = %175, %159
  %178 = load i32, i32* %13, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %177
  %181 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %182

182:                                              ; preds = %180, %177
  ret void
}

declare dso_local i32 @radeon_bo_create(%struct.radeon_device*, i32, i32, i32, i32, i32, i32*, i32*, %struct.radeon_bo**) #1

declare dso_local i32 @radeon_bo_reserve(%struct.radeon_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @radeon_bo_pin(%struct.radeon_bo*, i32, i32*) #1

declare dso_local i32 @radeon_bo_unreserve(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_benchmark_do_move(%struct.radeon_device*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @radeon_benchmark_log_results(i32, i32, i32, i32, i32, i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @radeon_bo_unpin(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_bo_unref(%struct.radeon_bo**) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
