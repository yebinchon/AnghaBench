; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_gv100.c_gv100_devinit_pll_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_gv100.c_gv100_devinit_pll_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_devinit = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvbios_pll = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"%08x/%dKhz unimplemented\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_devinit*, i32, i32)* @gv100_devinit_pll_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gv100_devinit_pll_set(%struct.nvkm_devinit* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_devinit*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_subdev*, align 8
  %9 = alloca %struct.nvkm_device*, align 8
  %10 = alloca %struct.nvbios_pll, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nvkm_devinit* %0, %struct.nvkm_devinit** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %5, align 8
  %18 = getelementptr inbounds %struct.nvkm_devinit, %struct.nvkm_devinit* %17, i32 0, i32 0
  store %struct.nvkm_subdev* %18, %struct.nvkm_subdev** %8, align 8
  %19 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %20 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %19, i32 0, i32 0
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %20, align 8
  store %struct.nvkm_device* %21, %struct.nvkm_device** %9, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 %22, 131
  store i32 %23, i32* %11, align 4
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %25 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @nvbios_pll_parse(i32 %26, i32 %27, %struct.nvbios_pll* %10)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %16, align 4
  store i32 %32, i32* %4, align 4
  br label %74

33:                                               ; preds = %3
  %34 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @gt215_pll_calc(%struct.nvkm_subdev* %34, %struct.nvbios_pll* %10, i32 %35, i32* %12, i32* %13, i32* %14, i32* %15)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %16, align 4
  store i32 %40, i32* %4, align 4
  br label %74

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %10, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %65 [
    i32 131, label %44
    i32 130, label %44
    i32 129, label %44
    i32 128, label %44
  ]

44:                                               ; preds = %41, %41, %41, %41
  %45 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %46 = load i32, i32* %11, align 4
  %47 = mul nsw i32 %46, 64
  %48 = add nsw i32 61200, %47
  %49 = load i32, i32* %13, align 4
  %50 = shl i32 %49, 16
  %51 = call i32 @nvkm_wr32(%struct.nvkm_device* %45, i32 %48, i32 %50)
  %52 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %53 = load i32, i32* %11, align 4
  %54 = mul nsw i32 %53, 64
  %55 = add nsw i32 61188, %54
  %56 = load i32, i32* %15, align 4
  %57 = shl i32 %56, 16
  %58 = load i32, i32* %12, align 4
  %59 = shl i32 %58, 8
  %60 = or i32 %57, %59
  %61 = load i32, i32* %14, align 4
  %62 = shl i32 %61, 0
  %63 = or i32 %60, %62
  %64 = call i32 @nvkm_wr32(%struct.nvkm_device* %52, i32 %55, i32 %63)
  br label %72

65:                                               ; preds = %41
  %66 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @nvkm_warn(%struct.nvkm_subdev* %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %16, align 4
  br label %72

72:                                               ; preds = %65, %44
  %73 = load i32, i32* %16, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %39, %31
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @nvbios_pll_parse(i32, i32, %struct.nvbios_pll*) #1

declare dso_local i32 @gt215_pll_calc(%struct.nvkm_subdev*, %struct.nvbios_pll*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_warn(%struct.nvkm_subdev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
