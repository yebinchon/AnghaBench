; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_dp.c_nvbios_dpcfg_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_dp.c_nvbios_dpcfg_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_dpcfg = type { i32 }

@nvbios_dpcfg_match.vsoff = internal constant [4 x i32] [i32 0, i32 4, i32 7, i32 9], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nvbios_dpcfg_match(%struct.nvkm_bios* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6, i32* %7, i32* %8, %struct.nvbios_dpcfg* %9) #0 {
  %11 = alloca %struct.nvkm_bios*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.nvbios_dpcfg*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %11, align 8
  store i64 %1, i64* %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store %struct.nvbios_dpcfg* %9, %struct.nvbios_dpcfg** %20, align 8
  store i32 255, i32* %21, align 4
  %23 = load i32*, i32** %16, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %24, 48
  br i1 %25, label %26, label %69

26:                                               ; preds = %10
  %27 = load i32, i32* %13, align 4
  %28 = mul nsw i32 %27, 10
  %29 = load i32, i32* %14, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* @nvbios_dpcfg_match.vsoff, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %28, %32
  %34 = load i32, i32* %15, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %21, align 4
  %36 = load i32*, i32** %16, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %37, 64
  br i1 %38, label %39, label %55

39:                                               ; preds = %26
  %40 = load i32*, i32** %16, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp sle i32 %41, 65
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load i32*, i32** %17, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %45, 18
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %49 = load i64, i64* %12, align 8
  %50 = add nsw i64 %49, 17
  %51 = call i32 @nvbios_rd08(%struct.nvkm_bios* %48, i64 %50)
  %52 = mul nsw i32 %51, 40
  %53 = load i32, i32* %21, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %21, align 4
  br label %68

55:                                               ; preds = %43, %39, %26
  %56 = load i32*, i32** %16, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %57, 66
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %61 = load i64, i64* %12, align 8
  %62 = add nsw i64 %61, 17
  %63 = call i32 @nvbios_rd08(%struct.nvkm_bios* %60, i64 %62)
  %64 = mul nsw i32 %63, 10
  %65 = load i32, i32* %21, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %21, align 4
  br label %67

67:                                               ; preds = %59, %55
  br label %68

68:                                               ; preds = %67, %47
  br label %98

69:                                               ; preds = %10
  br label %70

70:                                               ; preds = %96, %69
  %71 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i32, i32* %21, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %21, align 4
  %75 = load i32*, i32** %16, align 8
  %76 = load i32*, i32** %17, align 8
  %77 = load i32*, i32** %18, align 8
  %78 = load i32*, i32** %19, align 8
  %79 = call i64 @nvbios_dpcfg_entry(%struct.nvkm_bios* %71, i64 %72, i32 %74, i32* %75, i32* %76, i32* %77, i32* %78)
  store i64 %79, i64* %22, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %70
  %82 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %83 = load i64, i64* %22, align 8
  %84 = add nsw i64 %83, 0
  %85 = call i32 @nvbios_rd08(%struct.nvkm_bios* %82, i64 %84)
  %86 = load i32, i32* %14, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %81
  %89 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %90 = load i64, i64* %22, align 8
  %91 = add nsw i64 %90, 1
  %92 = call i32 @nvbios_rd08(%struct.nvkm_bios* %89, i64 %91)
  %93 = load i32, i32* %15, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %97

96:                                               ; preds = %88, %81
  br label %70

97:                                               ; preds = %95, %70
  br label %98

98:                                               ; preds = %97, %68
  %99 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %100 = load i64, i64* %12, align 8
  %101 = load i32, i32* %21, align 4
  %102 = load i32*, i32** %16, align 8
  %103 = load i32*, i32** %17, align 8
  %104 = load i32*, i32** %18, align 8
  %105 = load i32*, i32** %19, align 8
  %106 = load %struct.nvbios_dpcfg*, %struct.nvbios_dpcfg** %20, align 8
  %107 = call i64 @nvbios_dpcfg_parse(%struct.nvkm_bios* %99, i64 %100, i32 %101, i32* %102, i32* %103, i32* %104, i32* %105, %struct.nvbios_dpcfg* %106)
  ret i64 %107
}

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i64 @nvbios_dpcfg_entry(%struct.nvkm_bios*, i64, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @nvbios_dpcfg_parse(%struct.nvkm_bios*, i64, i32, i32*, i32*, i32*, i32*, %struct.nvbios_dpcfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
