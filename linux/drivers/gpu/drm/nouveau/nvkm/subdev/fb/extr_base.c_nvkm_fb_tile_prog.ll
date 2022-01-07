; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_base.c_nvkm_fb_tile_prog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_base.c_nvkm_fb_tile_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fb = type { %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.nvkm_fb*, i32, %struct.nvkm_fb_tile*)* }
%struct.TYPE_5__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.nvkm_fb_tile = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_fb_tile_prog(%struct.nvkm_fb* %0, i32 %1, %struct.nvkm_fb_tile* %2) #0 {
  %4 = alloca %struct.nvkm_fb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_fb_tile*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_fb* %0, %struct.nvkm_fb** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nvkm_fb_tile* %2, %struct.nvkm_fb_tile** %6, align 8
  %8 = load %struct.nvkm_fb*, %struct.nvkm_fb** %4, align 8
  %9 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  store %struct.nvkm_device* %11, %struct.nvkm_device** %7, align 8
  %12 = load %struct.nvkm_fb*, %struct.nvkm_fb** %4, align 8
  %13 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32 (%struct.nvkm_fb*, i32, %struct.nvkm_fb_tile*)*, i32 (%struct.nvkm_fb*, i32, %struct.nvkm_fb_tile*)** %16, align 8
  %18 = icmp ne i32 (%struct.nvkm_fb*, i32, %struct.nvkm_fb_tile*)* %17, null
  br i1 %18, label %19, label %53

19:                                               ; preds = %3
  %20 = load %struct.nvkm_fb*, %struct.nvkm_fb** %4, align 8
  %21 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32 (%struct.nvkm_fb*, i32, %struct.nvkm_fb_tile*)*, i32 (%struct.nvkm_fb*, i32, %struct.nvkm_fb_tile*)** %24, align 8
  %26 = load %struct.nvkm_fb*, %struct.nvkm_fb** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %29 = call i32 %25(%struct.nvkm_fb* %26, i32 %27, %struct.nvkm_fb_tile* %28)
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %31 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = icmp ne %struct.TYPE_8__* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %19
  %35 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %36 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @nvkm_engine_tile(i32* %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %19
  %42 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %43 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %48 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @nvkm_engine_tile(i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %46, %41
  br label %53

53:                                               ; preds = %52, %3
  ret void
}

declare dso_local i32 @nvkm_engine_tile(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
