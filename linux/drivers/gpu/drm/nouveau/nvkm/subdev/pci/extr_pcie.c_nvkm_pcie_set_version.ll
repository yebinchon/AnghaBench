; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pci/extr_pcie.c_nvkm_pcie_set_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pci/extr_pcie.c_nvkm_pcie_set_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_pci = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { {}* }

@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"set to version %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_pci*, i32)* @nvkm_pcie_set_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_pcie_set_version(%struct.nvkm_pci* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_pci*, align 8
  %5 = alloca i32, align 4
  store %struct.nvkm_pci* %0, %struct.nvkm_pci** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.nvkm_pci*, %struct.nvkm_pci** %4, align 8
  %7 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to i32 (%struct.nvkm_pci*, i32)**
  %12 = load i32 (%struct.nvkm_pci*, i32)*, i32 (%struct.nvkm_pci*, i32)** %11, align 8
  %13 = icmp ne i32 (%struct.nvkm_pci*, i32)* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOSYS, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %34

17:                                               ; preds = %2
  %18 = load %struct.nvkm_pci*, %struct.nvkm_pci** %4, align 8
  %19 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %18, i32 0, i32 1
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @nvkm_trace(i32* %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.nvkm_pci*, %struct.nvkm_pci** %4, align 8
  %23 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32 (%struct.nvkm_pci*, i32)**
  %28 = load i32 (%struct.nvkm_pci*, i32)*, i32 (%struct.nvkm_pci*, i32)** %27, align 8
  %29 = load %struct.nvkm_pci*, %struct.nvkm_pci** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 %28(%struct.nvkm_pci* %29, i32 %30)
  %32 = load %struct.nvkm_pci*, %struct.nvkm_pci** %4, align 8
  %33 = call i32 @nvkm_pcie_get_version(%struct.nvkm_pci* %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %17, %14
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @nvkm_trace(i32*, i8*, i32) #1

declare dso_local i32 @nvkm_pcie_get_version(%struct.nvkm_pci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
