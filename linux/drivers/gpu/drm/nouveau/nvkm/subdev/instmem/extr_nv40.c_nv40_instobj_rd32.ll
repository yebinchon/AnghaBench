; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/extr_nv40.c_nv40_instobj_rd32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/extr_nv40.c_nv40_instobj_rd32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_memory = type { i32 }
%struct.nv40_instobj = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_memory*, i64)* @nv40_instobj_rd32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv40_instobj_rd32(%struct.nvkm_memory* %0, i64 %1) #0 {
  %3 = alloca %struct.nvkm_memory*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.nv40_instobj*, align 8
  store %struct.nvkm_memory* %0, %struct.nvkm_memory** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.nvkm_memory*, %struct.nvkm_memory** %3, align 8
  %7 = call %struct.nv40_instobj* @nv40_instobj(%struct.nvkm_memory* %6)
  store %struct.nv40_instobj* %7, %struct.nv40_instobj** %5, align 8
  %8 = load %struct.nv40_instobj*, %struct.nv40_instobj** %5, align 8
  %9 = getelementptr inbounds %struct.nv40_instobj, %struct.nv40_instobj* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.nv40_instobj*, %struct.nv40_instobj** %5, align 8
  %14 = getelementptr inbounds %struct.nv40_instobj, %struct.nv40_instobj* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %12, %17
  %19 = load i64, i64* %4, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @ioread32_native(i64 %20)
  ret i32 %21
}

declare dso_local %struct.nv40_instobj* @nv40_instobj(%struct.nvkm_memory*) #1

declare dso_local i32 @ioread32_native(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
