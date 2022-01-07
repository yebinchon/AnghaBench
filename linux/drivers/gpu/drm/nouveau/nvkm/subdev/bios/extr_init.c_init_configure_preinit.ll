; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_configure_preinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_configure_preinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"CONFIGURE_PREINIT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_configure_preinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_configure_preinit(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %5 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %6 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %5, i32 0, i32 1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.nvkm_bios*, %struct.nvkm_bios** %10, align 8
  store %struct.nvkm_bios* %11, %struct.nvkm_bios** %3, align 8
  %12 = call i32 @trace(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %14 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  %17 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %18 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 2
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %24 = call i32 @init_done(%struct.nvbios_init* %23)
  br label %42

25:                                               ; preds = %1
  %26 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %27 = call i32 @init_exec_force(%struct.nvbios_init* %26, i32 1)
  %28 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %29 = call i32 @init_rd32(%struct.nvbios_init* %28, i32 1052672)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = shl i32 %30, 2
  %32 = and i32 %31, 240
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 64
  %35 = ashr i32 %34, 6
  %36 = or i32 %32, %35
  store i32 %36, i32* %4, align 4
  %37 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @init_wrvgai(%struct.nvbios_init* %37, i32 980, i32 60, i32 %38)
  %40 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %41 = call i32 @init_exec_force(%struct.nvbios_init* %40, i32 0)
  br label %42

42:                                               ; preds = %25, %22
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @init_done(%struct.nvbios_init*) #1

declare dso_local i32 @init_exec_force(%struct.nvbios_init*, i32) #1

declare dso_local i32 @init_rd32(%struct.nvbios_init*, i32) #1

declare dso_local i32 @init_wrvgai(%struct.nvbios_init*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
