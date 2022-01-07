; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gm20b.c_gm20b_gr_init_gpc_mmu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gm20b.c_gm20b_gr_init_gpc_mmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"cannot bypass secure boot - expect failure soon!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gf100_gr*)* @gm20b_gr_init_gpc_mmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gm20b_gr_init_gpc_mmu(%struct.gf100_gr* %0) #0 {
  %2 = alloca %struct.gf100_gr*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  store %struct.gf100_gr* %0, %struct.gf100_gr** %2, align 8
  %5 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %6 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  store %struct.nvkm_device* %10, %struct.nvkm_device** %3, align 8
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %12 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %1
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %17 = call i32 @nvkm_wr32(%struct.nvkm_device* %16, i32 1051876, i32 -1)
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %19 = call i32 @nvkm_rd32(%struct.nvkm_device* %18, i32 1051876)
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %23 = call i32 @nvdev_warn(%struct.nvkm_device* %22, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %15
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %27 = call i32 @nvkm_rd32(%struct.nvkm_device* %26, i32 1051776)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, -268429185
  store i32 %29, i32* %4, align 4
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @nvkm_wr32(%struct.nvkm_device* %30, i32 4294784, i32 %31)
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %34 = call i32 @nvkm_wr32(%struct.nvkm_device* %33, i32 4294800, i32 0)
  %35 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %36 = call i32 @nvkm_wr32(%struct.nvkm_device* %35, i32 4294804, i32 0)
  %37 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %38 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %39 = call i32 @nvkm_rd32(%struct.nvkm_device* %38, i32 1051844)
  %40 = call i32 @nvkm_wr32(%struct.nvkm_device* %37, i32 4294832, i32 %39)
  %41 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %42 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %43 = call i32 @nvkm_rd32(%struct.nvkm_device* %42, i32 1051848)
  %44 = call i32 @nvkm_wr32(%struct.nvkm_device* %41, i32 4294836, i32 %43)
  %45 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %46 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %47 = call i32 @nvkm_rd32(%struct.nvkm_device* %46, i32 1051852)
  %48 = call i32 @nvkm_wr32(%struct.nvkm_device* %45, i32 4294840, i32 %47)
  %49 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %50 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %51 = call i32 @nvkm_rd32(%struct.nvkm_device* %50, i32 1050624)
  %52 = call i32 @nvkm_wr32(%struct.nvkm_device* %49, i32 4294828, i32 %51)
  ret void
}

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvdev_warn(%struct.nvkm_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
