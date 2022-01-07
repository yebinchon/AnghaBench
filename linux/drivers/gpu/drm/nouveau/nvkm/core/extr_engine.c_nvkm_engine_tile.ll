; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_engine.c_nvkm_engine_tile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_engine.c_nvkm_engine_tile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_engine = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 (%struct.nvkm_engine*, i32, i32*)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.nvkm_fb* }
%struct.nvkm_fb = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_engine_tile(%struct.nvkm_engine* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_engine*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_fb*, align 8
  store %struct.nvkm_engine* %0, %struct.nvkm_engine** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nvkm_engine*, %struct.nvkm_engine** %3, align 8
  %7 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.nvkm_fb*, %struct.nvkm_fb** %10, align 8
  store %struct.nvkm_fb* %11, %struct.nvkm_fb** %5, align 8
  %12 = load %struct.nvkm_engine*, %struct.nvkm_engine** %3, align 8
  %13 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32 (%struct.nvkm_engine*, i32, i32*)*, i32 (%struct.nvkm_engine*, i32, i32*)** %15, align 8
  %17 = icmp ne i32 (%struct.nvkm_engine*, i32, i32*)* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %2
  %19 = load %struct.nvkm_engine*, %struct.nvkm_engine** %3, align 8
  %20 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32 (%struct.nvkm_engine*, i32, i32*)*, i32 (%struct.nvkm_engine*, i32, i32*)** %22, align 8
  %24 = load %struct.nvkm_engine*, %struct.nvkm_engine** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.nvkm_fb*, %struct.nvkm_fb** %5, align 8
  %27 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = call i32 %23(%struct.nvkm_engine* %24, i32 %25, i32* %32)
  br label %34

34:                                               ; preds = %18, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
