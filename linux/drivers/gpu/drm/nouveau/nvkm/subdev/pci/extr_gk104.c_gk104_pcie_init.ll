; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pci/extr_gk104.c_gk104_pcie_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pci/extr_gk104.c_gk104_pcie_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_pci = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"adjusting cap to max speed\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to adjust cap speed\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"adjusting lnkctl to max speed\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to adjust lnkctl speed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_pci*)* @gk104_pcie_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gk104_pcie_init(%struct.nvkm_pci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_pci*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_subdev*, align 8
  store %struct.nvkm_pci* %0, %struct.nvkm_pci** %3, align 8
  %8 = load %struct.nvkm_pci*, %struct.nvkm_pci** %3, align 8
  %9 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %8, i32 0, i32 0
  store %struct.nvkm_subdev* %9, %struct.nvkm_subdev** %7, align 8
  %10 = load %struct.nvkm_pci*, %struct.nvkm_pci** %3, align 8
  %11 = call i32 @gf100_pcie_version(%struct.nvkm_pci* %10)
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

14:                                               ; preds = %1
  %15 = load %struct.nvkm_pci*, %struct.nvkm_pci** %3, align 8
  %16 = call i32 @gk104_pcie_lnkctl_speed(%struct.nvkm_pci* %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.nvkm_pci*, %struct.nvkm_pci** %3, align 8
  %18 = call i32 @gk104_pcie_max_speed(%struct.nvkm_pci* %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.nvkm_pci*, %struct.nvkm_pci** %3, align 8
  %20 = call i32 @gk104_pcie_cap_speed(%struct.nvkm_pci* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %14
  %25 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %26 = call i32 @nvkm_trace(%struct.nvkm_subdev* %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.nvkm_pci*, %struct.nvkm_pci** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @gk104_pcie_set_cap_speed(%struct.nvkm_pci* %27, i32 %28)
  %30 = load %struct.nvkm_pci*, %struct.nvkm_pci** %3, align 8
  %31 = call i32 @gk104_pcie_cap_speed(%struct.nvkm_pci* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %37 = call i32 @nvkm_warn(%struct.nvkm_subdev* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %24
  br label %39

39:                                               ; preds = %38, %14
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %45 = call i32 @nvkm_debug(%struct.nvkm_subdev* %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.nvkm_pci*, %struct.nvkm_pci** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @gk104_pcie_set_lnkctl_speed(%struct.nvkm_pci* %46, i32 %47)
  %49 = load %struct.nvkm_pci*, %struct.nvkm_pci** %3, align 8
  %50 = call i32 @gk104_pcie_lnkctl_speed(%struct.nvkm_pci* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %56 = call i32 @nvkm_error(%struct.nvkm_subdev* %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %43
  br label %58

58:                                               ; preds = %57, %39
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %13
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @gf100_pcie_version(%struct.nvkm_pci*) #1

declare dso_local i32 @gk104_pcie_lnkctl_speed(%struct.nvkm_pci*) #1

declare dso_local i32 @gk104_pcie_max_speed(%struct.nvkm_pci*) #1

declare dso_local i32 @gk104_pcie_cap_speed(%struct.nvkm_pci*) #1

declare dso_local i32 @nvkm_trace(%struct.nvkm_subdev*, i8*) #1

declare dso_local i32 @gk104_pcie_set_cap_speed(%struct.nvkm_pci*, i32) #1

declare dso_local i32 @nvkm_warn(%struct.nvkm_subdev*, i8*) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*) #1

declare dso_local i32 @gk104_pcie_set_lnkctl_speed(%struct.nvkm_pci*, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
