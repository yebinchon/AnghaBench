; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_gm200.c_gm200_fb_init_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_gm200.c_gm200_fb_init_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fb = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gm200_fb_init_page(%struct.nvkm_fb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_fb*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_fb* %0, %struct.nvkm_fb** %3, align 8
  %5 = load %struct.nvkm_fb*, %struct.nvkm_fb** %3, align 8
  %6 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  store %struct.nvkm_device* %8, %struct.nvkm_device** %4, align 8
  %9 = load %struct.nvkm_fb*, %struct.nvkm_fb** %3, align 8
  %10 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %21 [
    i32 16, label %12
    i32 17, label %15
    i32 0, label %18
  ]

12:                                               ; preds = %1
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %14 = call i32 @nvkm_mask(%struct.nvkm_device* %13, i32 1051776, i32 6145, i32 4097)
  br label %24

15:                                               ; preds = %1
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %17 = call i32 @nvkm_mask(%struct.nvkm_device* %16, i32 1051776, i32 6145, i32 0)
  br label %24

18:                                               ; preds = %1
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %20 = call i32 @nvkm_mask(%struct.nvkm_device* %19, i32 1051776, i32 6144, i32 6144)
  br label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %25

24:                                               ; preds = %18, %15, %12
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
