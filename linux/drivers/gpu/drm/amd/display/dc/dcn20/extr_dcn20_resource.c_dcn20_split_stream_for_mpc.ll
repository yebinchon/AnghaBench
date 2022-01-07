; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_dcn20_split_stream_for_mpc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_dcn20_split_stream_for_mpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_context = type { i32 }
%struct.resource_pool = type { %struct.TYPE_5__**, i32*, i32*, i32*, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.pipe_ctx = type { i32, i32, %struct.pipe_ctx*, %struct.pipe_ctx*, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__*, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.resource_context*, %struct.resource_pool*, %struct.pipe_ctx*, %struct.pipe_ctx*)* @dcn20_split_stream_for_mpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn20_split_stream_for_mpc(%struct.resource_context* %0, %struct.resource_pool* %1, %struct.pipe_ctx* %2, %struct.pipe_ctx* %3) #0 {
  %5 = alloca %struct.resource_context*, align 8
  %6 = alloca %struct.resource_pool*, align 8
  %7 = alloca %struct.pipe_ctx*, align 8
  %8 = alloca %struct.pipe_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pipe_ctx*, align 8
  store %struct.resource_context* %0, %struct.resource_context** %5, align 8
  store %struct.resource_pool* %1, %struct.resource_pool** %6, align 8
  store %struct.pipe_ctx* %2, %struct.pipe_ctx** %7, align 8
  store %struct.pipe_ctx* %3, %struct.pipe_ctx** %8, align 8
  %11 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %12 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %9, align 4
  %14 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %15 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %14, i32 0, i32 3
  %16 = load %struct.pipe_ctx*, %struct.pipe_ctx** %15, align 8
  store %struct.pipe_ctx* %16, %struct.pipe_ctx** %10, align 8
  %17 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %18 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %19 = bitcast %struct.pipe_ctx* %17 to i8*
  %20 = bitcast %struct.pipe_ctx* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 64, i1 false)
  %21 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %22 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %23 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %22, i32 0, i32 3
  store %struct.pipe_ctx* %21, %struct.pipe_ctx** %23, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %26 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %28 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %31 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %37 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 5
  store i32 %35, i32* %38, align 4
  %39 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %40 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %43 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %49 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 4
  store i32 %47, i32* %50, align 8
  %51 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %52 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %55 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %61 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  store i32 %59, i32* %62, align 4
  %63 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %64 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %67 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %73 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 8
  %75 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %76 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %76, align 8
  %78 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %79 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %77, i64 %81
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %85 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  store %struct.TYPE_5__* %83, %struct.TYPE_5__** %86, align 8
  %87 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %88 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %88, align 8
  %90 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %91 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %89, i64 %93
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %99 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %98, i32 0, i32 5
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 8
  %101 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %102 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %101, i32 0, i32 3
  %103 = load %struct.pipe_ctx*, %struct.pipe_ctx** %102, align 8
  %104 = icmp ne %struct.pipe_ctx* %103, null
  br i1 %104, label %105, label %129

105:                                              ; preds = %4
  %106 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %107 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %106, i32 0, i32 3
  %108 = load %struct.pipe_ctx*, %struct.pipe_ctx** %107, align 8
  %109 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %110 = icmp ne %struct.pipe_ctx* %108, %109
  br i1 %110, label %111, label %129

111:                                              ; preds = %105
  %112 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %113 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %112, i32 0, i32 3
  %114 = load %struct.pipe_ctx*, %struct.pipe_ctx** %113, align 8
  %115 = icmp ne %struct.pipe_ctx* %114, null
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = call i32 @ASSERT(i32 %117)
  %119 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %120 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %119, i32 0, i32 3
  %121 = load %struct.pipe_ctx*, %struct.pipe_ctx** %120, align 8
  %122 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %123 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %122, i32 0, i32 3
  store %struct.pipe_ctx* %121, %struct.pipe_ctx** %123, align 8
  %124 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %125 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %126 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %125, i32 0, i32 3
  %127 = load %struct.pipe_ctx*, %struct.pipe_ctx** %126, align 8
  %128 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %127, i32 0, i32 2
  store %struct.pipe_ctx* %124, %struct.pipe_ctx** %128, align 8
  br label %129

129:                                              ; preds = %111, %105, %4
  %130 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %131 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %132 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %131, i32 0, i32 3
  store %struct.pipe_ctx* %130, %struct.pipe_ctx** %132, align 8
  %133 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %134 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %135 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %134, i32 0, i32 2
  store %struct.pipe_ctx* %133, %struct.pipe_ctx** %135, align 8
  %136 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %137 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @ASSERT(i32 %138)
  %140 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %141 = call i32 @resource_build_scaling_params(%struct.pipe_ctx* %140)
  %142 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %143 = call i32 @resource_build_scaling_params(%struct.pipe_ctx* %142)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @resource_build_scaling_params(%struct.pipe_ctx*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
