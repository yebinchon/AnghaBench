; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_pll.c_pll_limits_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_pll.c_pll_limits_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i64 }
%struct.bit_entry = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_bios*, i32*, i32*, i32*, i32*)* @pll_limits_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pll_limits_table(%struct.nvkm_bios* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_bios*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.bit_entry, align 8
  %13 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %15 = call i32 @bit_entry(%struct.nvkm_bios* %14, i8 signext 67, %struct.bit_entry* %12)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %71, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %23, 10
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %27 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 8
  %30 = call i32 @nvbios_rd16(%struct.nvkm_bios* %26, i64 %29)
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %25, %21, %17
  %32 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %37, 4
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %41 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 0
  %44 = call i32 @nvbios_rd32(%struct.nvkm_bios* %40, i64 %43)
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %39, %35, %31
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %45
  %49 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, 0
  %52 = call i32 @nvbios_rd08(%struct.nvkm_bios* %49, i32 %51)
  %53 = load i32*, i32** %8, align 8
  store i32 %52, i32* %53, align 4
  %54 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  %57 = call i32 @nvbios_rd08(%struct.nvkm_bios* %54, i32 %56)
  %58 = load i32*, i32** %9, align 8
  store i32 %57, i32* %58, align 4
  %59 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, 2
  %62 = call i32 @nvbios_rd08(%struct.nvkm_bios* %59, i32 %61)
  %63 = load i32*, i32** %11, align 8
  store i32 %62, i32* %63, align 4
  %64 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 3
  %67 = call i32 @nvbios_rd08(%struct.nvkm_bios* %64, i32 %66)
  %68 = load i32*, i32** %10, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %6, align 4
  br label %98

70:                                               ; preds = %45
  br label %71

71:                                               ; preds = %70, %5
  %72 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %73 = call i32 @bmp_version(%struct.nvkm_bios* %72)
  %74 = icmp sge i32 %73, 1316
  br i1 %74, label %75, label %95

75:                                               ; preds = %71
  %76 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %77 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %78 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 142
  %81 = call i32 @nvbios_rd16(%struct.nvkm_bios* %76, i64 %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %75
  %85 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 0
  %88 = call i32 @nvbios_rd08(%struct.nvkm_bios* %85, i32 %87)
  %89 = load i32*, i32** %8, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32*, i32** %9, align 8
  store i32 1, i32* %90, align 4
  %91 = load i32*, i32** %10, align 8
  store i32 1, i32* %91, align 4
  %92 = load i32*, i32** %11, align 8
  store i32 24, i32* %92, align 4
  %93 = load i32, i32* %13, align 4
  store i32 %93, i32* %6, align 4
  br label %98

94:                                               ; preds = %75
  br label %95

95:                                               ; preds = %94, %71
  %96 = load i32*, i32** %8, align 8
  store i32 0, i32* %96, align 4
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %95, %84, %48
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @bit_entry(%struct.nvkm_bios*, i8 signext, %struct.bit_entry*) #1

declare dso_local i32 @nvbios_rd16(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvbios_rd32(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @bmp_version(%struct.nvkm_bios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
