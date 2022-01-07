; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_disp_ovl.c_ovl_fmt_convert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_disp_ovl.c_ovl_fmt_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_disp_ovl = type { i32 }

@OVL_CON_BYTE_SWAP = common dso_local global i32 0, align 4
@OVL_CON_CLRFMT_ARGB8888 = common dso_local global i32 0, align 4
@OVL_CON_CLRFMT_RGBA8888 = common dso_local global i32 0, align 4
@OVL_CON_CLRFMT_UYVY = common dso_local global i32 0, align 4
@OVL_CON_MTX_YUV_TO_RGB = common dso_local global i32 0, align 4
@OVL_CON_CLRFMT_YUYV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_disp_ovl*, i32)* @ovl_fmt_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_fmt_convert(%struct.mtk_disp_ovl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_disp_ovl*, align 8
  %5 = alloca i32, align 4
  store %struct.mtk_disp_ovl* %0, %struct.mtk_disp_ovl** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %7 [
    i32 135, label %8
    i32 139, label %11
    i32 134, label %16
    i32 138, label %19
    i32 132, label %24
    i32 133, label %24
    i32 136, label %26
    i32 137, label %26
    i32 129, label %30
    i32 140, label %30
    i32 130, label %32
    i32 141, label %32
    i32 131, label %36
    i32 128, label %40
  ]

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %2, %7
  %9 = load %struct.mtk_disp_ovl*, %struct.mtk_disp_ovl** %4, align 8
  %10 = call i32 @OVL_CON_CLRFMT_RGB565(%struct.mtk_disp_ovl* %9)
  store i32 %10, i32* %3, align 4
  br label %44

11:                                               ; preds = %2
  %12 = load %struct.mtk_disp_ovl*, %struct.mtk_disp_ovl** %4, align 8
  %13 = call i32 @OVL_CON_CLRFMT_RGB565(%struct.mtk_disp_ovl* %12)
  %14 = load i32, i32* @OVL_CON_BYTE_SWAP, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %3, align 4
  br label %44

16:                                               ; preds = %2
  %17 = load %struct.mtk_disp_ovl*, %struct.mtk_disp_ovl** %4, align 8
  %18 = call i32 @OVL_CON_CLRFMT_RGB888(%struct.mtk_disp_ovl* %17)
  store i32 %18, i32* %3, align 4
  br label %44

19:                                               ; preds = %2
  %20 = load %struct.mtk_disp_ovl*, %struct.mtk_disp_ovl** %4, align 8
  %21 = call i32 @OVL_CON_CLRFMT_RGB888(%struct.mtk_disp_ovl* %20)
  %22 = load i32, i32* @OVL_CON_BYTE_SWAP, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %3, align 4
  br label %44

24:                                               ; preds = %2, %2
  %25 = load i32, i32* @OVL_CON_CLRFMT_ARGB8888, align 4
  store i32 %25, i32* %3, align 4
  br label %44

26:                                               ; preds = %2, %2
  %27 = load i32, i32* @OVL_CON_CLRFMT_ARGB8888, align 4
  %28 = load i32, i32* @OVL_CON_BYTE_SWAP, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %3, align 4
  br label %44

30:                                               ; preds = %2, %2
  %31 = load i32, i32* @OVL_CON_CLRFMT_RGBA8888, align 4
  store i32 %31, i32* %3, align 4
  br label %44

32:                                               ; preds = %2, %2
  %33 = load i32, i32* @OVL_CON_CLRFMT_RGBA8888, align 4
  %34 = load i32, i32* @OVL_CON_BYTE_SWAP, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %3, align 4
  br label %44

36:                                               ; preds = %2
  %37 = load i32, i32* @OVL_CON_CLRFMT_UYVY, align 4
  %38 = load i32, i32* @OVL_CON_MTX_YUV_TO_RGB, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %3, align 4
  br label %44

40:                                               ; preds = %2
  %41 = load i32, i32* @OVL_CON_CLRFMT_YUYV, align 4
  %42 = load i32, i32* @OVL_CON_MTX_YUV_TO_RGB, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %36, %32, %30, %26, %24, %19, %16, %11, %8
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @OVL_CON_CLRFMT_RGB565(%struct.mtk_disp_ovl*) #1

declare dso_local i32 @OVL_CON_CLRFMT_RGB888(%struct.mtk_disp_ovl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
