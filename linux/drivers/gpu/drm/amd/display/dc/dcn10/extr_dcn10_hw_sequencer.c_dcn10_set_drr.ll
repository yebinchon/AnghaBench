; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_set_drr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_set_drr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, %struct.drr_params*)* }
%struct.drr_params = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_ctx**, i32, i32, i32, i32, i32)* @dcn10_set_drr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_set_drr(%struct.pipe_ctx** %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
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
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 20, i1 false)
  store i32 2048, i32* %15, align 4
  %17 = load i32, i32* %10, align 4
  %18 = getelementptr inbounds %struct.drr_params, %struct.drr_params* %14, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %9, align 4
  %20 = getelementptr inbounds %struct.drr_params, %struct.drr_params* %14, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %11, align 4
  %22 = getelementptr inbounds %struct.drr_params, %struct.drr_params* %14, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %12, align 4
  %24 = getelementptr inbounds %struct.drr_params, %struct.drr_params* %14, i32 0, i32 3
  store i32 %23, i32* %24, align 4
  store i32 0, i32* %13, align 4
  br label %25

25:                                               ; preds = %80, %6
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %83

29:                                               ; preds = %25
  %30 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %7, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %30, i64 %32
  %34 = load %struct.pipe_ctx*, %struct.pipe_ctx** %33, align 8
  %35 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32 (%struct.TYPE_7__*, %struct.drr_params*)*, i32 (%struct.TYPE_7__*, %struct.drr_params*)** %40, align 8
  %42 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %7, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %42, i64 %44
  %46 = load %struct.pipe_ctx*, %struct.pipe_ctx** %45, align 8
  %47 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = call i32 %41(%struct.TYPE_7__* %49, %struct.drr_params* %14)
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %79

53:                                               ; preds = %29
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %53
  %57 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %7, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %57, i64 %59
  %61 = load %struct.pipe_ctx*, %struct.pipe_ctx** %60, align 8
  %62 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %67, align 8
  %69 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %7, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %69, i64 %71
  %73 = load %struct.pipe_ctx*, %struct.pipe_ctx** %72, align 8
  %74 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = load i32, i32* %15, align 4
  %78 = call i32 %68(%struct.TYPE_7__* %76, i32 %77)
  br label %79

79:                                               ; preds = %56, %53, %29
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %25

83:                                               ; preds = %25
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
