; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv04.c_nv04_gr_set_ctx1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv04.c_nv04_gr_set_ctx1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }

@NV04_PGRAPH_TRAPPED_ADDR = common dso_local global i32 0, align 4
@NV04_PGRAPH_CTX_SWITCH1 = common dso_local global i32 0, align 4
@NV04_PGRAPH_CTX_CACHE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_device*, i32, i32, i32)* @nv04_gr_set_ctx1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_gr_set_ctx1(%struct.nvkm_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvkm_device* %0, %struct.nvkm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %12 = load i32, i32* @NV04_PGRAPH_TRAPPED_ADDR, align 4
  %13 = call i32 @nvkm_rd32(%struct.nvkm_device* %11, i32 %12)
  %14 = ashr i32 %13, 13
  %15 = and i32 %14, 7
  store i32 %15, i32* %9, align 4
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 7340032, %17
  %19 = call i32 @nvkm_rd32(%struct.nvkm_device* %16, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %10, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %10, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %10, align 4
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 7340032, %28
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @nvkm_wr32(%struct.nvkm_device* %27, i32 %29, i32 %30)
  %32 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %33 = load i32, i32* @NV04_PGRAPH_CTX_SWITCH1, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @nvkm_wr32(%struct.nvkm_device* %32, i32 %33, i32 %34)
  %36 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %37 = load i32, i32* @NV04_PGRAPH_CTX_CACHE1, align 4
  %38 = load i32, i32* %9, align 4
  %39 = shl i32 %38, 2
  %40 = add nsw i32 %37, %39
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @nvkm_wr32(%struct.nvkm_device* %36, i32 %40, i32 %41)
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
