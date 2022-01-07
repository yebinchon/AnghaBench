; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/timer/extr_base.c_nvkm_timer_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/timer/extr_base.c_nvkm_timer_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { i32 }
%struct.nvkm_timer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_timer*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_subdev*, i32)* @nvkm_timer_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_timer_fini(%struct.nvkm_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_timer*, align 8
  store %struct.nvkm_subdev* %0, %struct.nvkm_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %7 = call %struct.nvkm_timer* @nvkm_timer(%struct.nvkm_subdev* %6)
  store %struct.nvkm_timer* %7, %struct.nvkm_timer** %5, align 8
  %8 = load %struct.nvkm_timer*, %struct.nvkm_timer** %5, align 8
  %9 = getelementptr inbounds %struct.nvkm_timer, %struct.nvkm_timer* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.nvkm_timer*)*, i32 (%struct.nvkm_timer*)** %11, align 8
  %13 = load %struct.nvkm_timer*, %struct.nvkm_timer** %5, align 8
  %14 = call i32 %12(%struct.nvkm_timer* %13)
  ret i32 0
}

declare dso_local %struct.nvkm_timer* @nvkm_timer(%struct.nvkm_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
