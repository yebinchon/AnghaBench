; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fence.c_vmw_fence_goal_check_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fence.c_vmw_fence_goal_check_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_fence_obj = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.vmw_fence_manager = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64* }

@SVGA_FIFO_FENCE_GOAL = common dso_local global i32 0, align 4
@VMW_FENCE_WRAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_fence_obj*)* @vmw_fence_goal_check_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_fence_goal_check_locked(%struct.vmw_fence_obj* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmw_fence_obj*, align 8
  %4 = alloca %struct.vmw_fence_manager*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  store %struct.vmw_fence_obj* %0, %struct.vmw_fence_obj** %3, align 8
  %7 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %3, align 8
  %8 = call %struct.vmw_fence_manager* @fman_from_fence(%struct.vmw_fence_obj* %7)
  store %struct.vmw_fence_manager* %8, %struct.vmw_fence_manager** %4, align 8
  %9 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %3, align 8
  %10 = getelementptr inbounds %struct.vmw_fence_obj, %struct.vmw_fence_obj* %9, i32 0, i32 0
  %11 = call i64 @dma_fence_is_signaled_locked(%struct.TYPE_4__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

14:                                               ; preds = %1
  %15 = load %struct.vmw_fence_manager*, %struct.vmw_fence_manager** %4, align 8
  %16 = getelementptr inbounds %struct.vmw_fence_manager, %struct.vmw_fence_manager* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  store i64* %19, i64** %6, align 8
  %20 = load i64*, i64** %6, align 8
  %21 = load i32, i32* @SVGA_FIFO_FENCE_GOAL, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = call i64 @vmw_mmio_read(i64* %23)
  store i64 %24, i64* %5, align 8
  %25 = load %struct.vmw_fence_manager*, %struct.vmw_fence_manager** %4, align 8
  %26 = getelementptr inbounds %struct.vmw_fence_manager, %struct.vmw_fence_manager* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %14
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %3, align 8
  %32 = getelementptr inbounds %struct.vmw_fence_obj, %struct.vmw_fence_obj* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %30, %34
  %36 = load i64, i64* @VMW_FENCE_WRAP, align 8
  %37 = icmp slt i64 %35, %36
  br label %38

38:                                               ; preds = %29, %14
  %39 = phi i1 [ false, %14 ], [ %37, %29 ]
  %40 = zext i1 %39 to i32
  %41 = call i64 @likely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %56

44:                                               ; preds = %38
  %45 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %3, align 8
  %46 = getelementptr inbounds %struct.vmw_fence_obj, %struct.vmw_fence_obj* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %6, align 8
  %50 = load i32, i32* @SVGA_FIFO_FENCE_GOAL, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = call i32 @vmw_mmio_write(i64 %48, i64* %52)
  %54 = load %struct.vmw_fence_manager*, %struct.vmw_fence_manager** %4, align 8
  %55 = getelementptr inbounds %struct.vmw_fence_manager, %struct.vmw_fence_manager* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  store i32 1, i32* %2, align 4
  br label %56

56:                                               ; preds = %44, %43, %13
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.vmw_fence_manager* @fman_from_fence(%struct.vmw_fence_obj*) #1

declare dso_local i64 @dma_fence_is_signaled_locked(%struct.TYPE_4__*) #1

declare dso_local i64 @vmw_mmio_read(i64*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @vmw_mmio_write(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
