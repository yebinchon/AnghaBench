; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_base.c_nvkm_devinit_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_base.c_nvkm_devinit_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_devinit = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_devinit*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_devinit_post(%struct.nvkm_devinit* %0, i32* %1) #0 {
  %3 = alloca %struct.nvkm_devinit*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.nvkm_devinit* %0, %struct.nvkm_devinit** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %3, align 8
  %7 = icmp ne %struct.nvkm_devinit* %6, null
  br i1 %7, label %8, label %26

8:                                                ; preds = %2
  %9 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %3, align 8
  %10 = getelementptr inbounds %struct.nvkm_devinit, %struct.nvkm_devinit* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.nvkm_devinit*, i32)*, i32 (%struct.nvkm_devinit*, i32)** %12, align 8
  %14 = icmp ne i32 (%struct.nvkm_devinit*, i32)* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %8
  %16 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %3, align 8
  %17 = getelementptr inbounds %struct.nvkm_devinit, %struct.nvkm_devinit* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.nvkm_devinit*, i32)*, i32 (%struct.nvkm_devinit*, i32)** %19, align 8
  %21 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %3, align 8
  %22 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %3, align 8
  %23 = getelementptr inbounds %struct.nvkm_devinit, %struct.nvkm_devinit* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 %20(%struct.nvkm_devinit* %21, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %15, %8, %2
  %27 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %3, align 8
  %28 = call i32 @nvkm_devinit_disable(%struct.nvkm_devinit* %27)
  %29 = load i32*, i32** %4, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @nvkm_devinit_disable(%struct.nvkm_devinit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
