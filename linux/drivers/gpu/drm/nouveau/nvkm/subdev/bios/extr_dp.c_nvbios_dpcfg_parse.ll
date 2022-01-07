; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_dp.c_nvbios_dpcfg_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_dp.c_nvbios_dpcfg_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_dpcfg = type { i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_dpcfg_parse(%struct.nvkm_bios* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6, %struct.nvbios_dpcfg* %7) #0 {
  %9 = alloca %struct.nvkm_bios*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.nvbios_dpcfg*, align 8
  %17 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store %struct.nvbios_dpcfg* %7, %struct.nvbios_dpcfg** %16, align 8
  %18 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32*, i32** %12, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = load i32*, i32** %14, align 8
  %24 = load i32*, i32** %15, align 8
  %25 = call i32 @nvbios_dpcfg_entry(%struct.nvkm_bios* %18, i32 %19, i32 %20, i32* %21, i32* %22, i32* %23, i32* %24)
  store i32 %25, i32* %17, align 4
  %26 = load %struct.nvbios_dpcfg*, %struct.nvbios_dpcfg** %16, align 8
  %27 = call i32 @memset(%struct.nvbios_dpcfg* %26, i32 0, i32 32)
  %28 = load i32, i32* %17, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %98

30:                                               ; preds = %8
  %31 = load i32*, i32** %12, align 8
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %96 [
    i32 32, label %33
    i32 33, label %33
    i32 48, label %52
    i32 64, label %52
    i32 65, label %52
    i32 66, label %77
  ]

33:                                               ; preds = %30, %30
  %34 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %35 = load i32, i32* %17, align 4
  %36 = add nsw i32 %35, 2
  %37 = call i8* @nvbios_rd08(%struct.nvkm_bios* %34, i32 %36)
  %38 = load %struct.nvbios_dpcfg*, %struct.nvbios_dpcfg** %16, align 8
  %39 = getelementptr inbounds %struct.nvbios_dpcfg, %struct.nvbios_dpcfg* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %41 = load i32, i32* %17, align 4
  %42 = add nsw i32 %41, 3
  %43 = call i8* @nvbios_rd08(%struct.nvkm_bios* %40, i32 %42)
  %44 = load %struct.nvbios_dpcfg*, %struct.nvbios_dpcfg** %16, align 8
  %45 = getelementptr inbounds %struct.nvbios_dpcfg, %struct.nvbios_dpcfg* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %47 = load i32, i32* %17, align 4
  %48 = add nsw i32 %47, 4
  %49 = call i8* @nvbios_rd08(%struct.nvkm_bios* %46, i32 %48)
  %50 = load %struct.nvbios_dpcfg*, %struct.nvbios_dpcfg** %16, align 8
  %51 = getelementptr inbounds %struct.nvbios_dpcfg, %struct.nvbios_dpcfg* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  br label %97

52:                                               ; preds = %30, %30, %30
  %53 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %54 = load i32, i32* %17, align 4
  %55 = add nsw i32 %54, 0
  %56 = call i8* @nvbios_rd08(%struct.nvkm_bios* %53, i32 %55)
  %57 = load %struct.nvbios_dpcfg*, %struct.nvbios_dpcfg** %16, align 8
  %58 = getelementptr inbounds %struct.nvbios_dpcfg, %struct.nvbios_dpcfg* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %60 = load i32, i32* %17, align 4
  %61 = add nsw i32 %60, 1
  %62 = call i8* @nvbios_rd08(%struct.nvkm_bios* %59, i32 %61)
  %63 = load %struct.nvbios_dpcfg*, %struct.nvbios_dpcfg** %16, align 8
  %64 = getelementptr inbounds %struct.nvbios_dpcfg, %struct.nvbios_dpcfg* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %66 = load i32, i32* %17, align 4
  %67 = add nsw i32 %66, 2
  %68 = call i8* @nvbios_rd08(%struct.nvkm_bios* %65, i32 %67)
  %69 = load %struct.nvbios_dpcfg*, %struct.nvbios_dpcfg** %16, align 8
  %70 = getelementptr inbounds %struct.nvbios_dpcfg, %struct.nvbios_dpcfg* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %72, 3
  %74 = call i8* @nvbios_rd08(%struct.nvkm_bios* %71, i32 %73)
  %75 = load %struct.nvbios_dpcfg*, %struct.nvbios_dpcfg** %16, align 8
  %76 = getelementptr inbounds %struct.nvbios_dpcfg, %struct.nvbios_dpcfg* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  br label %97

77:                                               ; preds = %30
  %78 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %79 = load i32, i32* %17, align 4
  %80 = add nsw i32 %79, 0
  %81 = call i8* @nvbios_rd08(%struct.nvkm_bios* %78, i32 %80)
  %82 = load %struct.nvbios_dpcfg*, %struct.nvbios_dpcfg** %16, align 8
  %83 = getelementptr inbounds %struct.nvbios_dpcfg, %struct.nvbios_dpcfg* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %85 = load i32, i32* %17, align 4
  %86 = add nsw i32 %85, 1
  %87 = call i8* @nvbios_rd08(%struct.nvkm_bios* %84, i32 %86)
  %88 = load %struct.nvbios_dpcfg*, %struct.nvbios_dpcfg** %16, align 8
  %89 = getelementptr inbounds %struct.nvbios_dpcfg, %struct.nvbios_dpcfg* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %91 = load i32, i32* %17, align 4
  %92 = add nsw i32 %91, 2
  %93 = call i8* @nvbios_rd08(%struct.nvkm_bios* %90, i32 %92)
  %94 = load %struct.nvbios_dpcfg*, %struct.nvbios_dpcfg** %16, align 8
  %95 = getelementptr inbounds %struct.nvbios_dpcfg, %struct.nvbios_dpcfg* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  br label %97

96:                                               ; preds = %30
  store i32 0, i32* %17, align 4
  br label %97

97:                                               ; preds = %96, %77, %52, %33
  br label %98

98:                                               ; preds = %97, %8
  %99 = load i32, i32* %17, align 4
  ret i32 %99
}

declare dso_local i32 @nvbios_dpcfg_entry(%struct.nvkm_bios*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @memset(%struct.nvbios_dpcfg*, i32, i32) #1

declare dso_local i8* @nvbios_rd08(%struct.nvkm_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
