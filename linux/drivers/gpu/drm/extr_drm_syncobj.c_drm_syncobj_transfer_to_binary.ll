; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_transfer_to_binary.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_transfer_to_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_syncobj_transfer = type { i32, i32, i32, i32 }
%struct.drm_syncobj = type { i32 }
%struct.dma_fence = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_file*, %struct.drm_syncobj_transfer*)* @drm_syncobj_transfer_to_binary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_syncobj_transfer_to_binary(%struct.drm_file* %0, %struct.drm_syncobj_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.drm_syncobj_transfer*, align 8
  %6 = alloca %struct.drm_syncobj*, align 8
  %7 = alloca %struct.dma_fence*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %4, align 8
  store %struct.drm_syncobj_transfer* %1, %struct.drm_syncobj_transfer** %5, align 8
  store %struct.drm_syncobj* null, %struct.drm_syncobj** %6, align 8
  %9 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %10 = load %struct.drm_syncobj_transfer*, %struct.drm_syncobj_transfer** %5, align 8
  %11 = getelementptr inbounds %struct.drm_syncobj_transfer, %struct.drm_syncobj_transfer* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.drm_syncobj* @drm_syncobj_find(%struct.drm_file* %9, i32 %12)
  store %struct.drm_syncobj* %13, %struct.drm_syncobj** %6, align 8
  %14 = load %struct.drm_syncobj*, %struct.drm_syncobj** %6, align 8
  %15 = icmp ne %struct.drm_syncobj* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %44

19:                                               ; preds = %2
  %20 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %21 = load %struct.drm_syncobj_transfer*, %struct.drm_syncobj_transfer** %5, align 8
  %22 = getelementptr inbounds %struct.drm_syncobj_transfer, %struct.drm_syncobj_transfer* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.drm_syncobj_transfer*, %struct.drm_syncobj_transfer** %5, align 8
  %25 = getelementptr inbounds %struct.drm_syncobj_transfer, %struct.drm_syncobj_transfer* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.drm_syncobj_transfer*, %struct.drm_syncobj_transfer** %5, align 8
  %28 = getelementptr inbounds %struct.drm_syncobj_transfer, %struct.drm_syncobj_transfer* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @drm_syncobj_find_fence(%struct.drm_file* %20, i32 %23, i32 %26, i32 %29, %struct.dma_fence** %7)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  br label %40

34:                                               ; preds = %19
  %35 = load %struct.drm_syncobj*, %struct.drm_syncobj** %6, align 8
  %36 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %37 = call i32 @drm_syncobj_replace_fence(%struct.drm_syncobj* %35, %struct.dma_fence* %36)
  %38 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %39 = call i32 @dma_fence_put(%struct.dma_fence* %38)
  br label %40

40:                                               ; preds = %34, %33
  %41 = load %struct.drm_syncobj*, %struct.drm_syncobj** %6, align 8
  %42 = call i32 @drm_syncobj_put(%struct.drm_syncobj* %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %16
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.drm_syncobj* @drm_syncobj_find(%struct.drm_file*, i32) #1

declare dso_local i32 @drm_syncobj_find_fence(%struct.drm_file*, i32, i32, i32, %struct.dma_fence**) #1

declare dso_local i32 @drm_syncobj_replace_fence(%struct.drm_syncobj*, %struct.dma_fence*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @drm_syncobj_put(%struct.drm_syncobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
