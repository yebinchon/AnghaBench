; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramnv40.c_nv40_ram_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramnv40.c_nv40_ram_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ram = type { i32 }
%struct.nv40_ram = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }
%struct.nvbios_pll = type { i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"mclk pll data not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_ram*, i32)* @nv40_ram_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv40_ram_calc(%struct.nvkm_ram* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_ram*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nv40_ram*, align 8
  %7 = alloca %struct.nvkm_subdev*, align 8
  %8 = alloca %struct.nvkm_bios*, align 8
  %9 = alloca %struct.nvbios_pll, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nvkm_ram* %0, %struct.nvkm_ram** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %17 = call %struct.nv40_ram* @nv40_ram(%struct.nvkm_ram* %16)
  store %struct.nv40_ram* %17, %struct.nv40_ram** %6, align 8
  %18 = load %struct.nv40_ram*, %struct.nv40_ram** %6, align 8
  %19 = getelementptr inbounds %struct.nv40_ram, %struct.nv40_ram* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store %struct.nvkm_subdev* %22, %struct.nvkm_subdev** %7, align 8
  %23 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %24 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.nvkm_bios*, %struct.nvkm_bios** %26, align 8
  store %struct.nvkm_bios* %27, %struct.nvkm_bios** %8, align 8
  %28 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %29 = call i32 @nvbios_pll_parse(%struct.nvkm_bios* %28, i32 4, %struct.nvbios_pll* %9)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %34 = call i32 @nvkm_error(%struct.nvkm_subdev* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %15, align 4
  store i32 %35, i32* %3, align 4
  br label %96

36:                                               ; preds = %2
  %37 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @nv04_pll_calc(%struct.nvkm_subdev* %37, %struct.nvbios_pll* %9, i32 %38, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %15, align 4
  store i32 %43, i32* %3, align 4
  br label %96

44:                                               ; preds = %36
  %45 = load i32, i32* %14, align 4
  %46 = shl i32 %45, 16
  %47 = or i32 -2147483648, %46
  %48 = load %struct.nv40_ram*, %struct.nv40_ram** %6, align 8
  %49 = getelementptr inbounds %struct.nv40_ram, %struct.nv40_ram* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %9, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %9, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @min(i64 %54, i32 %57)
  %59 = shl i32 %58, 20
  %60 = load %struct.nv40_ram*, %struct.nv40_ram** %6, align 8
  %61 = getelementptr inbounds %struct.nv40_ram, %struct.nv40_ram* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %44
  %68 = load %struct.nv40_ram*, %struct.nv40_ram** %6, align 8
  %69 = getelementptr inbounds %struct.nv40_ram, %struct.nv40_ram* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, 256
  store i32 %71, i32* %69, align 8
  %72 = load i32, i32* %10, align 4
  %73 = shl i32 %72, 8
  %74 = load i32, i32* %11, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.nv40_ram*, %struct.nv40_ram** %6, align 8
  %77 = getelementptr inbounds %struct.nv40_ram, %struct.nv40_ram* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %95

78:                                               ; preds = %44
  %79 = load %struct.nv40_ram*, %struct.nv40_ram** %6, align 8
  %80 = getelementptr inbounds %struct.nv40_ram, %struct.nv40_ram* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, 1073741824
  store i32 %82, i32* %80, align 8
  %83 = load i32, i32* %12, align 4
  %84 = shl i32 %83, 24
  %85 = load i32, i32* %13, align 4
  %86 = shl i32 %85, 16
  %87 = or i32 %84, %86
  %88 = load i32, i32* %10, align 4
  %89 = shl i32 %88, 8
  %90 = or i32 %87, %89
  %91 = load i32, i32* %11, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.nv40_ram*, %struct.nv40_ram** %6, align 8
  %94 = getelementptr inbounds %struct.nv40_ram, %struct.nv40_ram* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %78, %67
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %42, %32
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.nv40_ram* @nv40_ram(%struct.nvkm_ram*) #1

declare dso_local i32 @nvbios_pll_parse(%struct.nvkm_bios*, i32, %struct.nvbios_pll*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*) #1

declare dso_local i32 @nv04_pll_calc(%struct.nvkm_subdev*, %struct.nvbios_pll*, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @min(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
