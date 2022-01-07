; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_piornv50.c_nv50_pior_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_piornv50.c_nv50_pior_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ior = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_ior*, i32, i32, i32, i32, i32)* @nv50_pior_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_pior_power(%struct.nvkm_ior* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.nvkm_ior*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nvkm_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nvkm_ior* %0, %struct.nvkm_ior** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load %struct.nvkm_ior*, %struct.nvkm_ior** %7, align 8
  %19 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %23, align 8
  store %struct.nvkm_device* %24, %struct.nvkm_device** %13, align 8
  %25 = load %struct.nvkm_ior*, %struct.nvkm_ior** %7, align 8
  %26 = call i32 @nv50_ior_base(%struct.nvkm_ior* %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 0, i32 16
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = mul nsw i32 1, %35
  %37 = load i32, i32* %15, align 4
  %38 = shl i32 %36, %37
  %39 = or i32 -2147483648, %38
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %15, align 4
  %41 = shl i32 257, %40
  %42 = or i32 -2147483648, %41
  store i32 %42, i32* %17, align 4
  %43 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @nv50_pior_power_wait(%struct.nvkm_device* %43, i32 %44)
  %46 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 6414340, %47
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @nvkm_mask(%struct.nvkm_device* %46, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @nv50_pior_power_wait(%struct.nvkm_device* %52, i32 %53)
  ret void
}

declare dso_local i32 @nv50_ior_base(%struct.nvkm_ior*) #1

declare dso_local i32 @nv50_pior_power_wait(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
