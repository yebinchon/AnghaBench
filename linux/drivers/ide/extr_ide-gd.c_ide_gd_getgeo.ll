; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-gd.c_ide_gd_getgeo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-gd.c_ide_gd_getgeo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.hd_geometry = type { i64, i32, i32 }
%struct.ide_disk_obj = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32 }

@ide_disk_obj = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, %struct.hd_geometry*)* @ide_gd_getgeo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_gd_getgeo(%struct.block_device* %0, %struct.hd_geometry* %1) #0 {
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca %struct.hd_geometry*, align 8
  %5 = alloca %struct.ide_disk_obj*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  store %struct.hd_geometry* %1, %struct.hd_geometry** %4, align 8
  %7 = load %struct.block_device*, %struct.block_device** %3, align 8
  %8 = getelementptr inbounds %struct.block_device, %struct.block_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ide_disk_obj, align 4
  %11 = call %struct.ide_disk_obj* @ide_drv_g(i32 %9, i32 %10)
  store %struct.ide_disk_obj* %11, %struct.ide_disk_obj** %5, align 8
  %12 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %5, align 8
  %13 = getelementptr inbounds %struct.ide_disk_obj, %struct.ide_disk_obj* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %6, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %19 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %24 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %29 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  ret i32 0
}

declare dso_local %struct.ide_disk_obj* @ide_drv_g(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
