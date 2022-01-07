; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"RESET\09R[0x%08x] = 0x%08x, 0x%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_reset(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %8 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %9 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.nvkm_bios*, %struct.nvkm_bios** %13, align 8
  store %struct.nvkm_bios* %14, %struct.nvkm_bios** %3, align 8
  %15 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %16 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %17 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  %20 = call i32 @nvbios_rd32(%struct.nvkm_bios* %15, i64 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %22 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %23 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 5
  %26 = call i32 @nvbios_rd32(%struct.nvkm_bios* %21, i64 %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %28 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %29 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 9
  %32 = call i32 @nvbios_rd32(%struct.nvkm_bios* %27, i64 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @trace(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i32 %35)
  %37 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %38 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 13
  store i64 %40, i64* %38, align 8
  %41 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %42 = call i32 @init_exec_force(%struct.nvbios_init* %41, i32 1)
  %43 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %44 = call i32 @init_mask(%struct.nvbios_init* %43, i32 6220, i32 3840, i32 0)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @init_wr32(%struct.nvbios_init* %45, i32 %46, i32 %47)
  %49 = call i32 @udelay(i32 10)
  %50 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @init_wr32(%struct.nvbios_init* %50, i32 %51, i32 %52)
  %54 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @init_wr32(%struct.nvbios_init* %54, i32 6220, i32 %55)
  %57 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %58 = call i32 @init_mask(%struct.nvbios_init* %57, i32 6224, i32 1, i32 0)
  %59 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %60 = call i32 @init_exec_force(%struct.nvbios_init* %59, i32 0)
  ret void
}

declare dso_local i32 @nvbios_rd32(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @trace(i8*, i32, i32, i32) #1

declare dso_local i32 @init_exec_force(%struct.nvbios_init*, i32) #1

declare dso_local i32 @init_mask(%struct.nvbios_init*, i32, i32, i32) #1

declare dso_local i32 @init_wr32(%struct.nvbios_init*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
