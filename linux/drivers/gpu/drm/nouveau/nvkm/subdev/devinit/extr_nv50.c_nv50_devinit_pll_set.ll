; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_nv50.c_nv50_devinit_pll_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_nv50.c_nv50_devinit_pll_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_devinit = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }
%struct.nvbios_pll = type { i32, i32, i64 }

@.str = private unnamed_addr constant [33 x i8] c"failed to retrieve pll data, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed pll calculation\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_devinit_pll_set(%struct.nvkm_devinit* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_devinit*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_subdev*, align 8
  %9 = alloca %struct.nvkm_device*, align 8
  %10 = alloca %struct.nvkm_bios*, align 8
  %11 = alloca %struct.nvbios_pll, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nvkm_devinit* %0, %struct.nvkm_devinit** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %18 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %5, align 8
  %19 = getelementptr inbounds %struct.nvkm_devinit, %struct.nvkm_devinit* %18, i32 0, i32 0
  store %struct.nvkm_subdev* %19, %struct.nvkm_subdev** %8, align 8
  %20 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %21 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %20, i32 0, i32 0
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %21, align 8
  store %struct.nvkm_device* %22, %struct.nvkm_device** %9, align 8
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %24 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %23, i32 0, i32 0
  %25 = load %struct.nvkm_bios*, %struct.nvkm_bios** %24, align 8
  store %struct.nvkm_bios* %25, %struct.nvkm_bios** %10, align 8
  %26 = load %struct.nvkm_bios*, %struct.nvkm_bios** %10, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @nvbios_pll_parse(%struct.nvkm_bios* %26, i32 %27, %struct.nvbios_pll* %11)
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %17, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %33 = load i32, i32* %17, align 4
  %34 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %17, align 4
  store i32 %35, i32* %4, align 4
  br label %119

36:                                               ; preds = %3
  %37 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @nv04_pll_calc(%struct.nvkm_subdev* %37, %struct.nvbios_pll* %11, i32 %38, i32* %12, i32* %13, i32* %14, i32* %15, i32* %16)
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %44 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %119

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %11, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %101 [
    i32 129, label %50
    i32 128, label %50
    i32 130, label %77
  ]

50:                                               ; preds = %47, %47
  %51 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %52 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %11, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 0
  %55 = call i32 @nvkm_wr32(%struct.nvkm_device* %51, i64 %54, i32 268437009)
  %56 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %57 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %11, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 4
  %60 = load i32, i32* %13, align 4
  %61 = shl i32 %60, 16
  %62 = load i32, i32* %12, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @nvkm_mask(%struct.nvkm_device* %56, i64 %59, i32 16711935, i32 %63)
  %65 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %66 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %11, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 8
  %69 = load i32, i32* %16, align 4
  %70 = shl i32 %69, 28
  %71 = load i32, i32* %15, align 4
  %72 = shl i32 %71, 16
  %73 = or i32 %70, %72
  %74 = load i32, i32* %14, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @nvkm_mask(%struct.nvkm_device* %65, i64 %68, i32 2147418367, i32 %75)
  br label %118

77:                                               ; preds = %47
  %78 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %79 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %11, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 0
  %82 = load i32, i32* %16, align 4
  %83 = shl i32 %82, 22
  %84 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %11, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 19
  %87 = or i32 %83, %86
  %88 = load i32, i32* %16, align 4
  %89 = shl i32 %88, 16
  %90 = or i32 %87, %89
  %91 = call i32 @nvkm_mask(%struct.nvkm_device* %78, i64 %81, i32 33488896, i32 %90)
  %92 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %93 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %11, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 4
  %96 = load i32, i32* %12, align 4
  %97 = shl i32 %96, 8
  %98 = load i32, i32* %13, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @nvkm_wr32(%struct.nvkm_device* %92, i64 %95, i32 %99)
  br label %118

101:                                              ; preds = %47
  %102 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %103 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %11, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, 0
  %106 = load i32, i32* %16, align 4
  %107 = shl i32 %106, 16
  %108 = call i32 @nvkm_mask(%struct.nvkm_device* %102, i64 %105, i32 458752, i32 %107)
  %109 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %110 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %11, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, 4
  %113 = load i32, i32* %12, align 4
  %114 = shl i32 %113, 8
  %115 = load i32, i32* %13, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @nvkm_wr32(%struct.nvkm_device* %109, i64 %112, i32 %116)
  br label %118

118:                                              ; preds = %101, %77, %50
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %118, %42, %31
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @nvbios_pll_parse(%struct.nvkm_bios*, i32, %struct.nvbios_pll*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, ...) #1

declare dso_local i32 @nv04_pll_calc(%struct.nvkm_subdev*, %struct.nvbios_pll*, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i64, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
