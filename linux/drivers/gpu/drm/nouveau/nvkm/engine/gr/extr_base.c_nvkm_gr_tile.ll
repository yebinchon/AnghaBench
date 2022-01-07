; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_base.c_nvkm_gr_tile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_base.c_nvkm_gr_tile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_engine = type { i32 }
%struct.nvkm_fb_tile = type { i32 }
%struct.nvkm_gr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_gr*, i32, %struct.nvkm_fb_tile*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_engine*, i32, %struct.nvkm_fb_tile*)* @nvkm_gr_tile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_gr_tile(%struct.nvkm_engine* %0, i32 %1, %struct.nvkm_fb_tile* %2) #0 {
  %4 = alloca %struct.nvkm_engine*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_fb_tile*, align 8
  %7 = alloca %struct.nvkm_gr*, align 8
  store %struct.nvkm_engine* %0, %struct.nvkm_engine** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nvkm_fb_tile* %2, %struct.nvkm_fb_tile** %6, align 8
  %8 = load %struct.nvkm_engine*, %struct.nvkm_engine** %4, align 8
  %9 = call %struct.nvkm_gr* @nvkm_gr(%struct.nvkm_engine* %8)
  store %struct.nvkm_gr* %9, %struct.nvkm_gr** %7, align 8
  %10 = load %struct.nvkm_gr*, %struct.nvkm_gr** %7, align 8
  %11 = getelementptr inbounds %struct.nvkm_gr, %struct.nvkm_gr* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.nvkm_gr*, i32, %struct.nvkm_fb_tile*)*, i32 (%struct.nvkm_gr*, i32, %struct.nvkm_fb_tile*)** %13, align 8
  %15 = icmp ne i32 (%struct.nvkm_gr*, i32, %struct.nvkm_fb_tile*)* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.nvkm_gr*, %struct.nvkm_gr** %7, align 8
  %18 = getelementptr inbounds %struct.nvkm_gr, %struct.nvkm_gr* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.nvkm_gr*, i32, %struct.nvkm_fb_tile*)*, i32 (%struct.nvkm_gr*, i32, %struct.nvkm_fb_tile*)** %20, align 8
  %22 = load %struct.nvkm_gr*, %struct.nvkm_gr** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %25 = call i32 %21(%struct.nvkm_gr* %22, i32 %23, %struct.nvkm_fb_tile* %24)
  br label %26

26:                                               ; preds = %16, %3
  ret void
}

declare dso_local %struct.nvkm_gr* @nvkm_gr(%struct.nvkm_engine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
