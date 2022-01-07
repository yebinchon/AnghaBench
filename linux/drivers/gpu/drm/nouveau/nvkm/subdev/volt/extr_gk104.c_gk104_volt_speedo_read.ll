; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_gk104.c_gk104_volt_speedo_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_gk104.c_gk104_volt_speedo_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_volt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_fuse* }
%struct.nvkm_fuse = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_volt*)* @gk104_volt_speedo_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gk104_volt_speedo_read(%struct.nvkm_volt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_volt*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca %struct.nvkm_fuse*, align 8
  %6 = alloca i32, align 4
  store %struct.nvkm_volt* %0, %struct.nvkm_volt** %3, align 8
  %7 = load %struct.nvkm_volt*, %struct.nvkm_volt** %3, align 8
  %8 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  store %struct.nvkm_device* %10, %struct.nvkm_device** %4, align 8
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %12 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %11, i32 0, i32 0
  %13 = load %struct.nvkm_fuse*, %struct.nvkm_fuse** %12, align 8
  store %struct.nvkm_fuse* %13, %struct.nvkm_fuse** %5, align 8
  %14 = load %struct.nvkm_fuse*, %struct.nvkm_fuse** %5, align 8
  %15 = icmp ne %struct.nvkm_fuse* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %27

19:                                               ; preds = %1
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %21 = call i32 @nvkm_wr32(%struct.nvkm_device* %20, i32 1189428, i32 0)
  %22 = load %struct.nvkm_fuse*, %struct.nvkm_fuse** %5, align 8
  %23 = call i32 @nvkm_fuse_read(%struct.nvkm_fuse* %22, i32 936)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %25 = call i32 @nvkm_wr32(%struct.nvkm_device* %24, i32 1189428, i32 65)
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %19, %16
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_fuse_read(%struct.nvkm_fuse*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
