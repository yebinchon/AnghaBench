; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/cipher/extr_g84.c_g84_cipher_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/cipher/extr_g84.c_g84_cipher_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_engine = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_engine*)* @g84_cipher_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g84_cipher_init(%struct.nvkm_engine* %0) #0 {
  %2 = alloca %struct.nvkm_engine*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_engine* %0, %struct.nvkm_engine** %2, align 8
  %4 = load %struct.nvkm_engine*, %struct.nvkm_engine** %2, align 8
  %5 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  store %struct.nvkm_device* %7, %struct.nvkm_device** %3, align 8
  %8 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %9 = call i32 @nvkm_wr32(%struct.nvkm_device* %8, i32 1057072, i32 -1)
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %11 = call i32 @nvkm_wr32(%struct.nvkm_device* %10, i32 1057088, i32 -65)
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %13 = call i32 @nvkm_wr32(%struct.nvkm_device* %12, i32 1056780, i32 16)
  ret i32 0
}

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
