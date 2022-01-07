; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv04.c_nv04_gr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv04.c_nv04_gr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gr = type { i32 }
%struct.nv04_gr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@NV03_PGRAPH_INTR = common dso_local global i32 0, align 4
@NV03_PGRAPH_INTR_EN = common dso_local global i32 0, align 4
@NV04_PGRAPH_VALID1 = common dso_local global i32 0, align 4
@NV04_PGRAPH_VALID2 = common dso_local global i32 0, align 4
@NV04_PGRAPH_DEBUG_0 = common dso_local global i32 0, align 4
@NV04_PGRAPH_DEBUG_1 = common dso_local global i32 0, align 4
@NV04_PGRAPH_DEBUG_2 = common dso_local global i32 0, align 4
@NV04_PGRAPH_DEBUG_3 = common dso_local global i32 0, align 4
@NV04_PGRAPH_STATE = common dso_local global i32 0, align 4
@NV04_PGRAPH_CTX_CONTROL = common dso_local global i32 0, align 4
@NV04_PGRAPH_CTX_USER = common dso_local global i32 0, align 4
@NV04_PGRAPH_PATTERN_SHAPE = common dso_local global i32 0, align 4
@NV04_PGRAPH_BETA_AND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_gr*)* @nv04_gr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_gr_init(%struct.nvkm_gr* %0) #0 {
  %2 = alloca %struct.nvkm_gr*, align 8
  %3 = alloca %struct.nv04_gr*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_gr* %0, %struct.nvkm_gr** %2, align 8
  %5 = load %struct.nvkm_gr*, %struct.nvkm_gr** %2, align 8
  %6 = call %struct.nv04_gr* @nv04_gr(%struct.nvkm_gr* %5)
  store %struct.nv04_gr* %6, %struct.nv04_gr** %3, align 8
  %7 = load %struct.nv04_gr*, %struct.nv04_gr** %3, align 8
  %8 = getelementptr inbounds %struct.nv04_gr, %struct.nv04_gr* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  store %struct.nvkm_device* %12, %struct.nvkm_device** %4, align 8
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %14 = load i32, i32* @NV03_PGRAPH_INTR, align 4
  %15 = call i32 @nvkm_wr32(%struct.nvkm_device* %13, i32 %14, i32 -1)
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %17 = load i32, i32* @NV03_PGRAPH_INTR_EN, align 4
  %18 = call i32 @nvkm_wr32(%struct.nvkm_device* %16, i32 %17, i32 -1)
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %20 = load i32, i32* @NV04_PGRAPH_VALID1, align 4
  %21 = call i32 @nvkm_wr32(%struct.nvkm_device* %19, i32 %20, i32 0)
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %23 = load i32, i32* @NV04_PGRAPH_VALID2, align 4
  %24 = call i32 @nvkm_wr32(%struct.nvkm_device* %22, i32 %23, i32 0)
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %26 = load i32, i32* @NV04_PGRAPH_DEBUG_0, align 4
  %27 = call i32 @nvkm_wr32(%struct.nvkm_device* %25, i32 %26, i32 305250304)
  %28 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %29 = load i32, i32* @NV04_PGRAPH_DEBUG_1, align 4
  %30 = call i32 @nvkm_wr32(%struct.nvkm_device* %28, i32 %29, i32 1913721088)
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %32 = load i32, i32* @NV04_PGRAPH_DEBUG_2, align 4
  %33 = call i32 @nvkm_wr32(%struct.nvkm_device* %31, i32 %32, i32 299233393)
  %34 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %35 = load i32, i32* @NV04_PGRAPH_DEBUG_3, align 4
  %36 = call i32 @nvkm_wr32(%struct.nvkm_device* %34, i32 %35, i32 -254476495)
  %37 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %38 = load i32, i32* @NV04_PGRAPH_STATE, align 4
  %39 = call i32 @nvkm_wr32(%struct.nvkm_device* %37, i32 %38, i32 -1)
  %40 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %41 = load i32, i32* @NV04_PGRAPH_CTX_CONTROL, align 4
  %42 = call i32 @nvkm_wr32(%struct.nvkm_device* %40, i32 %41, i32 268435712)
  %43 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %44 = load i32, i32* @NV04_PGRAPH_CTX_USER, align 4
  %45 = call i32 @nvkm_mask(%struct.nvkm_device* %43, i32 %44, i32 -16777216, i32 251658240)
  %46 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %47 = load i32, i32* @NV04_PGRAPH_PATTERN_SHAPE, align 4
  %48 = call i32 @nvkm_wr32(%struct.nvkm_device* %46, i32 %47, i32 0)
  %49 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %50 = load i32, i32* @NV04_PGRAPH_BETA_AND, align 4
  %51 = call i32 @nvkm_wr32(%struct.nvkm_device* %49, i32 %50, i32 -1)
  ret i32 0
}

declare dso_local %struct.nv04_gr* @nv04_gr(%struct.nvkm_gr*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
