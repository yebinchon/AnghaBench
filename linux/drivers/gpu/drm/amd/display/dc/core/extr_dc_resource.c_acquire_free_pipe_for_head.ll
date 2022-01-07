; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_acquire_free_pipe_for_head.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_acquire_free_pipe_for_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_state = type { %struct.resource_context }
%struct.resource_context = type { %struct.pipe_ctx* }
%struct.resource_pool = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pipe_ctx* (%struct.dc_state*, %struct.resource_pool*, i64)* }
%struct.pipe_ctx = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pipe_ctx* (%struct.dc_state*, %struct.resource_pool*, %struct.pipe_ctx*)* @acquire_free_pipe_for_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pipe_ctx* @acquire_free_pipe_for_head(%struct.dc_state* %0, %struct.resource_pool* %1, %struct.pipe_ctx* %2) #0 {
  %4 = alloca %struct.pipe_ctx*, align 8
  %5 = alloca %struct.dc_state*, align 8
  %6 = alloca %struct.resource_pool*, align 8
  %7 = alloca %struct.pipe_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource_context*, align 8
  store %struct.dc_state* %0, %struct.dc_state** %5, align 8
  store %struct.resource_pool* %1, %struct.resource_pool** %6, align 8
  store %struct.pipe_ctx* %2, %struct.pipe_ctx** %7, align 8
  %10 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %11 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %10, i32 0, i32 0
  store %struct.resource_context* %11, %struct.resource_context** %9, align 8
  %12 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %13 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  store %struct.pipe_ctx* %17, %struct.pipe_ctx** %4, align 8
  br label %80

18:                                               ; preds = %3
  %19 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %20 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %57, %18
  %24 = load i32, i32* %8, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %23
  %27 = load %struct.resource_context*, %struct.resource_context** %9, align 8
  %28 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %27, i32 0, i32 0
  %29 = load %struct.pipe_ctx*, %struct.pipe_ctx** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %29, i64 %31
  %33 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %36 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %26
  %40 = load %struct.resource_context*, %struct.resource_context** %9, align 8
  %41 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %40, i32 0, i32 0
  %42 = load %struct.pipe_ctx*, %struct.pipe_ctx** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %42, i64 %44
  %46 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %39
  %50 = load %struct.resource_context*, %struct.resource_context** %9, align 8
  %51 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %50, i32 0, i32 0
  %52 = load %struct.pipe_ctx*, %struct.pipe_ctx** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %52, i64 %54
  store %struct.pipe_ctx* %55, %struct.pipe_ctx** %4, align 8
  br label %80

56:                                               ; preds = %39, %26
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %8, align 4
  br label %23

60:                                               ; preds = %23
  %61 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %62 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load %struct.pipe_ctx* (%struct.dc_state*, %struct.resource_pool*, i64)*, %struct.pipe_ctx* (%struct.dc_state*, %struct.resource_pool*, i64)** %64, align 8
  %66 = icmp ne %struct.pipe_ctx* (%struct.dc_state*, %struct.resource_pool*, i64)* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  store %struct.pipe_ctx* null, %struct.pipe_ctx** %4, align 8
  br label %80

68:                                               ; preds = %60
  %69 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %70 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load %struct.pipe_ctx* (%struct.dc_state*, %struct.resource_pool*, i64)*, %struct.pipe_ctx* (%struct.dc_state*, %struct.resource_pool*, i64)** %72, align 8
  %74 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %75 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %76 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %77 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call %struct.pipe_ctx* %73(%struct.dc_state* %74, %struct.resource_pool* %75, i64 %78)
  store %struct.pipe_ctx* %79, %struct.pipe_ctx** %4, align 8
  br label %80

80:                                               ; preds = %68, %67, %49, %16
  %81 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  ret %struct.pipe_ctx* %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
