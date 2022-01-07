; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pci/extr_base.c_nvkm_pci_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pci/extr_base.c_nvkm_pci_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_pci = type { i64, %struct.TYPE_4__*, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.nvkm_pci*)* }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nvkm_pci_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_pci_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nvkm_pci*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.nvkm_pci*
  store %struct.nvkm_pci* %10, %struct.nvkm_pci** %6, align 8
  %11 = load %struct.nvkm_pci*, %struct.nvkm_pci** %6, align 8
  %12 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  store %struct.nvkm_device* %14, %struct.nvkm_device** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.nvkm_pci*, %struct.nvkm_pci** %6, align 8
  %16 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %20, i32* %3, align 4
  br label %49

21:                                               ; preds = %2
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %23 = call i32 @nvkm_mc_intr_unarm(%struct.nvkm_device* %22)
  %24 = load %struct.nvkm_pci*, %struct.nvkm_pci** %6, align 8
  %25 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load %struct.nvkm_pci*, %struct.nvkm_pci** %6, align 8
  %30 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (%struct.nvkm_pci*)*, i32 (%struct.nvkm_pci*)** %32, align 8
  %34 = load %struct.nvkm_pci*, %struct.nvkm_pci** %6, align 8
  %35 = call i32 %33(%struct.nvkm_pci* %34)
  br label %36

36:                                               ; preds = %28, %21
  %37 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %38 = call i32 @nvkm_mc_intr(%struct.nvkm_device* %37, i32* %8)
  %39 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %40 = call i32 @nvkm_mc_intr_rearm(%struct.nvkm_device* %39)
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @IRQ_HANDLED, align 4
  br label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @IRQ_NONE, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %19
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @nvkm_mc_intr_unarm(%struct.nvkm_device*) #1

declare dso_local i32 @nvkm_mc_intr(%struct.nvkm_device*, i32*) #1

declare dso_local i32 @nvkm_mc_intr_rearm(%struct.nvkm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
