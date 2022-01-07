; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_gm200.c_pmu_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_gm200.c_pmu_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_devinit = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_devinit*, i32, i32, i32)* @pmu_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmu_data(%struct.nv50_devinit* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nv50_devinit*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_device*, align 8
  %10 = alloca %struct.nvkm_bios*, align 8
  %11 = alloca i32, align 4
  store %struct.nv50_devinit* %0, %struct.nv50_devinit** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.nv50_devinit*, %struct.nv50_devinit** %5, align 8
  %13 = getelementptr inbounds %struct.nv50_devinit, %struct.nv50_devinit* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %15, align 8
  store %struct.nvkm_device* %16, %struct.nvkm_device** %9, align 8
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %18 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %17, i32 0, i32 0
  %19 = load %struct.nvkm_bios*, %struct.nvkm_bios** %18, align 8
  store %struct.nvkm_bios* %19, %struct.nvkm_bios** %10, align 8
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %21 = load i32, i32* %6, align 4
  %22 = or i32 16777216, %21
  %23 = call i32 @nvkm_wr32(%struct.nvkm_device* %20, i32 1089984, i32 %22)
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %36, %4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %30 = load %struct.nvkm_bios*, %struct.nvkm_bios** %10, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %31, %32
  %34 = call i32 @nvbios_rd32(%struct.nvkm_bios* %30, i32 %33)
  %35 = call i32 @nvkm_wr32(%struct.nvkm_device* %29, i32 1089988, i32 %34)
  br label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 4
  store i32 %38, i32* %11, align 4
  br label %24

39:                                               ; preds = %24
  ret void
}

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvbios_rd32(%struct.nvkm_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
