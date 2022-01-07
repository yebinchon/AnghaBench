; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_gm200.c_pmu_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_gm200.c_pmu_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_devinit = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }
%struct.nvbios_pmuR = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv50_devinit*, i32, i32, i32*, i32*)* @pmu_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmu_load(%struct.nv50_devinit* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nv50_devinit*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.nvkm_subdev*, align 8
  %13 = alloca %struct.nvkm_bios*, align 8
  %14 = alloca %struct.nvbios_pmuR, align 4
  store %struct.nv50_devinit* %0, %struct.nv50_devinit** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.nv50_devinit*, %struct.nv50_devinit** %7, align 8
  %16 = getelementptr inbounds %struct.nv50_devinit, %struct.nv50_devinit* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.nvkm_subdev* %17, %struct.nvkm_subdev** %12, align 8
  %18 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %12, align 8
  %19 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.nvkm_bios*, %struct.nvkm_bios** %21, align 8
  store %struct.nvkm_bios* %22, %struct.nvkm_bios** %13, align 8
  %23 = load %struct.nvkm_bios*, %struct.nvkm_bios** %13, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @nvbios_pmuRm(%struct.nvkm_bios* %23, i32 %24, %struct.nvbios_pmuR* %14)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %73

30:                                               ; preds = %5
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %73

34:                                               ; preds = %30
  %35 = load %struct.nv50_devinit*, %struct.nv50_devinit** %7, align 8
  %36 = getelementptr inbounds %struct.nvbios_pmuR, %struct.nvbios_pmuR* %14, i32 0, i32 10
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.nvbios_pmuR, %struct.nvbios_pmuR* %14, i32 0, i32 9
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.nvbios_pmuR, %struct.nvbios_pmuR* %14, i32 0, i32 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pmu_code(%struct.nv50_devinit* %35, i32 %37, i32 %39, i32 %41, i32 0)
  %43 = load %struct.nv50_devinit*, %struct.nv50_devinit** %7, align 8
  %44 = getelementptr inbounds %struct.nvbios_pmuR, %struct.nvbios_pmuR* %14, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.nvbios_pmuR, %struct.nvbios_pmuR* %14, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.nvbios_pmuR, %struct.nvbios_pmuR* %14, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pmu_code(%struct.nv50_devinit* %43, i32 %45, i32 %47, i32 %49, i32 1)
  %51 = load %struct.nv50_devinit*, %struct.nv50_devinit** %7, align 8
  %52 = getelementptr inbounds %struct.nvbios_pmuR, %struct.nvbios_pmuR* %14, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.nvbios_pmuR, %struct.nvbios_pmuR* %14, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.nvbios_pmuR, %struct.nvbios_pmuR* %14, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pmu_data(%struct.nv50_devinit* %51, i32 %53, i32 %55, i32 %57)
  %59 = load i32*, i32** %10, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %34
  %62 = getelementptr inbounds %struct.nvbios_pmuR, %struct.nvbios_pmuR* %14, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %10, align 8
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds %struct.nvbios_pmuR, %struct.nvbios_pmuR* %14, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %11, align 8
  store i32 %66, i32* %67, align 4
  store i32 0, i32* %6, align 4
  br label %73

68:                                               ; preds = %34
  %69 = load %struct.nv50_devinit*, %struct.nv50_devinit** %7, align 8
  %70 = getelementptr inbounds %struct.nvbios_pmuR, %struct.nvbios_pmuR* %14, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @pmu_exec(%struct.nv50_devinit* %69, i32 %71)
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %68, %61, %33, %27
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @nvbios_pmuRm(%struct.nvkm_bios*, i32, %struct.nvbios_pmuR*) #1

declare dso_local i32 @pmu_code(%struct.nv50_devinit*, i32, i32, i32, i32) #1

declare dso_local i32 @pmu_data(%struct.nv50_devinit*, i32, i32, i32) #1

declare dso_local i32 @pmu_exec(%struct.nv50_devinit*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
