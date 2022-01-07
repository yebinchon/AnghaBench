; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calcs.c_split_stream_across_pipes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calcs.c_split_stream_across_pipes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_context = type { i32 }
%struct.resource_pool = type { %struct.TYPE_4__**, i32*, i32*, i32*, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.pipe_ctx = type { i32, %struct.pipe_ctx*, %struct.pipe_ctx*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__*, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.resource_context*, %struct.resource_pool*, %struct.pipe_ctx*, %struct.pipe_ctx*)* @split_stream_across_pipes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @split_stream_across_pipes(%struct.resource_context* %0, %struct.resource_pool* %1, %struct.pipe_ctx* %2, %struct.pipe_ctx* %3) #0 {
  %5 = alloca %struct.resource_context*, align 8
  %6 = alloca %struct.resource_pool*, align 8
  %7 = alloca %struct.pipe_ctx*, align 8
  %8 = alloca %struct.pipe_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.resource_context* %0, %struct.resource_context** %5, align 8
  store %struct.resource_pool* %1, %struct.resource_pool** %6, align 8
  store %struct.pipe_ctx* %2, %struct.pipe_ctx** %7, align 8
  store %struct.pipe_ctx* %3, %struct.pipe_ctx** %8, align 8
  %10 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %11 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %14 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %133

18:                                               ; preds = %4
  %19 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %20 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %21 = bitcast %struct.pipe_ctx* %19 to i8*
  %22 = bitcast %struct.pipe_ctx* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 64, i1 false)
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %25 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %27 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %30 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %36 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 5
  store i32 %34, i32* %37, align 4
  %38 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %39 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %42 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %48 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 4
  store i32 %46, i32* %49, align 8
  %50 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %51 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %54 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %60 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  store i32 %58, i32* %61, align 4
  %62 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %63 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %66 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %72 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 8
  %74 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %75 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %75, align 8
  %77 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %78 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %76, i64 %80
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %84 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  store %struct.TYPE_4__* %82, %struct.TYPE_4__** %85, align 8
  %86 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %87 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %87, align 8
  %89 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %90 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %88, i64 %92
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %98 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  %100 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %101 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %100, i32 0, i32 2
  %102 = load %struct.pipe_ctx*, %struct.pipe_ctx** %101, align 8
  %103 = icmp ne %struct.pipe_ctx* %102, null
  br i1 %103, label %104, label %122

104:                                              ; preds = %18
  %105 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %106 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %105, i32 0, i32 2
  %107 = load %struct.pipe_ctx*, %struct.pipe_ctx** %106, align 8
  %108 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %109 = icmp ne %struct.pipe_ctx* %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @ASSERT(i32 %110)
  %112 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %113 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %112, i32 0, i32 2
  %114 = load %struct.pipe_ctx*, %struct.pipe_ctx** %113, align 8
  %115 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %116 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %115, i32 0, i32 2
  store %struct.pipe_ctx* %114, %struct.pipe_ctx** %116, align 8
  %117 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %118 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %119 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %118, i32 0, i32 2
  %120 = load %struct.pipe_ctx*, %struct.pipe_ctx** %119, align 8
  %121 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %120, i32 0, i32 1
  store %struct.pipe_ctx* %117, %struct.pipe_ctx** %121, align 8
  br label %122

122:                                              ; preds = %104, %18
  %123 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %124 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %125 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %124, i32 0, i32 2
  store %struct.pipe_ctx* %123, %struct.pipe_ctx** %125, align 8
  %126 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %127 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %128 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %127, i32 0, i32 1
  store %struct.pipe_ctx* %126, %struct.pipe_ctx** %128, align 8
  %129 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %130 = call i32 @resource_build_scaling_params(%struct.pipe_ctx* %129)
  %131 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %132 = call i32 @resource_build_scaling_params(%struct.pipe_ctx* %131)
  br label %133

133:                                              ; preds = %122, %17
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
