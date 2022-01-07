; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_gm200.c_pmu_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_gm200.c_pmu_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_devinit = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_devinit*, i32, i32, i32, i32)* @pmu_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmu_code(%struct.nv50_devinit* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nv50_devinit*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_device*, align 8
  %12 = alloca %struct.nvkm_bios*, align 8
  %13 = alloca i32, align 4
  store %struct.nv50_devinit* %0, %struct.nv50_devinit** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.nv50_devinit*, %struct.nv50_devinit** %6, align 8
  %15 = getelementptr inbounds %struct.nv50_devinit, %struct.nv50_devinit* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %17, align 8
  store %struct.nvkm_device* %18, %struct.nvkm_device** %11, align 8
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  %20 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %19, i32 0, i32 0
  %21 = load %struct.nvkm_bios*, %struct.nvkm_bios** %20, align 8
  store %struct.nvkm_bios* %21, %struct.nvkm_bios** %12, align 8
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 268435456, i32 0
  %27 = or i32 16777216, %26
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @nvkm_wr32(%struct.nvkm_device* %22, i32 1089920, i32 %29)
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %54, %5
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %31
  %36 = load i32, i32* %13, align 4
  %37 = and i32 %36, 255
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %41, %42
  %44 = ashr i32 %43, 8
  %45 = call i32 @nvkm_wr32(%struct.nvkm_device* %40, i32 1089928, i32 %44)
  br label %46

46:                                               ; preds = %39, %35
  %47 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  %48 = load %struct.nvkm_bios*, %struct.nvkm_bios** %12, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %49, %50
  %52 = call i32 @nvbios_rd32(%struct.nvkm_bios* %48, i32 %51)
  %53 = call i32 @nvkm_wr32(%struct.nvkm_device* %47, i32 1089924, i32 %52)
  br label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 4
  store i32 %56, i32* %13, align 4
  br label %31

57:                                               ; preds = %31
  br label %58

58:                                               ; preds = %62, %57
  %59 = load i32, i32* %13, align 4
  %60 = and i32 %59, 255
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  %64 = call i32 @nvkm_wr32(%struct.nvkm_device* %63, i32 1089924, i32 0)
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 4
  store i32 %66, i32* %13, align 4
  br label %58

67:                                               ; preds = %58
  ret void
}

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvbios_rd32(%struct.nvkm_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
