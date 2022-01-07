; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_dacnv50.c_nv50_dac_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_dacnv50.c_nv50_dac_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ior = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_dac_power(%struct.nvkm_ior* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
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
  %34 = zext i1 %33 to i32
  %35 = mul nsw i32 64, %34
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = mul nsw i32 16, %39
  %41 = or i32 %35, %40
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = mul nsw i32 4, %45
  %47 = or i32 %41, %46
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = mul nsw i32 1, %51
  %53 = or i32 %47, %52
  %54 = load i32, i32* %15, align 4
  %55 = shl i32 %53, %54
  %56 = or i32 -2147483648, %55
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %15, align 4
  %58 = shl i32 85, %57
  %59 = or i32 -1073741824, %58
  store i32 %59, i32* %17, align 4
  %60 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @nv50_dac_power_wait(%struct.nvkm_device* %60, i32 %61)
  %63 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 6397956, %64
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @nvkm_mask(%struct.nvkm_device* %63, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @nv50_dac_power_wait(%struct.nvkm_device* %69, i32 %70)
  ret void
}

declare dso_local i32 @nv50_ior_base(%struct.nvkm_ior*) #1

declare dso_local i32 @nv50_dac_power_wait(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
