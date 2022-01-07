; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_gt215.c_gt215_devinit_pll_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_gt215.c_gt215_devinit_pll_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_devinit = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvbios_pll = type { i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"%08x/%dKhz unimplemented\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gt215_devinit_pll_set(%struct.nvkm_devinit* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_devinit*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_subdev*, align 8
  %9 = alloca %struct.nvkm_device*, align 8
  %10 = alloca %struct.nvbios_pll, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nvkm_devinit* %0, %struct.nvkm_devinit** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %5, align 8
  %17 = getelementptr inbounds %struct.nvkm_devinit, %struct.nvkm_devinit* %16, i32 0, i32 0
  store %struct.nvkm_subdev* %17, %struct.nvkm_subdev** %8, align 8
  %18 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %19 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %18, i32 0, i32 0
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  store %struct.nvkm_device* %20, %struct.nvkm_device** %9, align 8
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %22 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @nvbios_pll_parse(i32 %23, i32 %24, %struct.nvbios_pll* %10)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %15, align 4
  store i32 %29, i32* %4, align 4
  br label %75

30:                                               ; preds = %3
  %31 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @gt215_pll_calc(%struct.nvkm_subdev* %31, %struct.nvbios_pll* %10, i32 %32, i32* %11, i32* %12, i32* %13, i32* %14)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %15, align 4
  store i32 %37, i32* %4, align 4
  br label %75

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %10, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %66 [
    i32 129, label %41
    i32 128, label %41
  ]

41:                                               ; preds = %38, %38
  %42 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %43 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %10, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 0
  %46 = call i32 @nvkm_wr32(%struct.nvkm_device* %42, i64 %45, i32 1342178832)
  %47 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %48 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %10, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* %14, align 4
  %53 = shl i32 %52, 16
  %54 = load i32, i32* %13, align 4
  %55 = shl i32 %54, 8
  %56 = or i32 %53, %55
  %57 = load i32, i32* %11, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @nvkm_mask(%struct.nvkm_device* %47, i32 %51, i32 4194303, i32 %58)
  %60 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %61 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %10, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @nvkm_wr32(%struct.nvkm_device* %60, i64 %63, i32 %64)
  br label %73

66:                                               ; preds = %38
  %67 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @nvkm_warn(%struct.nvkm_subdev* %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %15, align 4
  br label %73

73:                                               ; preds = %66, %41
  %74 = load i32, i32* %15, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %36, %28
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @nvbios_pll_parse(i32, i32, %struct.nvbios_pll*) #1

declare dso_local i32 @gt215_pll_calc(%struct.nvkm_subdev*, %struct.nvbios_pll*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i64, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nvkm_warn(%struct.nvkm_subdev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
