; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_device.c_nvif_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_device.c_nvif_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvif_object = type { i32 }
%struct.nvif_device = type { %struct.TYPE_4__, i32, %struct.TYPE_3__, i32* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32* }

@NV_DEVICE_V0_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvif_device_init(%struct.nvif_object* %0, i32 %1, i32 %2, i8* %3, i32 %4, %struct.nvif_device* %5) #0 {
  %7 = alloca %struct.nvif_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nvif_device*, align 8
  %13 = alloca i32, align 4
  store %struct.nvif_object* %0, %struct.nvif_object** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.nvif_device* %5, %struct.nvif_device** %12, align 8
  %14 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i8*, i8** %10, align 8
  %18 = load i32, i32* %11, align 4
  %19 = load %struct.nvif_device*, %struct.nvif_device** %12, align 8
  %20 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %19, i32 0, i32 1
  %21 = call i32 @nvif_object_init(%struct.nvif_object* %14, i32 %15, i32 %16, i8* %17, i32 %18, i32* %20)
  store i32 %21, i32* %13, align 4
  %22 = load %struct.nvif_device*, %struct.nvif_device** %12, align 8
  %23 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %22, i32 0, i32 3
  store i32* null, i32** %23, align 8
  %24 = load %struct.nvif_device*, %struct.nvif_device** %12, align 8
  %25 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  %27 = load i32, i32* %13, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %6
  %30 = load %struct.nvif_device*, %struct.nvif_device** %12, align 8
  %31 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.nvif_device*, %struct.nvif_device** %12, align 8
  %34 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %33, i32 0, i32 1
  %35 = load i32, i32* @NV_DEVICE_V0_INFO, align 4
  %36 = load %struct.nvif_device*, %struct.nvif_device** %12, align 8
  %37 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %36, i32 0, i32 0
  %38 = call i32 @nvif_object_mthd(i32* %34, i32 %35, %struct.TYPE_4__* %37, i32 8)
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %29, %6
  %40 = load i32, i32* %13, align 4
  ret i32 %40
}

declare dso_local i32 @nvif_object_init(%struct.nvif_object*, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @nvif_object_mthd(i32*, i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
