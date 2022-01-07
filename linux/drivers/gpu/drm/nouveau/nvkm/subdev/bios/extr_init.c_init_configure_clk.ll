; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_configure_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_configure_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"CONFIGURE_CLK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_configure_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_configure_clk(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %6 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %6, i32 0, i32 1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  store %struct.nvkm_bios* %12, %struct.nvkm_bios** %3, align 8
  %13 = call i32 @trace(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %15 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %19 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 2
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %25 = call i32 @init_done(%struct.nvbios_init* %24)
  br label %58

26:                                               ; preds = %1
  %27 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %28 = call i32 @init_exec_force(%struct.nvbios_init* %27, i32 1)
  %29 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %30 = call i32 @init_configure_mem_clk(%struct.nvbios_init* %29)
  store i32 %30, i32* %4, align 4
  %31 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 4
  %34 = call i32 @nvbios_rd16(%struct.nvkm_bios* %31, i32 %33)
  %35 = mul nsw i32 %34, 10
  store i32 %35, i32* %5, align 4
  %36 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @init_prog_pll(%struct.nvbios_init* %36, i32 6817024, i32 %37)
  %39 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 2
  %42 = call i32 @nvbios_rd16(%struct.nvkm_bios* %39, i32 %41)
  %43 = mul nsw i32 %42, 10
  store i32 %43, i32* %5, align 4
  %44 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @nvbios_rd08(%struct.nvkm_bios* %44, i32 %45)
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %26
  %50 = load i32, i32* %5, align 4
  %51 = mul nsw i32 %50, 2
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %26
  %53 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @init_prog_pll(%struct.nvbios_init* %53, i32 6817028, i32 %54)
  %56 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %57 = call i32 @init_exec_force(%struct.nvbios_init* %56, i32 0)
  br label %58

58:                                               ; preds = %52, %23
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @init_done(%struct.nvbios_init*) #1

declare dso_local i32 @init_exec_force(%struct.nvbios_init*, i32) #1

declare dso_local i32 @init_configure_mem_clk(%struct.nvbios_init*) #1

declare dso_local i32 @nvbios_rd16(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @init_prog_pll(%struct.nvbios_init*, i32, i32) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
