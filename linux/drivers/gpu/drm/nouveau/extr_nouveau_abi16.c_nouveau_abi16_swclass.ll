; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_abi16.c_nouveau_abi16_swclass.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_abi16.c_nouveau_abi16_swclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@NVIF_CLASS_SW_NV04 = common dso_local global i32 0, align 4
@NVIF_CLASS_SW_NV10 = common dso_local global i32 0, align 4
@NVIF_CLASS_SW_NV50 = common dso_local global i32 0, align 4
@NVIF_CLASS_SW_GF100 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_abi16_swclass(%struct.nouveau_drm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_drm*, align 8
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %3, align 8
  %4 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %5 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %18 [
    i32 129, label %10
    i32 138, label %12
    i32 135, label %12
    i32 131, label %12
    i32 137, label %12
    i32 130, label %14
    i32 136, label %16
    i32 134, label %16
    i32 133, label %16
    i32 132, label %16
    i32 128, label %16
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @NVIF_CLASS_SW_NV04, align 4
  store i32 %11, i32* %2, align 4
  br label %19

12:                                               ; preds = %1, %1, %1, %1
  %13 = load i32, i32* @NVIF_CLASS_SW_NV10, align 4
  store i32 %13, i32* %2, align 4
  br label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @NVIF_CLASS_SW_NV50, align 4
  store i32 %15, i32* %2, align 4
  br label %19

16:                                               ; preds = %1, %1, %1, %1, %1
  %17 = load i32, i32* @NVIF_CLASS_SW_GF100, align 4
  store i32 %17, i32* %2, align 4
  br label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %16, %14, %12, %10
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
