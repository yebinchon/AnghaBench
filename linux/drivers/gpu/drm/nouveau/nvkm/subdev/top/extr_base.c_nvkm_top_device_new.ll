; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/top/extr_base.c_nvkm_top_device_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/top/extr_base.c_nvkm_top_device_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_top_device = type { i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.nvkm_top = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NVKM_SUBDEV_NR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nvkm_top_device* @nvkm_top_device_new(%struct.nvkm_top* %0) #0 {
  %2 = alloca %struct.nvkm_top*, align 8
  %3 = alloca %struct.nvkm_top_device*, align 8
  store %struct.nvkm_top* %0, %struct.nvkm_top** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.nvkm_top_device* @kmalloc(i32 40, i32 %4)
  store %struct.nvkm_top_device* %5, %struct.nvkm_top_device** %3, align 8
  %6 = load %struct.nvkm_top_device*, %struct.nvkm_top_device** %3, align 8
  %7 = icmp ne %struct.nvkm_top_device* %6, null
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = load i32, i32* @NVKM_SUBDEV_NR, align 4
  %10 = load %struct.nvkm_top_device*, %struct.nvkm_top_device** %3, align 8
  %11 = getelementptr inbounds %struct.nvkm_top_device, %struct.nvkm_top_device* %10, i32 0, i32 7
  store i32 %9, i32* %11, align 8
  %12 = load %struct.nvkm_top_device*, %struct.nvkm_top_device** %3, align 8
  %13 = getelementptr inbounds %struct.nvkm_top_device, %struct.nvkm_top_device* %12, i32 0, i32 6
  store i64 0, i64* %13, align 8
  %14 = load %struct.nvkm_top_device*, %struct.nvkm_top_device** %3, align 8
  %15 = getelementptr inbounds %struct.nvkm_top_device, %struct.nvkm_top_device* %14, i32 0, i32 0
  store i32 -1, i32* %15, align 8
  %16 = load %struct.nvkm_top_device*, %struct.nvkm_top_device** %3, align 8
  %17 = getelementptr inbounds %struct.nvkm_top_device, %struct.nvkm_top_device* %16, i32 0, i32 1
  store i32 -1, i32* %17, align 4
  %18 = load %struct.nvkm_top_device*, %struct.nvkm_top_device** %3, align 8
  %19 = getelementptr inbounds %struct.nvkm_top_device, %struct.nvkm_top_device* %18, i32 0, i32 2
  store i32 -1, i32* %19, align 8
  %20 = load %struct.nvkm_top_device*, %struct.nvkm_top_device** %3, align 8
  %21 = getelementptr inbounds %struct.nvkm_top_device, %struct.nvkm_top_device* %20, i32 0, i32 3
  store i32 -1, i32* %21, align 4
  %22 = load %struct.nvkm_top_device*, %struct.nvkm_top_device** %3, align 8
  %23 = getelementptr inbounds %struct.nvkm_top_device, %struct.nvkm_top_device* %22, i32 0, i32 4
  store i32 -1, i32* %23, align 8
  %24 = load %struct.nvkm_top_device*, %struct.nvkm_top_device** %3, align 8
  %25 = getelementptr inbounds %struct.nvkm_top_device, %struct.nvkm_top_device* %24, i32 0, i32 5
  %26 = load %struct.nvkm_top*, %struct.nvkm_top** %2, align 8
  %27 = getelementptr inbounds %struct.nvkm_top, %struct.nvkm_top* %26, i32 0, i32 0
  %28 = call i32 @list_add_tail(i32* %25, i32* %27)
  br label %29

29:                                               ; preds = %8, %1
  %30 = load %struct.nvkm_top_device*, %struct.nvkm_top_device** %3, align 8
  ret %struct.nvkm_top_device* %30
}

declare dso_local %struct.nvkm_top_device* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
