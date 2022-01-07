; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/sw/extr_nvsw.c_nvkm_nvsw_ntfy_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/sw/extr_nvsw.c_nvkm_nvsw_ntfy_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }
%struct.nvkm_event = type { i32 }
%struct.nvkm_nvsw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_event }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_object*, i32, %struct.nvkm_event**)* @nvkm_nvsw_ntfy_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_nvsw_ntfy_(%struct.nvkm_object* %0, i32 %1, %struct.nvkm_event** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_event**, align 8
  %8 = alloca %struct.nvkm_nvsw*, align 8
  store %struct.nvkm_object* %0, %struct.nvkm_object** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_event** %2, %struct.nvkm_event*** %7, align 8
  %9 = load %struct.nvkm_object*, %struct.nvkm_object** %5, align 8
  %10 = call %struct.nvkm_nvsw* @nvkm_nvsw(%struct.nvkm_object* %9)
  store %struct.nvkm_nvsw* %10, %struct.nvkm_nvsw** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %18 [
    i32 128, label %12
  ]

12:                                               ; preds = %3
  %13 = load %struct.nvkm_nvsw*, %struct.nvkm_nvsw** %8, align 8
  %14 = getelementptr inbounds %struct.nvkm_nvsw, %struct.nvkm_nvsw* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.nvkm_event**, %struct.nvkm_event*** %7, align 8
  store %struct.nvkm_event* %16, %struct.nvkm_event** %17, align 8
  store i32 0, i32* %4, align 4
  br label %22

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %19, %12
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local %struct.nvkm_nvsw* @nvkm_nvsw(%struct.nvkm_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
