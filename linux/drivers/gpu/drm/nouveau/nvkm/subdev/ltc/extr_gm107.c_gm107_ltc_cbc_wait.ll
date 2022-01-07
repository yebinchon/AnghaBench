; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/ltc/extr_gm107.c_gm107_ltc_cbc_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/ltc/extr_gm107.c_gm107_ltc_cbc_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ltc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gm107_ltc_cbc_wait(%struct.nvkm_ltc* %0) #0 {
  %2 = alloca %struct.nvkm_ltc*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvkm_ltc* %0, %struct.nvkm_ltc** %2, align 8
  %7 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %2, align 8
  %8 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  store %struct.nvkm_device* %10, %struct.nvkm_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %38, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %2, align 8
  %14 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %34, %17
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %2, align 8
  %21 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = mul nsw i32 %25, 8192
  %27 = add nsw i32 1311852, %26
  %28 = load i32, i32* %5, align 4
  %29 = mul nsw i32 %28, 512
  %30 = add nsw i32 %27, %29
  store i32 %30, i32* %6, align 4
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @nvkm_wait_msec(%struct.nvkm_device* %31, i32 2000, i32 %32, i32 4, i32 0)
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %18

37:                                               ; preds = %18
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %11

41:                                               ; preds = %11
  ret void
}

declare dso_local i32 @nvkm_wait_msec(%struct.nvkm_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
