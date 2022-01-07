; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pci/extr_pcie.c_nvkm_pcie_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pci/extr_pcie.c_nvkm_pcie_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_pci = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.nvkm_subdev }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { {}* }
%struct.nvkm_subdev = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"couldn't raise version: %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_pcie_init(%struct.nvkm_pci* %0) #0 {
  %2 = alloca %struct.nvkm_pci*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nvkm_pci* %0, %struct.nvkm_pci** %2, align 8
  %6 = load %struct.nvkm_pci*, %struct.nvkm_pci** %2, align 8
  %7 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %6, i32 0, i32 2
  store %struct.nvkm_subdev* %7, %struct.nvkm_subdev** %3, align 8
  %8 = load %struct.nvkm_pci*, %struct.nvkm_pci** %2, align 8
  %9 = call i32 @nvkm_pcie_get_version(%struct.nvkm_pci* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %1
  %13 = load %struct.nvkm_pci*, %struct.nvkm_pci** %2, align 8
  %14 = call i32 @nvkm_pcie_get_max_version(%struct.nvkm_pci* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.nvkm_pci*, %struct.nvkm_pci** %2, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @nvkm_pcie_set_version(%struct.nvkm_pci* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %21, %17, %12
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @nvkm_error(%struct.nvkm_subdev* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %25
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.nvkm_pci*, %struct.nvkm_pci** %2, align 8
  %36 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = bitcast {}** %39 to i32 (%struct.nvkm_pci*)**
  %41 = load i32 (%struct.nvkm_pci*)*, i32 (%struct.nvkm_pci*)** %40, align 8
  %42 = icmp ne i32 (%struct.nvkm_pci*)* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %34
  %44 = load %struct.nvkm_pci*, %struct.nvkm_pci** %2, align 8
  %45 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = bitcast {}** %48 to i32 (%struct.nvkm_pci*)**
  %50 = load i32 (%struct.nvkm_pci*)*, i32 (%struct.nvkm_pci*)** %49, align 8
  %51 = load %struct.nvkm_pci*, %struct.nvkm_pci** %2, align 8
  %52 = call i32 %50(%struct.nvkm_pci* %51)
  br label %53

53:                                               ; preds = %43, %34
  %54 = load %struct.nvkm_pci*, %struct.nvkm_pci** %2, align 8
  %55 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, -1
  br i1 %58, label %59, label %70

59:                                               ; preds = %53
  %60 = load %struct.nvkm_pci*, %struct.nvkm_pci** %2, align 8
  %61 = load %struct.nvkm_pci*, %struct.nvkm_pci** %2, align 8
  %62 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.nvkm_pci*, %struct.nvkm_pci** %2, align 8
  %66 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @nvkm_pcie_set_link(%struct.nvkm_pci* %60, i32 %64, i32 %68)
  br label %70

70:                                               ; preds = %59, %53
  ret i32 0
}

declare dso_local i32 @nvkm_pcie_get_version(%struct.nvkm_pci*) #1

declare dso_local i32 @nvkm_pcie_get_max_version(%struct.nvkm_pci*) #1

declare dso_local i32 @nvkm_pcie_set_version(%struct.nvkm_pci*, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

declare dso_local i32 @nvkm_pcie_set_link(%struct.nvkm_pci*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
