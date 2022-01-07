; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_ioctl.c_qxl_map_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_ioctl.c_qxl_map_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.qxl_device* }
%struct.qxl_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_qxl_map = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @qxl_map_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qxl_map_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.qxl_device*, align 8
  %8 = alloca %struct.drm_qxl_map*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.drm_file* %2, %struct.drm_file** %6, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.qxl_device*, %struct.qxl_device** %10, align 8
  store %struct.qxl_device* %11, %struct.qxl_device** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.drm_qxl_map*
  store %struct.drm_qxl_map* %13, %struct.drm_qxl_map** %8, align 8
  %14 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %15 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %16 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %15, i32 0, i32 0
  %17 = load %struct.drm_qxl_map*, %struct.drm_qxl_map** %8, align 8
  %18 = getelementptr inbounds %struct.drm_qxl_map, %struct.drm_qxl_map* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.drm_qxl_map*, %struct.drm_qxl_map** %8, align 8
  %21 = getelementptr inbounds %struct.drm_qxl_map, %struct.drm_qxl_map* %20, i32 0, i32 0
  %22 = call i32 @qxl_mode_dumb_mmap(%struct.drm_file* %14, i32* %16, i32 %19, i32* %21)
  ret i32 %22
}

declare dso_local i32 @qxl_mode_dumb_mmap(%struct.drm_file*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
