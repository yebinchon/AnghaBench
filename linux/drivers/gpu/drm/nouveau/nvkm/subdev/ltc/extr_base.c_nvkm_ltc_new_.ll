; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/ltc/extr_base.c_nvkm_ltc_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/ltc/extr_base.c_nvkm_ltc_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ltc_func = type { i32 }
%struct.nvkm_device = type { i32 }
%struct.nvkm_ltc = type { i32, i64, %struct.nvkm_ltc_func*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvkm_ltc = common dso_local global i32 0, align 4
@NVKM_LTC_MAX_ZBC_CNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_ltc_new_(%struct.nvkm_ltc_func* %0, %struct.nvkm_device* %1, i32 %2, %struct.nvkm_ltc** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_ltc_func*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_ltc**, align 8
  %10 = alloca %struct.nvkm_ltc*, align 8
  store %struct.nvkm_ltc_func* %0, %struct.nvkm_ltc_func** %6, align 8
  store %struct.nvkm_device* %1, %struct.nvkm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nvkm_ltc** %3, %struct.nvkm_ltc*** %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.nvkm_ltc* @kzalloc(i32 32, i32 %11)
  %13 = load %struct.nvkm_ltc**, %struct.nvkm_ltc*** %9, align 8
  store %struct.nvkm_ltc* %12, %struct.nvkm_ltc** %13, align 8
  store %struct.nvkm_ltc* %12, %struct.nvkm_ltc** %10, align 8
  %14 = icmp ne %struct.nvkm_ltc* %12, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %37

18:                                               ; preds = %4
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %10, align 8
  %22 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %21, i32 0, i32 3
  %23 = call i32 @nvkm_subdev_ctor(i32* @nvkm_ltc, %struct.nvkm_device* %19, i32 %20, i32* %22)
  %24 = load %struct.nvkm_ltc_func*, %struct.nvkm_ltc_func** %6, align 8
  %25 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %10, align 8
  %26 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %25, i32 0, i32 2
  store %struct.nvkm_ltc_func* %24, %struct.nvkm_ltc_func** %26, align 8
  %27 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %10, align 8
  %28 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.nvkm_ltc_func*, %struct.nvkm_ltc_func** %6, align 8
  %30 = getelementptr inbounds %struct.nvkm_ltc_func, %struct.nvkm_ltc_func* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NVKM_LTC_MAX_ZBC_CNT, align 4
  %33 = call i64 @min(i32 %31, i32 %32)
  %34 = sub nsw i64 %33, 1
  %35 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %10, align 8
  %36 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %18, %15
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local %struct.nvkm_ltc* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_subdev_ctor(i32*, %struct.nvkm_device*, i32, i32*) #1

declare dso_local i64 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
