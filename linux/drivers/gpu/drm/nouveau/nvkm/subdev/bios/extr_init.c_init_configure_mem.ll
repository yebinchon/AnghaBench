; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_configure_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_configure_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"CONFIGURE_MEM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_configure_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_configure_mem(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %8 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %9 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.nvkm_bios*, %struct.nvkm_bios** %13, align 8
  store %struct.nvkm_bios* %14, %struct.nvkm_bios** %3, align 8
  %15 = call i32 @trace(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %17 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  %20 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %21 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 2
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %27 = call i32 @init_done(%struct.nvbios_init* %26)
  br label %81

28:                                               ; preds = %1
  %29 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %30 = call i32 @init_exec_force(%struct.nvbios_init* %29, i32 1)
  %31 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %32 = call i32 @init_configure_mem_clk(%struct.nvbios_init* %31)
  store i32 %32, i32* %4, align 4
  %33 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %34 = call i32 @bmp_sdr_seq_table(%struct.nvkm_bios* %33)
  store i32 %34, i32* %5, align 4
  %35 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @nvbios_rd08(%struct.nvkm_bios* %35, i32 %36)
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %42 = call i32 @bmp_ddr_seq_table(%struct.nvkm_bios* %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %28
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 6
  store i32 %45, i32* %4, align 4
  %46 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %47 = call i32 @init_rdvgai(%struct.nvbios_init* %46, i32 964, i32 1)
  store i32 %47, i32* %7, align 4
  %48 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, 32
  %51 = call i32 @init_wrvgai(%struct.nvbios_init* %48, i32 964, i32 1, i32 %50)
  br label %52

52:                                               ; preds = %75, %43
  %53 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @nvbios_rd32(%struct.nvkm_bios* %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %57, label %78

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  switch i32 %58, label %60 [
    i32 1049116, label %59
    i32 1049296, label %59
    i32 1049300, label %59
  ]

59:                                               ; preds = %57, %57, %57
  store i32 1, i32* %7, align 4
  br label %70

60:                                               ; preds = %57
  %61 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @nvbios_rd32(%struct.nvkm_bios* %61, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 4
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %75

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %59
  %71 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @init_wr32(%struct.nvbios_init* %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %70, %68
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 4
  store i32 %77, i32* %5, align 4
  br label %52

78:                                               ; preds = %52
  %79 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %80 = call i32 @init_exec_force(%struct.nvbios_init* %79, i32 0)
  br label %81

81:                                               ; preds = %78, %25
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @init_done(%struct.nvbios_init*) #1

declare dso_local i32 @init_exec_force(%struct.nvbios_init*, i32) #1

declare dso_local i32 @init_configure_mem_clk(%struct.nvbios_init*) #1

declare dso_local i32 @bmp_sdr_seq_table(%struct.nvkm_bios*) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @bmp_ddr_seq_table(%struct.nvkm_bios*) #1

declare dso_local i32 @init_rdvgai(%struct.nvbios_init*, i32, i32) #1

declare dso_local i32 @init_wrvgai(%struct.nvbios_init*, i32, i32, i32) #1

declare dso_local i32 @nvbios_rd32(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @init_wr32(%struct.nvbios_init*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
