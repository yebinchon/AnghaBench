; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/device/extr_user.c_nvkm_udevice_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/device/extr_user.c_nvkm_udevice_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }
%struct.nvkm_udevice = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_object*)* @nvkm_udevice_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_udevice_init(%struct.nvkm_object* %0) #0 {
  %2 = alloca %struct.nvkm_object*, align 8
  %3 = alloca %struct.nvkm_udevice*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  store %struct.nvkm_object* %0, %struct.nvkm_object** %2, align 8
  %6 = load %struct.nvkm_object*, %struct.nvkm_object** %2, align 8
  %7 = call %struct.nvkm_udevice* @nvkm_udevice(%struct.nvkm_object* %6)
  store %struct.nvkm_udevice* %7, %struct.nvkm_udevice** %3, align 8
  %8 = load %struct.nvkm_udevice*, %struct.nvkm_udevice** %3, align 8
  %9 = getelementptr inbounds %struct.nvkm_udevice, %struct.nvkm_udevice* %8, i32 0, i32 0
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  store %struct.nvkm_device* %10, %struct.nvkm_device** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %12 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %15 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %1
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %21 = call i32 @nvkm_device_init(%struct.nvkm_device* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %26 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 4
  br label %31

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %1
  br label %31

31:                                               ; preds = %30, %24
  %32 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %33 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local %struct.nvkm_udevice* @nvkm_udevice(%struct.nvkm_object*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nvkm_device_init(%struct.nvkm_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
