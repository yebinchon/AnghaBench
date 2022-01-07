; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/extr_nv04.c_nv04_instobj_wr32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/extr_nv04.c_nv04_instobj_wr32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_memory = type { i32 }
%struct.nv04_instobj = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_memory*, i64, i32)* @nv04_instobj_wr32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_instobj_wr32(%struct.nvkm_memory* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.nvkm_memory*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nv04_instobj*, align 8
  %8 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_memory* %0, %struct.nvkm_memory** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nvkm_memory*, %struct.nvkm_memory** %4, align 8
  %10 = call %struct.nv04_instobj* @nv04_instobj(%struct.nvkm_memory* %9)
  store %struct.nv04_instobj* %10, %struct.nv04_instobj** %7, align 8
  %11 = load %struct.nv04_instobj*, %struct.nv04_instobj** %7, align 8
  %12 = getelementptr inbounds %struct.nv04_instobj, %struct.nv04_instobj* %11, i32 0, i32 1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %16, align 8
  store %struct.nvkm_device* %17, %struct.nvkm_device** %8, align 8
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %19 = load %struct.nv04_instobj*, %struct.nv04_instobj** %7, align 8
  %20 = getelementptr inbounds %struct.nv04_instobj, %struct.nv04_instobj* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 7340032, %23
  %25 = load i64, i64* %5, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @nvkm_wr32(%struct.nvkm_device* %18, i64 %26, i32 %27)
  ret void
}

declare dso_local %struct.nv04_instobj* @nv04_instobj(%struct.nvkm_memory*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
