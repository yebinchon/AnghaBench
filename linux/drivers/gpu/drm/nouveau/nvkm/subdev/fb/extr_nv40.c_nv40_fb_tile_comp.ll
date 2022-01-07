; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_nv40.c_nv40_fb_tile_comp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_nv40.c_nv40_fb_tile_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fb = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.nvkm_fb_tile = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv40_fb_tile_comp(%struct.nvkm_fb* %0, i32 %1, i32 %2, i32 %3, %struct.nvkm_fb_tile* %4) #0 {
  %6 = alloca %struct.nvkm_fb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvkm_fb_tile*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nvkm_fb* %0, %struct.nvkm_fb** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.nvkm_fb_tile* %4, %struct.nvkm_fb_tile** %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @DIV_ROUND_UP(i32 %13, i32 128)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load %struct.nvkm_fb*, %struct.nvkm_fb** %6, align 8
  %17 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %15, %20
  %22 = call i32 @round_up(i32 %21, i32 256)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, 2
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %62

26:                                               ; preds = %5
  %27 = load %struct.nvkm_fb*, %struct.nvkm_fb** %6, align 8
  %28 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %27, i32 0, i32 0
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %10, align 8
  %32 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %31, i32 0, i32 1
  %33 = call i32 @nvkm_mm_head(i32* %28, i32 0, i32 1, i32 %29, i32 %30, i32 1, %struct.TYPE_4__** %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %62, label %35

35:                                               ; preds = %26
  %36 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %10, align 8
  %37 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %36, i32 0, i32 0
  store i32 671088640, i32* %37, align 8
  %38 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %10, align 8
  %39 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 8
  %44 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %10, align 8
  %45 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %10, align 8
  %49 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %52, %53
  %55 = sub nsw i32 %54, 1
  %56 = ashr i32 %55, 8
  %57 = shl i32 %56, 13
  %58 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %10, align 8
  %59 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %35, %26, %5
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @nvkm_mm_head(i32*, i32, i32, i32, i32, i32, %struct.TYPE_4__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
