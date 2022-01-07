; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_zm_reg_indirect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_zm_reg_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"ZM_REG_INDIRECT\09R[0x%06x] = VBIOS[0x%04x] = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_zm_reg_indirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_zm_reg_indirect(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %7 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %8 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.nvkm_bios*, %struct.nvkm_bios** %12, align 8
  store %struct.nvkm_bios* %13, %struct.nvkm_bios** %3, align 8
  %14 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %15 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %16 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  %19 = call i32 @nvbios_rd32(%struct.nvkm_bios* %14, i64 %18)
  store i32 %19, i32* %4, align 4
  %20 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %21 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %22 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 5
  %25 = call i64 @nvbios_rd16(%struct.nvkm_bios* %20, i64 %24)
  store i64 %25, i64* %5, align 8
  %26 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @nvbios_rd32(%struct.nvkm_bios* %26, i64 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i64, i64* %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @trace(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %29, i64 %30, i32 %31)
  %33 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %34 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 7
  store i64 %36, i64* %34, align 8
  %37 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @init_wr32(%struct.nvbios_init* %37, i64 %38, i32 %39)
  ret void
}

declare dso_local i32 @nvbios_rd32(%struct.nvkm_bios*, i64) #1

declare dso_local i64 @nvbios_rd16(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @trace(i8*, i32, i64, i32) #1

declare dso_local i32 @init_wr32(%struct.nvbios_init*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
