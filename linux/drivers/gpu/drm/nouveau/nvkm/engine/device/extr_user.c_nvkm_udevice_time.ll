; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/device/extr_user.c_nvkm_udevice_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/device/extr_user.c_nvkm_udevice_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_udevice = type { %struct.nvkm_device*, %struct.nvkm_object }
%struct.nvkm_device = type { i32 }
%struct.nvkm_object = type { i32 }
%union.anon = type { %struct.nv_device_time_v0 }
%struct.nv_device_time_v0 = type { i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"device time size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"device time vers %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_udevice*, i8*, i32)* @nvkm_udevice_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_udevice_time(%struct.nvkm_udevice* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.nvkm_udevice*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_object*, align 8
  %8 = alloca %struct.nvkm_device*, align 8
  %9 = alloca %union.anon*, align 8
  %10 = alloca i32, align 4
  store %struct.nvkm_udevice* %0, %struct.nvkm_udevice** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.nvkm_udevice*, %struct.nvkm_udevice** %4, align 8
  %12 = getelementptr inbounds %struct.nvkm_udevice, %struct.nvkm_udevice* %11, i32 0, i32 1
  store %struct.nvkm_object* %12, %struct.nvkm_object** %7, align 8
  %13 = load %struct.nvkm_udevice*, %struct.nvkm_udevice** %4, align 8
  %14 = getelementptr inbounds %struct.nvkm_udevice, %struct.nvkm_udevice* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %union.anon*
  store %union.anon* %17, %union.anon** %9, align 8
  %18 = load i32, i32* @ENOSYS, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.nvkm_object*, %struct.nvkm_object** %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @nvif_ioctl(%struct.nvkm_object* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %10, align 4
  %24 = load %union.anon*, %union.anon** %9, align 8
  %25 = bitcast %union.anon* %24 to %struct.nv_device_time_v0*
  %26 = bitcast %struct.nv_device_time_v0* %25 to i64*
  %27 = load i64, i64* %26, align 4
  %28 = call i32 @nvif_unpack(i32 %23, i8** %5, i32* %6, i64 %27, i32 0, i32 0, i32 0)
  store i32 %28, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %3
  %31 = load %struct.nvkm_object*, %struct.nvkm_object** %7, align 8
  %32 = load %union.anon*, %union.anon** %9, align 8
  %33 = bitcast %union.anon* %32 to %struct.nv_device_time_v0*
  %34 = getelementptr inbounds %struct.nv_device_time_v0, %struct.nv_device_time_v0* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @nvif_ioctl(%struct.nvkm_object* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %38 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @nvkm_timer_read(i32 %39)
  %41 = load %union.anon*, %union.anon** %9, align 8
  %42 = bitcast %union.anon* %41 to %struct.nv_device_time_v0*
  %43 = getelementptr inbounds %struct.nv_device_time_v0, %struct.nv_device_time_v0* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  br label %44

44:                                               ; preds = %30, %3
  %45 = load i32, i32* %10, align 4
  ret i32 %45
}

declare dso_local i32 @nvif_ioctl(%struct.nvkm_object*, i8*, i32) #1

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @nvkm_timer_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
