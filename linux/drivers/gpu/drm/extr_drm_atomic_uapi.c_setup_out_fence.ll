; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_uapi.c_setup_out_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_uapi.c_setup_out_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_out_fence_state = type { i64, i32, i32 }
%struct.dma_fence = type { i32 }

@O_CLOEXEC = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_out_fence_state*, %struct.dma_fence*)* @setup_out_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_out_fence(%struct.drm_out_fence_state* %0, %struct.dma_fence* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_out_fence_state*, align 8
  %5 = alloca %struct.dma_fence*, align 8
  store %struct.drm_out_fence_state* %0, %struct.drm_out_fence_state** %4, align 8
  store %struct.dma_fence* %1, %struct.dma_fence** %5, align 8
  %6 = load i32, i32* @O_CLOEXEC, align 4
  %7 = call i64 @get_unused_fd_flags(i32 %6)
  %8 = load %struct.drm_out_fence_state*, %struct.drm_out_fence_state** %4, align 8
  %9 = getelementptr inbounds %struct.drm_out_fence_state, %struct.drm_out_fence_state* %8, i32 0, i32 0
  store i64 %7, i64* %9, align 8
  %10 = load %struct.drm_out_fence_state*, %struct.drm_out_fence_state** %4, align 8
  %11 = getelementptr inbounds %struct.drm_out_fence_state, %struct.drm_out_fence_state* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.drm_out_fence_state*, %struct.drm_out_fence_state** %4, align 8
  %16 = getelementptr inbounds %struct.drm_out_fence_state, %struct.drm_out_fence_state* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %3, align 4
  br label %45

19:                                               ; preds = %2
  %20 = load %struct.drm_out_fence_state*, %struct.drm_out_fence_state** %4, align 8
  %21 = getelementptr inbounds %struct.drm_out_fence_state, %struct.drm_out_fence_state* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = load %struct.drm_out_fence_state*, %struct.drm_out_fence_state** %4, align 8
  %25 = getelementptr inbounds %struct.drm_out_fence_state, %struct.drm_out_fence_state* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @put_user(i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @EFAULT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %45

32:                                               ; preds = %19
  %33 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %34 = call i32 @sync_file_create(%struct.dma_fence* %33)
  %35 = load %struct.drm_out_fence_state*, %struct.drm_out_fence_state** %4, align 8
  %36 = getelementptr inbounds %struct.drm_out_fence_state, %struct.drm_out_fence_state* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.drm_out_fence_state*, %struct.drm_out_fence_state** %4, align 8
  %38 = getelementptr inbounds %struct.drm_out_fence_state, %struct.drm_out_fence_state* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %45

44:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %41, %29, %14
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @get_unused_fd_flags(i32) #1

declare dso_local i64 @put_user(i32, i32) #1

declare dso_local i32 @sync_file_create(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
