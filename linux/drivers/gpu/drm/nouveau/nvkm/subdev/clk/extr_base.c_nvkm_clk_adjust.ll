; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_base.c_nvkm_clk_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_base.c_nvkm_clk_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }
%struct.nvbios_boostE = type { i32, i32 }
%struct.nvbios_boostS = type { i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_clk*, i32, i64, i64, i32)* @nvkm_clk_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_clk_adjust(%struct.nvkm_clk* %0, i32 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.nvkm_clk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_bios*, align 8
  %12 = alloca %struct.nvbios_boostE, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.nvbios_boostS, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %23 = load %struct.nvkm_clk*, %struct.nvkm_clk** %6, align 8
  %24 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.nvkm_bios*, %struct.nvkm_bios** %27, align 8
  store %struct.nvkm_bios* %28, %struct.nvkm_bios** %11, align 8
  %29 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @nvbios_boostEm(%struct.nvkm_bios* %29, i64 %30, i64* %13, i64* %14, i64* %15, i64* %16, %struct.nvbios_boostE* %12)
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %84

34:                                               ; preds = %5
  store i64 0, i64* %19, align 8
  %35 = getelementptr inbounds %struct.nvbios_boostE, %struct.nvbios_boostE* %12, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @max(i32 %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = getelementptr inbounds %struct.nvbios_boostE, %struct.nvbios_boostE* %12, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @min(i32 %40, i32 %41)
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %80, %34
  %44 = load i64, i64* %13, align 8
  store i64 %44, i64* %20, align 8
  %45 = load i64, i64* %14, align 8
  store i64 %45, i64* %21, align 8
  %46 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %47 = load i64, i64* %19, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %19, align 8
  %49 = trunc i64 %47 to i32
  %50 = load i32, i32* %17, align 4
  %51 = load i64, i64* %15, align 8
  %52 = load i64, i64* %16, align 8
  %53 = call i32 @nvbios_boostSp(%struct.nvkm_bios* %46, i32 %49, i32 %50, i64* %20, i64* %21, i64 %51, i64 %52, %struct.nvbios_boostS* %18)
  store i32 %53, i32* %22, align 4
  %54 = load i32, i32* %22, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.nvbios_boostS, %struct.nvbios_boostS* %18, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  %66 = getelementptr inbounds %struct.nvbios_boostS, %struct.nvbios_boostS* %18, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = mul nsw i32 %65, %67
  %69 = sdiv i32 %68, 100
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %64, %61
  %71 = getelementptr inbounds %struct.nvbios_boostS, %struct.nvbios_boostS* %18, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @max(i32 %72, i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = getelementptr inbounds %struct.nvbios_boostS, %struct.nvbios_boostS* %18, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @min(i32 %76, i32 %77)
  store i32 %78, i32* %10, align 4
  br label %83

79:                                               ; preds = %56, %43
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %22, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %43, label %83

83:                                               ; preds = %80, %70
  br label %84

84:                                               ; preds = %83, %5
  %85 = load i32, i32* %10, align 4
  ret i32 %85
}

declare dso_local i32 @nvbios_boostEm(%struct.nvkm_bios*, i64, i64*, i64*, i64*, i64*, %struct.nvbios_boostE*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @nvbios_boostSp(%struct.nvkm_bios*, i32, i32, i64*, i64*, i64, i64, %struct.nvbios_boostS*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
