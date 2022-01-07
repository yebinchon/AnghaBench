; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/mpeg/extr_nv31.c_nv31_mpeg_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/mpeg/extr_nv31.c_nv31_mpeg_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv31_mpeg_func = type { i32 }
%struct.nvkm_device = type { i32 }
%struct.nvkm_engine = type { i32 }
%struct.nv31_mpeg = type { %struct.nvkm_engine, %struct.nv31_mpeg_func* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv31_mpeg_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv31_mpeg_new_(%struct.nv31_mpeg_func* %0, %struct.nvkm_device* %1, i32 %2, %struct.nvkm_engine** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nv31_mpeg_func*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_engine**, align 8
  %10 = alloca %struct.nv31_mpeg*, align 8
  store %struct.nv31_mpeg_func* %0, %struct.nv31_mpeg_func** %6, align 8
  store %struct.nvkm_device* %1, %struct.nvkm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nvkm_engine** %3, %struct.nvkm_engine*** %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.nv31_mpeg* @kzalloc(i32 16, i32 %11)
  store %struct.nv31_mpeg* %12, %struct.nv31_mpeg** %10, align 8
  %13 = icmp ne %struct.nv31_mpeg* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %29

17:                                               ; preds = %4
  %18 = load %struct.nv31_mpeg_func*, %struct.nv31_mpeg_func** %6, align 8
  %19 = load %struct.nv31_mpeg*, %struct.nv31_mpeg** %10, align 8
  %20 = getelementptr inbounds %struct.nv31_mpeg, %struct.nv31_mpeg* %19, i32 0, i32 1
  store %struct.nv31_mpeg_func* %18, %struct.nv31_mpeg_func** %20, align 8
  %21 = load %struct.nv31_mpeg*, %struct.nv31_mpeg** %10, align 8
  %22 = getelementptr inbounds %struct.nv31_mpeg, %struct.nv31_mpeg* %21, i32 0, i32 0
  %23 = load %struct.nvkm_engine**, %struct.nvkm_engine*** %9, align 8
  store %struct.nvkm_engine* %22, %struct.nvkm_engine** %23, align 8
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.nv31_mpeg*, %struct.nv31_mpeg** %10, align 8
  %27 = getelementptr inbounds %struct.nv31_mpeg, %struct.nv31_mpeg* %26, i32 0, i32 0
  %28 = call i32 @nvkm_engine_ctor(i32* @nv31_mpeg_, %struct.nvkm_device* %24, i32 %25, i32 1, %struct.nvkm_engine* %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %17, %14
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local %struct.nv31_mpeg* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_engine_ctor(i32*, %struct.nvkm_device*, i32, i32, %struct.nvkm_engine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
