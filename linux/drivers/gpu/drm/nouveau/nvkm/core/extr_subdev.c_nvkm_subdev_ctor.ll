; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_subdev.c_nvkm_subdev_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_subdev.c_nvkm_subdev_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev_func = type { i32 }
%struct.nvkm_device = type { i32 }
%struct.nvkm_subdev = type { i32, i32, i32, %struct.nvkm_device*, %struct.nvkm_subdev_func* }

@nvkm_subdev_name = common dso_local global i8** null, align 8
@nvkm_subdev_lock_class = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_subdev_ctor(%struct.nvkm_subdev_func* %0, %struct.nvkm_device* %1, i32 %2, %struct.nvkm_subdev* %3) #0 {
  %5 = alloca %struct.nvkm_subdev_func*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_subdev*, align 8
  %9 = alloca i8*, align 8
  store %struct.nvkm_subdev_func* %0, %struct.nvkm_subdev_func** %5, align 8
  store %struct.nvkm_device* %1, %struct.nvkm_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nvkm_subdev* %3, %struct.nvkm_subdev** %8, align 8
  %10 = load i8**, i8*** @nvkm_subdev_name, align 8
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8*, i8** %10, i64 %12
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %9, align 8
  %15 = load %struct.nvkm_subdev_func*, %struct.nvkm_subdev_func** %5, align 8
  %16 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %17 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %16, i32 0, i32 4
  store %struct.nvkm_subdev_func* %15, %struct.nvkm_subdev_func** %17, align 8
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %19 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %20 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %19, i32 0, i32 3
  store %struct.nvkm_device* %18, %struct.nvkm_device** %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %23 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %25 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %24, i32 0, i32 2
  %26 = load i8*, i8** %9, align 8
  %27 = load i32*, i32** @nvkm_subdev_lock_class, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @__mutex_init(i32* %25, i8* %26, i32* %30)
  %32 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %33 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @nvkm_dbgopt(i32 %34, i8* %35)
  %37 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %38 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  ret void
}

declare dso_local i32 @__mutex_init(i32*, i8*, i32*) #1

declare dso_local i32 @nvkm_dbgopt(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
