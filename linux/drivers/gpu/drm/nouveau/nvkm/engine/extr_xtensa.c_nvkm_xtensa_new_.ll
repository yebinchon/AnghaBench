; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/extr_xtensa.c_nvkm_xtensa_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/extr_xtensa.c_nvkm_xtensa_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_xtensa_func = type { i32 }
%struct.nvkm_device = type { i32 }
%struct.nvkm_engine = type { i32 }
%struct.nvkm_xtensa = type { %struct.nvkm_engine, i32, %struct.nvkm_xtensa_func* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvkm_xtensa = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_xtensa_new_(%struct.nvkm_xtensa_func* %0, %struct.nvkm_device* %1, i32 %2, i32 %3, i32 %4, %struct.nvkm_engine** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_xtensa_func*, align 8
  %9 = alloca %struct.nvkm_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nvkm_engine**, align 8
  %14 = alloca %struct.nvkm_xtensa*, align 8
  store %struct.nvkm_xtensa_func* %0, %struct.nvkm_xtensa_func** %8, align 8
  store %struct.nvkm_device* %1, %struct.nvkm_device** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.nvkm_engine** %5, %struct.nvkm_engine*** %13, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.nvkm_xtensa* @kzalloc(i32 16, i32 %15)
  store %struct.nvkm_xtensa* %16, %struct.nvkm_xtensa** %14, align 8
  %17 = icmp ne %struct.nvkm_xtensa* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %37

21:                                               ; preds = %6
  %22 = load %struct.nvkm_xtensa_func*, %struct.nvkm_xtensa_func** %8, align 8
  %23 = load %struct.nvkm_xtensa*, %struct.nvkm_xtensa** %14, align 8
  %24 = getelementptr inbounds %struct.nvkm_xtensa, %struct.nvkm_xtensa* %23, i32 0, i32 2
  store %struct.nvkm_xtensa_func* %22, %struct.nvkm_xtensa_func** %24, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.nvkm_xtensa*, %struct.nvkm_xtensa** %14, align 8
  %27 = getelementptr inbounds %struct.nvkm_xtensa, %struct.nvkm_xtensa* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.nvkm_xtensa*, %struct.nvkm_xtensa** %14, align 8
  %29 = getelementptr inbounds %struct.nvkm_xtensa, %struct.nvkm_xtensa* %28, i32 0, i32 0
  %30 = load %struct.nvkm_engine**, %struct.nvkm_engine*** %13, align 8
  store %struct.nvkm_engine* %29, %struct.nvkm_engine** %30, align 8
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.nvkm_xtensa*, %struct.nvkm_xtensa** %14, align 8
  %35 = getelementptr inbounds %struct.nvkm_xtensa, %struct.nvkm_xtensa* %34, i32 0, i32 0
  %36 = call i32 @nvkm_engine_ctor(i32* @nvkm_xtensa, %struct.nvkm_device* %31, i32 %32, i32 %33, %struct.nvkm_engine* %35)
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %21, %18
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local %struct.nvkm_xtensa* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_engine_ctor(i32*, %struct.nvkm_device*, i32, i32, %struct.nvkm_engine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
