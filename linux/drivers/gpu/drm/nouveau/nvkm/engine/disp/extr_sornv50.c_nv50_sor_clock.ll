; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_sornv50.c_nv50_sor_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_sornv50.c_nv50_sor_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ior = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_sor_clock(%struct.nvkm_ior* %0) #0 {
  %2 = alloca %struct.nvkm_ior*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.nvkm_ior* %0, %struct.nvkm_ior** %2, align 8
  %6 = load %struct.nvkm_ior*, %struct.nvkm_ior** %2, align 8
  %7 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %6, i32 0, i32 1
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  store %struct.nvkm_device* %12, %struct.nvkm_device** %3, align 8
  %13 = load %struct.nvkm_ior*, %struct.nvkm_ior** %2, align 8
  %14 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 3
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %4, align 4
  %19 = load %struct.nvkm_ior*, %struct.nvkm_ior** %2, align 8
  %20 = call i64 @nv50_ior_base(%struct.nvkm_ior* %19)
  store i64 %20, i64* %5, align 8
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %22 = load i64, i64* %5, align 8
  %23 = add nsw i64 6374144, %22
  %24 = load i32, i32* %4, align 4
  %25 = shl i32 %24, 8
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @nvkm_mask(%struct.nvkm_device* %21, i64 %23, i32 1799, i32 %27)
  ret void
}

declare dso_local i64 @nv50_ior_base(%struct.nvkm_ior*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
