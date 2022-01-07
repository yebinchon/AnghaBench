; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i810/extr_i810_dma.c_i810_freelist_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i810/extr_i810_dma.c_i810_freelist_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_buf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_device = type { %struct.drm_device_dma* }
%struct.drm_device_dma = type { i32, %struct.drm_buf** }

@I810_BUF_FREE = common dso_local global i32 0, align 4
@I810_BUF_CLIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_buf* (%struct.drm_device*)* @i810_freelist_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_buf* @i810_freelist_get(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_buf*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_device_dma*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_buf*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.drm_device_dma*, %struct.drm_device_dma** %10, align 8
  store %struct.drm_device_dma* %11, %struct.drm_device_dma** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %41, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.drm_device_dma*, %struct.drm_device_dma** %4, align 8
  %15 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %12
  %19 = load %struct.drm_device_dma*, %struct.drm_device_dma** %4, align 8
  %20 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %19, i32 0, i32 1
  %21 = load %struct.drm_buf**, %struct.drm_buf*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.drm_buf*, %struct.drm_buf** %21, i64 %23
  %25 = load %struct.drm_buf*, %struct.drm_buf** %24, align 8
  store %struct.drm_buf* %25, %struct.drm_buf** %7, align 8
  %26 = load %struct.drm_buf*, %struct.drm_buf** %7, align 8
  %27 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  store %struct.TYPE_2__* %28, %struct.TYPE_2__** %8, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @I810_BUF_FREE, align 4
  %33 = load i32, i32* @I810_BUF_CLIENT, align 4
  %34 = call i32 @cmpxchg(i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @I810_BUF_FREE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %18
  %39 = load %struct.drm_buf*, %struct.drm_buf** %7, align 8
  store %struct.drm_buf* %39, %struct.drm_buf** %2, align 8
  br label %45

40:                                               ; preds = %18
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %12

44:                                               ; preds = %12
  store %struct.drm_buf* null, %struct.drm_buf** %2, align 8
  br label %45

45:                                               ; preds = %44, %38
  %46 = load %struct.drm_buf*, %struct.drm_buf** %2, align 8
  ret %struct.drm_buf* %46
}

declare dso_local i32 @cmpxchg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
