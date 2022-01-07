; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/extr_falcon.c_nvkm_falcon_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/extr_falcon.c_nvkm_falcon_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_falcon_func = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.nvkm_device = type { i32 }
%struct.nvkm_engine = type { i32 }
%struct.nvkm_falcon = type { %struct.nvkm_engine, %struct.TYPE_7__, %struct.TYPE_5__, i32, %struct.nvkm_falcon_func* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvkm_falcon = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_falcon_new_(%struct.nvkm_falcon_func* %0, %struct.nvkm_device* %1, i32 %2, i32 %3, i32 %4, %struct.nvkm_engine** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_falcon_func*, align 8
  %9 = alloca %struct.nvkm_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nvkm_engine**, align 8
  %14 = alloca %struct.nvkm_falcon*, align 8
  store %struct.nvkm_falcon_func* %0, %struct.nvkm_falcon_func** %8, align 8
  store %struct.nvkm_device* %1, %struct.nvkm_device** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.nvkm_engine** %5, %struct.nvkm_engine*** %13, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.nvkm_falcon* @kzalloc(i32 32, i32 %15)
  store %struct.nvkm_falcon* %16, %struct.nvkm_falcon** %14, align 8
  %17 = icmp ne %struct.nvkm_falcon* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %65

21:                                               ; preds = %6
  %22 = load %struct.nvkm_falcon_func*, %struct.nvkm_falcon_func** %8, align 8
  %23 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %14, align 8
  %24 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %23, i32 0, i32 4
  store %struct.nvkm_falcon_func* %22, %struct.nvkm_falcon_func** %24, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %14, align 8
  %27 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.nvkm_falcon_func*, %struct.nvkm_falcon_func** %8, align 8
  %29 = getelementptr inbounds %struct.nvkm_falcon_func, %struct.nvkm_falcon_func* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %14, align 8
  %33 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.nvkm_falcon_func*, %struct.nvkm_falcon_func** %8, align 8
  %36 = getelementptr inbounds %struct.nvkm_falcon_func, %struct.nvkm_falcon_func* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %14, align 8
  %40 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.nvkm_falcon_func*, %struct.nvkm_falcon_func** %8, align 8
  %43 = getelementptr inbounds %struct.nvkm_falcon_func, %struct.nvkm_falcon_func* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %14, align 8
  %47 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load %struct.nvkm_falcon_func*, %struct.nvkm_falcon_func** %8, align 8
  %50 = getelementptr inbounds %struct.nvkm_falcon_func, %struct.nvkm_falcon_func* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %14, align 8
  %54 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %14, align 8
  %57 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %56, i32 0, i32 0
  %58 = load %struct.nvkm_engine**, %struct.nvkm_engine*** %13, align 8
  store %struct.nvkm_engine* %57, %struct.nvkm_engine** %58, align 8
  %59 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %14, align 8
  %63 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %62, i32 0, i32 0
  %64 = call i32 @nvkm_engine_ctor(i32* @nvkm_falcon, %struct.nvkm_device* %59, i32 %60, i32 %61, %struct.nvkm_engine* %63)
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %21, %18
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local %struct.nvkm_falcon* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_engine_ctor(i32*, %struct.nvkm_device*, i32, i32, %struct.nvkm_engine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
