; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/mpeg/extr_nv44.c_nv44_mpeg_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/mpeg/extr_nv44.c_nv44_mpeg_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }
%struct.nvkm_engine = type { i32 }
%struct.nv44_mpeg = type { %struct.nvkm_engine, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv44_mpeg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv44_mpeg_new(%struct.nvkm_device* %0, i32 %1, %struct.nvkm_engine** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_engine**, align 8
  %8 = alloca %struct.nv44_mpeg*, align 8
  store %struct.nvkm_device* %0, %struct.nvkm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_engine** %2, %struct.nvkm_engine*** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.nv44_mpeg* @kzalloc(i32 8, i32 %9)
  store %struct.nv44_mpeg* %10, %struct.nv44_mpeg** %8, align 8
  %11 = icmp ne %struct.nv44_mpeg* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %27

15:                                               ; preds = %3
  %16 = load %struct.nv44_mpeg*, %struct.nv44_mpeg** %8, align 8
  %17 = getelementptr inbounds %struct.nv44_mpeg, %struct.nv44_mpeg* %16, i32 0, i32 1
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.nv44_mpeg*, %struct.nv44_mpeg** %8, align 8
  %20 = getelementptr inbounds %struct.nv44_mpeg, %struct.nv44_mpeg* %19, i32 0, i32 0
  %21 = load %struct.nvkm_engine**, %struct.nvkm_engine*** %7, align 8
  store %struct.nvkm_engine* %20, %struct.nvkm_engine** %21, align 8
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.nv44_mpeg*, %struct.nv44_mpeg** %8, align 8
  %25 = getelementptr inbounds %struct.nv44_mpeg, %struct.nv44_mpeg* %24, i32 0, i32 0
  %26 = call i32 @nvkm_engine_ctor(i32* @nv44_mpeg, %struct.nvkm_device* %22, i32 %23, i32 1, %struct.nvkm_engine* %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %15, %12
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.nv44_mpeg* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @nvkm_engine_ctor(i32*, %struct.nvkm_device*, i32, i32, %struct.nvkm_engine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
