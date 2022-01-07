; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_outp.c_nvkm_outp_acquire_ior.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_outp.c_nvkm_outp_acquire_ior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_outp = type { i32, %struct.TYPE_6__, %struct.nvkm_ior* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nvkm_ior = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.nvkm_outp* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_outp*, i32, %struct.nvkm_ior*)* @nvkm_outp_acquire_ior to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_outp_acquire_ior(%struct.nvkm_outp* %0, i32 %1, %struct.nvkm_ior* %2) #0 {
  %4 = alloca %struct.nvkm_outp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_ior*, align 8
  store %struct.nvkm_outp* %0, %struct.nvkm_outp** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nvkm_ior* %2, %struct.nvkm_ior** %6, align 8
  %7 = load %struct.nvkm_ior*, %struct.nvkm_ior** %6, align 8
  %8 = load %struct.nvkm_outp*, %struct.nvkm_outp** %4, align 8
  %9 = getelementptr inbounds %struct.nvkm_outp, %struct.nvkm_outp* %8, i32 0, i32 2
  store %struct.nvkm_ior* %7, %struct.nvkm_ior** %9, align 8
  %10 = load %struct.nvkm_outp*, %struct.nvkm_outp** %4, align 8
  %11 = load %struct.nvkm_outp*, %struct.nvkm_outp** %4, align 8
  %12 = getelementptr inbounds %struct.nvkm_outp, %struct.nvkm_outp* %11, i32 0, i32 2
  %13 = load %struct.nvkm_ior*, %struct.nvkm_ior** %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store %struct.nvkm_outp* %10, %struct.nvkm_outp** %15, align 8
  %16 = load %struct.nvkm_outp*, %struct.nvkm_outp** %4, align 8
  %17 = getelementptr inbounds %struct.nvkm_outp, %struct.nvkm_outp* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nvkm_outp*, %struct.nvkm_outp** %4, align 8
  %22 = getelementptr inbounds %struct.nvkm_outp, %struct.nvkm_outp* %21, i32 0, i32 2
  %23 = load %struct.nvkm_ior*, %struct.nvkm_ior** %22, align 8
  %24 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %20, i32* %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.nvkm_outp*, %struct.nvkm_outp** %4, align 8
  %28 = getelementptr inbounds %struct.nvkm_outp, %struct.nvkm_outp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
