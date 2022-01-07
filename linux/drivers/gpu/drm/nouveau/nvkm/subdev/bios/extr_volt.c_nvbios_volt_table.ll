; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_volt.c_nvbios_volt_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_volt.c_nvbios_volt_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.bit_entry = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nvbios_volt_table(%struct.nvkm_bios* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.nvkm_bios*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.bit_entry, align 8
  %13 = alloca i64, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 0, i64* %13, align 8
  %14 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %15 = call i32 @bit_entry(%struct.nvkm_bios* %14, i8 signext 80, %struct.bit_entry* %12)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %98, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %23 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 12
  %26 = call i64 @nvbios_rd32(%struct.nvkm_bios* %22, i64 %25)
  store i64 %26, i64* %13, align 8
  br label %38

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %33 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %12, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 16
  %36 = call i64 @nvbios_rd32(%struct.nvkm_bios* %32, i64 %35)
  store i64 %36, i64* %13, align 8
  br label %37

37:                                               ; preds = %31, %27
  br label %38

38:                                               ; preds = %37, %21
  %39 = load i64, i64* %13, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %97

41:                                               ; preds = %38
  %42 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %43 = load i64, i64* %13, align 8
  %44 = add nsw i64 %43, 0
  %45 = call i32 @nvbios_rd08(%struct.nvkm_bios* %42, i64 %44)
  %46 = load i32*, i32** %8, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %96 [
    i32 18, label %49
    i32 32, label %62
    i32 48, label %79
    i32 64, label %79
    i32 80, label %79
  ]

49:                                               ; preds = %41
  %50 = load i32*, i32** %9, align 8
  store i32 5, i32* %50, align 4
  %51 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %52 = load i64, i64* %13, align 8
  %53 = add nsw i64 %52, 2
  %54 = call i32 @nvbios_rd08(%struct.nvkm_bios* %51, i64 %53)
  %55 = load i32*, i32** %10, align 8
  store i32 %54, i32* %55, align 4
  %56 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %57 = load i64, i64* %13, align 8
  %58 = add nsw i64 %57, 1
  %59 = call i32 @nvbios_rd08(%struct.nvkm_bios* %56, i64 %58)
  %60 = load i32*, i32** %11, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i64, i64* %13, align 8
  store i64 %61, i64* %6, align 8
  br label %99

62:                                               ; preds = %41
  %63 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %64 = load i64, i64* %13, align 8
  %65 = add nsw i64 %64, 1
  %66 = call i32 @nvbios_rd08(%struct.nvkm_bios* %63, i64 %65)
  %67 = load i32*, i32** %9, align 8
  store i32 %66, i32* %67, align 4
  %68 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %69 = load i64, i64* %13, align 8
  %70 = add nsw i64 %69, 2
  %71 = call i32 @nvbios_rd08(%struct.nvkm_bios* %68, i64 %70)
  %72 = load i32*, i32** %10, align 8
  store i32 %71, i32* %72, align 4
  %73 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %74 = load i64, i64* %13, align 8
  %75 = add nsw i64 %74, 3
  %76 = call i32 @nvbios_rd08(%struct.nvkm_bios* %73, i64 %75)
  %77 = load i32*, i32** %11, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i64, i64* %13, align 8
  store i64 %78, i64* %6, align 8
  br label %99

79:                                               ; preds = %41, %41, %41
  %80 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %81 = load i64, i64* %13, align 8
  %82 = add nsw i64 %81, 1
  %83 = call i32 @nvbios_rd08(%struct.nvkm_bios* %80, i64 %82)
  %84 = load i32*, i32** %9, align 8
  store i32 %83, i32* %84, align 4
  %85 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %86 = load i64, i64* %13, align 8
  %87 = add nsw i64 %86, 3
  %88 = call i32 @nvbios_rd08(%struct.nvkm_bios* %85, i64 %87)
  %89 = load i32*, i32** %10, align 8
  store i32 %88, i32* %89, align 4
  %90 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %91 = load i64, i64* %13, align 8
  %92 = add nsw i64 %91, 2
  %93 = call i32 @nvbios_rd08(%struct.nvkm_bios* %90, i64 %92)
  %94 = load i32*, i32** %11, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i64, i64* %13, align 8
  store i64 %95, i64* %6, align 8
  br label %99

96:                                               ; preds = %41
  br label %97

97:                                               ; preds = %96, %38
  br label %98

98:                                               ; preds = %97, %5
  store i64 0, i64* %6, align 8
  br label %99

99:                                               ; preds = %98, %79, %62, %49
  %100 = load i64, i64* %6, align 8
  ret i64 %100
}

declare dso_local i32 @bit_entry(%struct.nvkm_bios*, i8 signext, %struct.bit_entry*) #1

declare dso_local i64 @nvbios_rd32(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
