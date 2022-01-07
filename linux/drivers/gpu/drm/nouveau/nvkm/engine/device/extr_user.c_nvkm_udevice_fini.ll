; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/device/extr_user.c_nvkm_udevice_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/device/extr_user.c_nvkm_udevice_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }
%struct.nvkm_udevice = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_object*, i32)* @nvkm_udevice_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_udevice_fini(%struct.nvkm_object* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_udevice*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  store %struct.nvkm_object* %0, %struct.nvkm_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nvkm_object*, %struct.nvkm_object** %3, align 8
  %9 = call %struct.nvkm_udevice* @nvkm_udevice(%struct.nvkm_object* %8)
  store %struct.nvkm_udevice* %9, %struct.nvkm_udevice** %5, align 8
  %10 = load %struct.nvkm_udevice*, %struct.nvkm_udevice** %5, align 8
  %11 = getelementptr inbounds %struct.nvkm_udevice, %struct.nvkm_udevice* %10, i32 0, i32 0
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  store %struct.nvkm_device* %12, %struct.nvkm_device** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %14 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %17 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %2
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @nvkm_device_fini(%struct.nvkm_device* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %32 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %37

35:                                               ; preds = %27, %21
  br label %36

36:                                               ; preds = %35, %2
  br label %37

37:                                               ; preds = %36, %30
  %38 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %39 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local %struct.nvkm_udevice* @nvkm_udevice(%struct.nvkm_object*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nvkm_device_fini(%struct.nvkm_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
