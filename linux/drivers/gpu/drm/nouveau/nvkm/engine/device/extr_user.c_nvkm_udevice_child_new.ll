; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/device/extr_user.c_nvkm_udevice_child_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/device/extr_user.c_nvkm_udevice_child_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_oclass = type { %struct.nvkm_device_oclass*, i32 }
%struct.nvkm_device_oclass = type { i32 (i32, %struct.nvkm_oclass*, i8*, i32, %struct.nvkm_object**)* }
%struct.nvkm_object = type { i32 }
%struct.nvkm_udevice = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_oclass*, i8*, i32, %struct.nvkm_object**)* @nvkm_udevice_child_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_udevice_child_new(%struct.nvkm_oclass* %0, i8* %1, i32 %2, %struct.nvkm_object** %3) #0 {
  %5 = alloca %struct.nvkm_oclass*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_object**, align 8
  %9 = alloca %struct.nvkm_udevice*, align 8
  %10 = alloca %struct.nvkm_device_oclass*, align 8
  store %struct.nvkm_oclass* %0, %struct.nvkm_oclass** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nvkm_object** %3, %struct.nvkm_object*** %8, align 8
  %11 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %5, align 8
  %12 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.nvkm_udevice* @nvkm_udevice(i32 %13)
  store %struct.nvkm_udevice* %14, %struct.nvkm_udevice** %9, align 8
  %15 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %5, align 8
  %16 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %15, i32 0, i32 0
  %17 = load %struct.nvkm_device_oclass*, %struct.nvkm_device_oclass** %16, align 8
  store %struct.nvkm_device_oclass* %17, %struct.nvkm_device_oclass** %10, align 8
  %18 = load %struct.nvkm_device_oclass*, %struct.nvkm_device_oclass** %10, align 8
  %19 = getelementptr inbounds %struct.nvkm_device_oclass, %struct.nvkm_device_oclass* %18, i32 0, i32 0
  %20 = load i32 (i32, %struct.nvkm_oclass*, i8*, i32, %struct.nvkm_object**)*, i32 (i32, %struct.nvkm_oclass*, i8*, i32, %struct.nvkm_object**)** %19, align 8
  %21 = load %struct.nvkm_udevice*, %struct.nvkm_udevice** %9, align 8
  %22 = getelementptr inbounds %struct.nvkm_udevice, %struct.nvkm_udevice* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.nvkm_object**, %struct.nvkm_object*** %8, align 8
  %28 = call i32 %20(i32 %23, %struct.nvkm_oclass* %24, i8* %25, i32 %26, %struct.nvkm_object** %27)
  ret i32 %28
}

declare dso_local %struct.nvkm_udevice* @nvkm_udevice(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
