; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_nv30.c_nv30_fb_tile_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_nv30.c_nv30_fb_tile_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fb = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.nvkm_fb*, i32, i32, i32, %struct.nvkm_fb_tile*)* }
%struct.nvkm_fb_tile = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv30_fb_tile_init(%struct.nvkm_fb* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.nvkm_fb_tile* %6) #0 {
  %8 = alloca %struct.nvkm_fb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nvkm_fb_tile*, align 8
  store %struct.nvkm_fb* %0, %struct.nvkm_fb** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.nvkm_fb_tile* %6, %struct.nvkm_fb_tile** %14, align 8
  %15 = load i32, i32* %13, align 4
  %16 = and i32 %15, 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %7
  %19 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %14, align 8
  %20 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  br label %45

21:                                               ; preds = %7
  %22 = load %struct.nvkm_fb*, %struct.nvkm_fb** %8, align 8
  %23 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (%struct.nvkm_fb*, i32, i32, i32, %struct.nvkm_fb_tile*)*, i32 (%struct.nvkm_fb*, i32, i32, i32, %struct.nvkm_fb_tile*)** %26, align 8
  %28 = icmp ne i32 (%struct.nvkm_fb*, i32, i32, i32, %struct.nvkm_fb_tile*)* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %21
  %30 = load %struct.nvkm_fb*, %struct.nvkm_fb** %8, align 8
  %31 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32 (%struct.nvkm_fb*, i32, i32, i32, %struct.nvkm_fb_tile*)*, i32 (%struct.nvkm_fb*, i32, i32, i32, %struct.nvkm_fb_tile*)** %34, align 8
  %36 = load %struct.nvkm_fb*, %struct.nvkm_fb** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %14, align 8
  %41 = call i32 %35(%struct.nvkm_fb* %36, i32 %37, i32 %38, i32 %39, %struct.nvkm_fb_tile* %40)
  br label %42

42:                                               ; preds = %29, %21
  %43 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %14, align 8
  %44 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %43, i32 0, i32 0
  store i32 16, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %18
  %46 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %14, align 8
  %47 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %14, align 8
  %52 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %55, %56
  %58 = call i64 @max(i32 1, i32 %57)
  %59 = sub nsw i64 %58, 1
  %60 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %14, align 8
  %61 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %14, align 8
  %64 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  ret void
}

declare dso_local i64 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
