; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_gf100.c_gf100_volt_speedo_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_gf100.c_gf100_volt_speedo_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_volt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_fuse* }
%struct.nvkm_fuse = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_volt*)* @gf100_volt_speedo_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gf100_volt_speedo_read(%struct.nvkm_volt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_volt*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca %struct.nvkm_fuse*, align 8
  store %struct.nvkm_volt* %0, %struct.nvkm_volt** %3, align 8
  %6 = load %struct.nvkm_volt*, %struct.nvkm_volt** %3, align 8
  %7 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  store %struct.nvkm_device* %9, %struct.nvkm_device** %4, align 8
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %11 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %10, i32 0, i32 0
  %12 = load %struct.nvkm_fuse*, %struct.nvkm_fuse** %11, align 8
  store %struct.nvkm_fuse* %12, %struct.nvkm_fuse** %5, align 8
  %13 = load %struct.nvkm_fuse*, %struct.nvkm_fuse** %5, align 8
  %14 = icmp ne %struct.nvkm_fuse* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %21

18:                                               ; preds = %1
  %19 = load %struct.nvkm_fuse*, %struct.nvkm_fuse** %5, align 8
  %20 = call i32 @nvkm_fuse_read(%struct.nvkm_fuse* %19, i32 460)
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @nvkm_fuse_read(%struct.nvkm_fuse*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
