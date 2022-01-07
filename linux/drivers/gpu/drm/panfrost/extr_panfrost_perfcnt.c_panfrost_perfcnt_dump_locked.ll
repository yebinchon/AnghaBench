; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_perfcnt.c_panfrost_perfcnt_dump_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_perfcnt.c_panfrost_perfcnt_dump_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@GPU_PERFCNT_BASE_LO = common dso_local global i32 0, align 4
@GPU_PERFCNT_BASE_HI = common dso_local global i32 0, align 4
@GPU_INT_CLEAR = common dso_local global i32 0, align 4
@GPU_IRQ_CLEAN_CACHES_COMPLETED = common dso_local global i32 0, align 4
@GPU_IRQ_PERFCNT_SAMPLE_COMPLETED = common dso_local global i32 0, align 4
@GPU_CMD = common dso_local global i32 0, align 4
@GPU_CMD_PERFCNT_SAMPLE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.panfrost_device*)* @panfrost_perfcnt_dump_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panfrost_perfcnt_dump_locked(%struct.panfrost_device* %0) #0 {
  %2 = alloca %struct.panfrost_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.panfrost_device* %0, %struct.panfrost_device** %2, align 8
  %5 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %6 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = call i32 @reinit_completion(i32* %8)
  %10 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %11 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PAGE_SHIFT, align 4
  %19 = shl i32 %17, %18
  store i32 %19, i32* %3, align 4
  %20 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %21 = load i32, i32* @GPU_PERFCNT_BASE_LO, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @gpu_write(%struct.panfrost_device* %20, i32 %21, i32 %22)
  %24 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %25 = load i32, i32* @GPU_PERFCNT_BASE_HI, align 4
  %26 = load i32, i32* %3, align 4
  %27 = ashr i32 %26, 32
  %28 = call i32 @gpu_write(%struct.panfrost_device* %24, i32 %25, i32 %27)
  %29 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %30 = load i32, i32* @GPU_INT_CLEAR, align 4
  %31 = load i32, i32* @GPU_IRQ_CLEAN_CACHES_COMPLETED, align 4
  %32 = load i32, i32* @GPU_IRQ_PERFCNT_SAMPLE_COMPLETED, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @gpu_write(%struct.panfrost_device* %29, i32 %30, i32 %33)
  %35 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %36 = load i32, i32* @GPU_CMD, align 4
  %37 = load i32, i32* @GPU_CMD_PERFCNT_SAMPLE, align 4
  %38 = call i32 @gpu_write(%struct.panfrost_device* %35, i32 %36, i32 %37)
  %39 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %40 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @msecs_to_jiffies(i32 1000)
  %44 = call i32 @wait_for_completion_interruptible_timeout(i32* %42, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %1
  %48 = load i32, i32* @ETIMEDOUT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %55

50:                                               ; preds = %1
  %51 = load i32, i32* %4, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %50
  br label %55

55:                                               ; preds = %54, %47
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @gpu_write(%struct.panfrost_device*, i32, i32) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
