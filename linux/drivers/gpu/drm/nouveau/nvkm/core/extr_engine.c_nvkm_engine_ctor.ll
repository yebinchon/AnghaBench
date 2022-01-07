; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_engine.c_nvkm_engine_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_engine.c_nvkm_engine_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_engine_func = type { i32 }
%struct.nvkm_device = type { i32 }
%struct.nvkm_engine = type { i32, i32, %struct.nvkm_engine_func* }

@nvkm_engine_func = common dso_local global i32 0, align 4
@nvkm_subdev_name = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"disabled\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_engine_ctor(%struct.nvkm_engine_func* %0, %struct.nvkm_device* %1, i32 %2, i32 %3, %struct.nvkm_engine* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_engine_func*, align 8
  %8 = alloca %struct.nvkm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_engine*, align 8
  store %struct.nvkm_engine_func* %0, %struct.nvkm_engine_func** %7, align 8
  store %struct.nvkm_device* %1, %struct.nvkm_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nvkm_engine* %4, %struct.nvkm_engine** %11, align 8
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.nvkm_engine*, %struct.nvkm_engine** %11, align 8
  %15 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %14, i32 0, i32 1
  %16 = call i32 @nvkm_subdev_ctor(i32* @nvkm_engine_func, %struct.nvkm_device* %12, i32 %13, i32* %15)
  %17 = load %struct.nvkm_engine_func*, %struct.nvkm_engine_func** %7, align 8
  %18 = load %struct.nvkm_engine*, %struct.nvkm_engine** %11, align 8
  %19 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %18, i32 0, i32 2
  store %struct.nvkm_engine_func* %17, %struct.nvkm_engine_func** %19, align 8
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %21 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** @nvkm_subdev_name, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @nvkm_boolopt(i32 %22, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %5
  %32 = load %struct.nvkm_engine*, %struct.nvkm_engine** %11, align 8
  %33 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %32, i32 0, i32 1
  %34 = call i32 @nvkm_debug(i32* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %41

37:                                               ; preds = %5
  %38 = load %struct.nvkm_engine*, %struct.nvkm_engine** %11, align 8
  %39 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %38, i32 0, i32 0
  %40 = call i32 @spin_lock_init(i32* %39)
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %37, %31
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @nvkm_subdev_ctor(i32*, %struct.nvkm_device*, i32, i32*) #1

declare dso_local i32 @nvkm_boolopt(i32, i32, i32) #1

declare dso_local i32 @nvkm_debug(i32*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
