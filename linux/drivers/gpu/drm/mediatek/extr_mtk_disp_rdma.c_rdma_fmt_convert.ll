; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_disp_rdma.c_rdma_fmt_convert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_disp_rdma.c_rdma_fmt_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_disp_rdma = type { i32 }

@MEM_MODE_INPUT_FORMAT_RGB565 = common dso_local global i32 0, align 4
@MEM_MODE_INPUT_SWAP = common dso_local global i32 0, align 4
@MEM_MODE_INPUT_FORMAT_RGB888 = common dso_local global i32 0, align 4
@MEM_MODE_INPUT_FORMAT_ARGB8888 = common dso_local global i32 0, align 4
@MEM_MODE_INPUT_FORMAT_RGBA8888 = common dso_local global i32 0, align 4
@MEM_MODE_INPUT_FORMAT_UYVY = common dso_local global i32 0, align 4
@MEM_MODE_INPUT_FORMAT_YUYV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_disp_rdma*, i32)* @rdma_fmt_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdma_fmt_convert(%struct.mtk_disp_rdma* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_disp_rdma*, align 8
  %5 = alloca i32, align 4
  store %struct.mtk_disp_rdma* %0, %struct.mtk_disp_rdma** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %7 [
    i32 135, label %8
    i32 139, label %10
    i32 134, label %14
    i32 138, label %16
    i32 132, label %20
    i32 133, label %20
    i32 136, label %22
    i32 137, label %22
    i32 129, label %26
    i32 140, label %26
    i32 130, label %28
    i32 141, label %28
    i32 131, label %32
    i32 128, label %34
  ]

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %2, %7
  %9 = load i32, i32* @MEM_MODE_INPUT_FORMAT_RGB565, align 4
  store i32 %9, i32* %3, align 4
  br label %36

10:                                               ; preds = %2
  %11 = load i32, i32* @MEM_MODE_INPUT_FORMAT_RGB565, align 4
  %12 = load i32, i32* @MEM_MODE_INPUT_SWAP, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %3, align 4
  br label %36

14:                                               ; preds = %2
  %15 = load i32, i32* @MEM_MODE_INPUT_FORMAT_RGB888, align 4
  store i32 %15, i32* %3, align 4
  br label %36

16:                                               ; preds = %2
  %17 = load i32, i32* @MEM_MODE_INPUT_FORMAT_RGB888, align 4
  %18 = load i32, i32* @MEM_MODE_INPUT_SWAP, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %3, align 4
  br label %36

20:                                               ; preds = %2, %2
  %21 = load i32, i32* @MEM_MODE_INPUT_FORMAT_ARGB8888, align 4
  store i32 %21, i32* %3, align 4
  br label %36

22:                                               ; preds = %2, %2
  %23 = load i32, i32* @MEM_MODE_INPUT_FORMAT_ARGB8888, align 4
  %24 = load i32, i32* @MEM_MODE_INPUT_SWAP, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %3, align 4
  br label %36

26:                                               ; preds = %2, %2
  %27 = load i32, i32* @MEM_MODE_INPUT_FORMAT_RGBA8888, align 4
  store i32 %27, i32* %3, align 4
  br label %36

28:                                               ; preds = %2, %2
  %29 = load i32, i32* @MEM_MODE_INPUT_FORMAT_RGBA8888, align 4
  %30 = load i32, i32* @MEM_MODE_INPUT_SWAP, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %3, align 4
  br label %36

32:                                               ; preds = %2
  %33 = load i32, i32* @MEM_MODE_INPUT_FORMAT_UYVY, align 4
  store i32 %33, i32* %3, align 4
  br label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @MEM_MODE_INPUT_FORMAT_YUYV, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %32, %28, %26, %22, %20, %16, %14, %10, %8
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
