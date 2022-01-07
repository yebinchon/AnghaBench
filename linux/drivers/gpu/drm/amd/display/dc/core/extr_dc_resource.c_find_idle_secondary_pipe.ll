; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_find_idle_secondary_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_find_idle_secondary_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_context = type { %struct.pipe_ctx* }
%struct.resource_pool = type { i32 }
%struct.pipe_ctx = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pipe_ctx* @find_idle_secondary_pipe(%struct.resource_context* %0, %struct.resource_pool* %1, %struct.pipe_ctx* %2) #0 {
  %4 = alloca %struct.resource_context*, align 8
  %5 = alloca %struct.resource_pool*, align 8
  %6 = alloca %struct.pipe_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pipe_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.resource_context* %0, %struct.resource_context** %4, align 8
  store %struct.resource_pool* %1, %struct.resource_pool** %5, align 8
  store %struct.pipe_ctx* %2, %struct.pipe_ctx** %6, align 8
  store %struct.pipe_ctx* null, %struct.pipe_ctx** %8, align 8
  %10 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %11 = icmp ne %struct.pipe_ctx* %10, null
  br i1 %11, label %12, label %41

12:                                               ; preds = %3
  %13 = load %struct.resource_pool*, %struct.resource_pool** %5, align 8
  %14 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 1
  %17 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %18 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %16, %19
  store i32 %20, i32* %9, align 4
  %21 = load %struct.resource_context*, %struct.resource_context** %4, align 8
  %22 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %21, i32 0, i32 0
  %23 = load %struct.pipe_ctx*, %struct.pipe_ctx** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %23, i64 %25
  %27 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %12
  %31 = load %struct.resource_context*, %struct.resource_context** %4, align 8
  %32 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %31, i32 0, i32 0
  %33 = load %struct.pipe_ctx*, %struct.pipe_ctx** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %33, i64 %35
  store %struct.pipe_ctx* %36, %struct.pipe_ctx** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %30, %12
  br label %41

41:                                               ; preds = %40, %3
  %42 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %43 = icmp ne %struct.pipe_ctx* %42, null
  br i1 %43, label %77, label %44

44:                                               ; preds = %41
  %45 = load %struct.resource_pool*, %struct.resource_pool** %5, align 8
  %46 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %73, %44
  %50 = load i32, i32* %7, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %49
  %53 = load %struct.resource_context*, %struct.resource_context** %4, align 8
  %54 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %53, i32 0, i32 0
  %55 = load %struct.pipe_ctx*, %struct.pipe_ctx** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %55, i64 %57
  %59 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %52
  %63 = load %struct.resource_context*, %struct.resource_context** %4, align 8
  %64 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %63, i32 0, i32 0
  %65 = load %struct.pipe_ctx*, %struct.pipe_ctx** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %65, i64 %67
  store %struct.pipe_ctx* %68, %struct.pipe_ctx** %8, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %71 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %76

72:                                               ; preds = %52
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %7, align 4
  br label %49

76:                                               ; preds = %62, %49
  br label %77

77:                                               ; preds = %76, %41
  %78 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  ret %struct.pipe_ctx* %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
