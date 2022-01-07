; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_gk104.c_gk104_volt_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_gk104.c_gk104_volt_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_volt = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvbios_volt = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.nvbios_volt }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_volt*)* @gk104_volt_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gk104_volt_get(%struct.nvkm_volt* %0) #0 {
  %2 = alloca %struct.nvkm_volt*, align 8
  %3 = alloca %struct.nvbios_volt*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvkm_volt* %0, %struct.nvkm_volt** %2, align 8
  %7 = load %struct.nvkm_volt*, %struct.nvkm_volt** %2, align 8
  %8 = call %struct.TYPE_4__* @gk104_volt(%struct.nvkm_volt* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.nvbios_volt* %9, %struct.nvbios_volt** %3, align 8
  %10 = load %struct.nvkm_volt*, %struct.nvkm_volt** %2, align 8
  %11 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  store %struct.nvkm_device* %13, %struct.nvkm_device** %4, align 8
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %15 = call i32 @nvkm_rd32(%struct.nvkm_device* %14, i32 131904)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %17 = call i32 @nvkm_rd32(%struct.nvkm_device* %16, i32 131908)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.nvbios_volt*, %struct.nvbios_volt** %3, align 8
  %19 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nvbios_volt*, %struct.nvbios_volt** %3, align 8
  %22 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load i32, i32* %5, align 4
  %27 = sdiv i32 %25, %26
  %28 = add nsw i32 %20, %27
  ret i32 %28
}

declare dso_local %struct.TYPE_4__* @gk104_volt(%struct.nvkm_volt*) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
