; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_set_drr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_set_drr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, %struct.drr_params*)* }
%struct.drr_params = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_ctx**, i32, i32, i32, i32, i32)* @set_drr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_drr(%struct.pipe_ctx** %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.pipe_ctx**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.drr_params, align 4
  %15 = alloca i32, align 4
  store %struct.pipe_ctx** %0, %struct.pipe_ctx*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = bitcast %struct.drr_params* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 12, i1 false)
  store i32 128, i32* %15, align 4
  %17 = load i32, i32* %10, align 4
  %18 = getelementptr inbounds %struct.drr_params, %struct.drr_params* %14, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %9, align 4
  %20 = getelementptr inbounds %struct.drr_params, %struct.drr_params* %14, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %76, %6
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %79

25:                                               ; preds = %21
  %26 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %7, align 8
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %26, i64 %28
  %30 = load %struct.pipe_ctx*, %struct.pipe_ctx** %29, align 8
  %31 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32 (%struct.TYPE_7__*, %struct.drr_params*)*, i32 (%struct.TYPE_7__*, %struct.drr_params*)** %36, align 8
  %38 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %7, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %38, i64 %40
  %42 = load %struct.pipe_ctx*, %struct.pipe_ctx** %41, align 8
  %43 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = call i32 %37(%struct.TYPE_7__* %45, %struct.drr_params* %14)
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %75

49:                                               ; preds = %25
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %49
  %53 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %7, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %53, i64 %55
  %57 = load %struct.pipe_ctx*, %struct.pipe_ctx** %56, align 8
  %58 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %63, align 8
  %65 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %7, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %65, i64 %67
  %69 = load %struct.pipe_ctx*, %struct.pipe_ctx** %68, align 8
  %70 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = load i32, i32* %15, align 4
  %74 = call i32 %64(%struct.TYPE_7__* %72, i32 %73)
  br label %75

75:                                               ; preds = %52, %49, %25
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %13, align 4
  br label %21

79:                                               ; preds = %21
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
