; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_sorg94.c_g94_sor_dp_activesym.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_sorg94.c_g94_sor_dp_activesym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ior = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g94_sor_dp_activesym(%struct.nvkm_ior* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.nvkm_ior*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nvkm_device*, align 8
  %14 = alloca i64, align 8
  store %struct.nvkm_ior* %0, %struct.nvkm_ior** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.nvkm_ior*, %struct.nvkm_ior** %7, align 8
  %16 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %20, align 8
  store %struct.nvkm_device* %21, %struct.nvkm_device** %13, align 8
  %22 = load %struct.nvkm_ior*, %struct.nvkm_ior** %7, align 8
  %23 = call i64 @nv50_sor_link(%struct.nvkm_ior* %22)
  store i64 %23, i64* %14, align 8
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %25 = load i64, i64* %14, align 8
  %26 = add nsw i64 6406412, %25
  %27 = load i32, i32* %9, align 4
  %28 = shl i32 %27, 2
  %29 = call i32 @nvkm_mask(%struct.nvkm_device* %24, i64 %26, i32 508, i32 %28)
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %31 = load i64, i64* %14, align 8
  %32 = add nsw i64 6406440, %31
  %33 = load i32, i32* %10, align 4
  %34 = shl i32 %33, 24
  %35 = load i32, i32* %11, align 4
  %36 = shl i32 %35, 16
  %37 = or i32 %34, %36
  %38 = load i32, i32* %12, align 4
  %39 = shl i32 %38, 8
  %40 = or i32 %37, %39
  %41 = call i32 @nvkm_mask(%struct.nvkm_device* %30, i64 %32, i32 17792768, i32 %40)
  ret void
}

declare dso_local i64 @nv50_sor_link(%struct.nvkm_ior*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
