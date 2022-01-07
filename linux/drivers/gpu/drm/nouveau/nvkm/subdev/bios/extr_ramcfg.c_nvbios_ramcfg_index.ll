; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_ramcfg.c_nvbios_ramcfg_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_ramcfg.c_nvbios_ramcfg_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }
%struct.bit_entry = type { i32, i32, i64 }
%struct.nvbios_M0203E = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_ramcfg_index(%struct.nvkm_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_bios*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bit_entry, align 8
  %8 = alloca %struct.nvbios_M0203E, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvkm_subdev* %0, %struct.nvkm_subdev** %3, align 8
  %11 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %12 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_bios*, %struct.nvkm_bios** %14, align 8
  store %struct.nvkm_bios* %15, %struct.nvkm_bios** %4, align 8
  %16 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %17 = call i32 @nvbios_ramcfg_strap(%struct.nvkm_subdev* %16)
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %18 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %19 = call i32 @bit_entry(%struct.nvkm_bios* %18, i8 signext 77, %struct.bit_entry* %7)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %62, label %21

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %7, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %7, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %27, 5
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %31 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %7, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 3
  %34 = call i32 @nvbios_rd16(%struct.nvkm_bios* %30, i64 %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %29, %25, %21
  %36 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %7, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %61

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %7, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sge i32 %41, 3
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %7, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %45, 7
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @nvbios_M0203Em(%struct.nvkm_bios* %48, i32 %49, i32* %9, i32* %10, %struct.nvbios_M0203E* %8)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.nvbios_M0203E, %struct.nvbios_M0203E* %8, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %2, align 4
  br label %73

55:                                               ; preds = %47, %43
  %56 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %57 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %7, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  %60 = call i32 @nvbios_rd16(%struct.nvkm_bios* %56, i64 %59)
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %55, %39, %35
  br label %62

62:                                               ; preds = %61, %1
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %67, %68
  %70 = call i32 @nvbios_rd08(%struct.nvkm_bios* %66, i32 %69)
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %65, %62
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %71, %52
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @nvbios_ramcfg_strap(%struct.nvkm_subdev*) #1

declare dso_local i32 @bit_entry(%struct.nvkm_bios*, i8 signext, %struct.bit_entry*) #1

declare dso_local i32 @nvbios_rd16(%struct.nvkm_bios*, i64) #1

declare dso_local i64 @nvbios_M0203Em(%struct.nvkm_bios*, i32, i32*, i32*, %struct.nvbios_M0203E*) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
