; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_queue_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_queue_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.vc4_exec_info = type { i64, i32, i32*, i64 }
%struct.ww_acquire_ctx = type { i32 }
%struct.drm_syncobj = type { i32 }
%struct.vc4_dev = type { i32, i32, i32, i64 }
%struct.vc4_fence = type { i32, i64, %struct.drm_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vc4_fence_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.vc4_exec_info*, %struct.ww_acquire_ctx*, %struct.drm_syncobj*)* @vc4_queue_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_queue_submit(%struct.drm_device* %0, %struct.vc4_exec_info* %1, %struct.ww_acquire_ctx* %2, %struct.drm_syncobj* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.vc4_exec_info*, align 8
  %8 = alloca %struct.ww_acquire_ctx*, align 8
  %9 = alloca %struct.drm_syncobj*, align 8
  %10 = alloca %struct.vc4_dev*, align 8
  %11 = alloca %struct.vc4_exec_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.vc4_fence*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.vc4_exec_info* %1, %struct.vc4_exec_info** %7, align 8
  store %struct.ww_acquire_ctx* %2, %struct.ww_acquire_ctx** %8, align 8
  store %struct.drm_syncobj* %3, %struct.drm_syncobj** %9, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %16 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %15)
  store %struct.vc4_dev* %16, %struct.vc4_dev** %10, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.vc4_fence* @kzalloc(i32 24, i32 %17)
  store %struct.vc4_fence* %18, %struct.vc4_fence** %14, align 8
  %19 = load %struct.vc4_fence*, %struct.vc4_fence** %14, align 8
  %20 = icmp ne %struct.vc4_fence* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %107

24:                                               ; preds = %4
  %25 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %26 = load %struct.vc4_fence*, %struct.vc4_fence** %14, align 8
  %27 = getelementptr inbounds %struct.vc4_fence, %struct.vc4_fence* %26, i32 0, i32 2
  store %struct.drm_device* %25, %struct.drm_device** %27, align 8
  %28 = load %struct.vc4_dev*, %struct.vc4_dev** %10, align 8
  %29 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %28, i32 0, i32 0
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.vc4_dev*, %struct.vc4_dev** %10, align 8
  %33 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %33, align 8
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %38 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %37, i32 0, i32 3
  store i64 %36, i64* %38, align 8
  %39 = load %struct.vc4_fence*, %struct.vc4_fence** %14, align 8
  %40 = getelementptr inbounds %struct.vc4_fence, %struct.vc4_fence* %39, i32 0, i32 0
  %41 = load %struct.vc4_dev*, %struct.vc4_dev** %10, align 8
  %42 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %41, i32 0, i32 0
  %43 = load %struct.vc4_dev*, %struct.vc4_dev** %10, align 8
  %44 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %47 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @dma_fence_init(i32* %40, i32* @vc4_fence_ops, i32* %42, i32 %45, i64 %48)
  %50 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %51 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.vc4_fence*, %struct.vc4_fence** %14, align 8
  %54 = getelementptr inbounds %struct.vc4_fence, %struct.vc4_fence* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.vc4_fence*, %struct.vc4_fence** %14, align 8
  %56 = getelementptr inbounds %struct.vc4_fence, %struct.vc4_fence* %55, i32 0, i32 0
  %57 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %58 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %57, i32 0, i32 2
  store i32* %56, i32** %58, align 8
  %59 = load %struct.drm_syncobj*, %struct.drm_syncobj** %9, align 8
  %60 = icmp ne %struct.drm_syncobj* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %24
  %62 = load %struct.drm_syncobj*, %struct.drm_syncobj** %9, align 8
  %63 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %64 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @drm_syncobj_replace_fence(%struct.drm_syncobj* %62, i32* %65)
  br label %67

67:                                               ; preds = %61, %24
  %68 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %69 = load i64, i64* %12, align 8
  %70 = call i32 @vc4_update_bo_seqnos(%struct.vc4_exec_info* %68, i64 %69)
  %71 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %72 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %73 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %8, align 8
  %74 = call i32 @vc4_unlock_bo_reservations(%struct.drm_device* %71, %struct.vc4_exec_info* %72, %struct.ww_acquire_ctx* %73)
  %75 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %76 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %75, i32 0, i32 1
  %77 = load %struct.vc4_dev*, %struct.vc4_dev** %10, align 8
  %78 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %77, i32 0, i32 1
  %79 = call i32 @list_add_tail(i32* %76, i32* %78)
  %80 = load %struct.vc4_dev*, %struct.vc4_dev** %10, align 8
  %81 = call %struct.vc4_exec_info* @vc4_first_render_job(%struct.vc4_dev* %80)
  store %struct.vc4_exec_info* %81, %struct.vc4_exec_info** %11, align 8
  %82 = load %struct.vc4_dev*, %struct.vc4_dev** %10, align 8
  %83 = call %struct.vc4_exec_info* @vc4_first_bin_job(%struct.vc4_dev* %82)
  %84 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %85 = icmp eq %struct.vc4_exec_info* %83, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %67
  %87 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %11, align 8
  %88 = icmp ne %struct.vc4_exec_info* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %11, align 8
  %91 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %94 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %92, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %89, %86
  %98 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %99 = call i32 @vc4_submit_next_bin_job(%struct.drm_device* %98)
  %100 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %101 = call i32 @vc4_queue_hangcheck(%struct.drm_device* %100)
  br label %102

102:                                              ; preds = %97, %89, %67
  %103 = load %struct.vc4_dev*, %struct.vc4_dev** %10, align 8
  %104 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %103, i32 0, i32 0
  %105 = load i64, i64* %13, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32* %104, i64 %105)
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %102, %21
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local %struct.vc4_fence* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dma_fence_init(i32*, i32*, i32*, i32, i64) #1

declare dso_local i32 @drm_syncobj_replace_fence(%struct.drm_syncobj*, i32*) #1

declare dso_local i32 @vc4_update_bo_seqnos(%struct.vc4_exec_info*, i64) #1

declare dso_local i32 @vc4_unlock_bo_reservations(%struct.drm_device*, %struct.vc4_exec_info*, %struct.ww_acquire_ctx*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.vc4_exec_info* @vc4_first_render_job(%struct.vc4_dev*) #1

declare dso_local %struct.vc4_exec_info* @vc4_first_bin_job(%struct.vc4_dev*) #1

declare dso_local i32 @vc4_submit_next_bin_job(%struct.drm_device*) #1

declare dso_local i32 @vc4_queue_hangcheck(%struct.drm_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
