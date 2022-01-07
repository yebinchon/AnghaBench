; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_nv35.c_nv35_fb_tile_comp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_nv35.c_nv35_fb_tile_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fb = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.nvkm_fb_tile = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_fb*, i32, i32, i32, %struct.nvkm_fb_tile*)* @nv35_fb_tile_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv35_fb_tile_comp(%struct.nvkm_fb* %0, i32 %1, i32 %2, i32 %3, %struct.nvkm_fb_tile* %4) #0 {
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
  %14 = call i32 @DIV_ROUND_UP(i32 %13, i32 64)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load %struct.nvkm_fb*, %struct.nvkm_fb** %6, align 8
  %17 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %15, %20
  %22 = call i32 @round_up(i32 %21, i32 64)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.nvkm_fb*, %struct.nvkm_fb** %6, align 8
  %24 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %23, i32 0, i32 0
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %10, align 8
  %28 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %27, i32 0, i32 1
  %29 = call i32 @nvkm_mm_head(i32* %24, i32 0, i32 1, i32 %25, i32 %26, i32 1, %struct.TYPE_4__** %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %70, label %31

31:                                               ; preds = %5
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, 2
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %10, align 8
  %37 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, 67108864
  store i32 %39, i32* %37, align 8
  br label %45

40:                                               ; preds = %31
  %41 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %10, align 8
  %42 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, 134217728
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %10, align 8
  %47 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 6
  %52 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %10, align 8
  %53 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %10, align 8
  %57 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %60, %61
  %63 = sub nsw i32 %62, 1
  %64 = ashr i32 %63, 6
  %65 = shl i32 %64, 13
  %66 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %10, align 8
  %67 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %45, %5
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
