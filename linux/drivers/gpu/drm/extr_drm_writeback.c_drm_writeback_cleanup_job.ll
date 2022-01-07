; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_writeback.c_drm_writeback_cleanup_job.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_writeback.c_drm_writeback_cleanup_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_writeback_job = type { i64, i64, i64, %struct.drm_writeback_connector* }
%struct.drm_writeback_connector = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_connector_helper_funcs* }
%struct.drm_connector_helper_funcs = type { i32 (%struct.drm_writeback_connector*, %struct.drm_writeback_job*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_writeback_cleanup_job(%struct.drm_writeback_job* %0) #0 {
  %2 = alloca %struct.drm_writeback_job*, align 8
  %3 = alloca %struct.drm_writeback_connector*, align 8
  %4 = alloca %struct.drm_connector_helper_funcs*, align 8
  store %struct.drm_writeback_job* %0, %struct.drm_writeback_job** %2, align 8
  %5 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %2, align 8
  %6 = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %5, i32 0, i32 3
  %7 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %6, align 8
  store %struct.drm_writeback_connector* %7, %struct.drm_writeback_connector** %3, align 8
  %8 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %3, align 8
  %9 = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %10, align 8
  store %struct.drm_connector_helper_funcs* %11, %struct.drm_connector_helper_funcs** %4, align 8
  %12 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %2, align 8
  %13 = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %4, align 8
  %18 = getelementptr inbounds %struct.drm_connector_helper_funcs, %struct.drm_connector_helper_funcs* %17, i32 0, i32 0
  %19 = load i32 (%struct.drm_writeback_connector*, %struct.drm_writeback_job*)*, i32 (%struct.drm_writeback_connector*, %struct.drm_writeback_job*)** %18, align 8
  %20 = icmp ne i32 (%struct.drm_writeback_connector*, %struct.drm_writeback_job*)* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %4, align 8
  %23 = getelementptr inbounds %struct.drm_connector_helper_funcs, %struct.drm_connector_helper_funcs* %22, i32 0, i32 0
  %24 = load i32 (%struct.drm_writeback_connector*, %struct.drm_writeback_job*)*, i32 (%struct.drm_writeback_connector*, %struct.drm_writeback_job*)** %23, align 8
  %25 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %3, align 8
  %26 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %2, align 8
  %27 = call i32 %24(%struct.drm_writeback_connector* %25, %struct.drm_writeback_job* %26)
  br label %28

28:                                               ; preds = %21, %16, %1
  %29 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %2, align 8
  %30 = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %2, align 8
  %35 = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @drm_framebuffer_put(i64 %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %2, align 8
  %40 = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %2, align 8
  %45 = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @dma_fence_put(i64 %46)
  br label %48

48:                                               ; preds = %43, %38
  %49 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %2, align 8
  %50 = call i32 @kfree(%struct.drm_writeback_job* %49)
  ret void
}

declare dso_local i32 @drm_framebuffer_put(i64) #1

declare dso_local i32 @dma_fence_put(i64) #1

declare dso_local i32 @kfree(%struct.drm_writeback_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
