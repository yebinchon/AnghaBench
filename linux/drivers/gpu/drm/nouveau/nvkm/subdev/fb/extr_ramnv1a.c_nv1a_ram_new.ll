; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramnv1a.c_nv1a_ram_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramnv1a.c_nv1a_ram_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nvkm_ram = type { i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"no bridge device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@nv04_ram_func = common dso_local global i32 0, align 4
@NVKM_RAM_TYPE_STOLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv1a_ram_new(%struct.nvkm_fb* %0, %struct.nvkm_ram** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_fb*, align 8
  %5 = alloca %struct.nvkm_ram**, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_dev*, align 8
  store %struct.nvkm_fb* %0, %struct.nvkm_fb** %4, align 8
  store %struct.nvkm_ram** %1, %struct.nvkm_ram*** %5, align 8
  store i32 0, i32* %9, align 4
  store %struct.pci_dev* null, %struct.pci_dev** %10, align 8
  %11 = load %struct.nvkm_fb*, %struct.nvkm_fb** %4, align 8
  %12 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @dev_is_pci(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.nvkm_fb*, %struct.nvkm_fb** %4, align 8
  %21 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.pci_dev* @to_pci_dev(i32 %25)
  store %struct.pci_dev* %26, %struct.pci_dev** %10, align 8
  br label %27

27:                                               ; preds = %19, %2
  %28 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %29 = icmp ne %struct.pci_dev* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pci_domain_nr(i32 %33)
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %30, %27
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @PCI_DEVFN(i32 0, i32 1)
  %38 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 %36, i32 0, i32 %37)
  store %struct.pci_dev* %38, %struct.pci_dev** %6, align 8
  %39 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %40 = icmp ne %struct.pci_dev* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.nvkm_fb*, %struct.nvkm_fb** %4, align 8
  %43 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %42, i32 0, i32 0
  %44 = call i32 @nvkm_error(%struct.TYPE_4__* %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %77

47:                                               ; preds = %35
  %48 = load %struct.nvkm_fb*, %struct.nvkm_fb** %4, align 8
  %49 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 26
  br i1 %54, label %55, label %62

55:                                               ; preds = %47
  %56 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %57 = call i32 @pci_read_config_dword(%struct.pci_dev* %56, i32 124, i32* %7)
  %58 = load i32, i32* %7, align 4
  %59 = ashr i32 %58, 6
  %60 = and i32 %59, 31
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %69

62:                                               ; preds = %47
  %63 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %64 = call i32 @pci_read_config_dword(%struct.pci_dev* %63, i32 132, i32* %7)
  %65 = load i32, i32* %7, align 4
  %66 = ashr i32 %65, 4
  %67 = and i32 %66, 127
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %62, %55
  %70 = load %struct.nvkm_fb*, %struct.nvkm_fb** %4, align 8
  %71 = load i32, i32* @NVKM_RAM_TYPE_STOLEN, align 4
  %72 = load i32, i32* %8, align 4
  %73 = mul nsw i32 %72, 1024
  %74 = mul nsw i32 %73, 1024
  %75 = load %struct.nvkm_ram**, %struct.nvkm_ram*** %5, align 8
  %76 = call i32 @nvkm_ram_new_(i32* @nv04_ram_func, %struct.nvkm_fb* %70, i32 %71, i32 %74, %struct.nvkm_ram** %75)
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %69, %41
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @dev_is_pci(i32) #1

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_domain_nr(i32) #1

declare dso_local %struct.pci_dev* @pci_get_domain_bus_and_slot(i32, i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @nvkm_error(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @nvkm_ram_new_(i32*, %struct.nvkm_fb*, i32, i32, %struct.nvkm_ram**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
