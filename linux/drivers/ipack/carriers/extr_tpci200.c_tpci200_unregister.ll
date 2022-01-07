; ModuleID = '/home/carl/AnghaBench/linux/drivers/ipack/carriers/extr_tpci200.c_tpci200_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ipack/carriers/extr_tpci200.c_tpci200_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpci200_board = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@TPCI200_IP_INTERFACE_BAR = common dso_local global i32 0, align 4
@TPCI200_IO_ID_INT_SPACES_BAR = common dso_local global i32 0, align 4
@TPCI200_MEM16_SPACE_BAR = common dso_local global i32 0, align 4
@TPCI200_MEM8_SPACE_BAR = common dso_local global i32 0, align 4
@TPCI200_CFG_MEM_BAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tpci200_board*)* @tpci200_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpci200_unregister(%struct.tpci200_board* %0) #0 {
  %2 = alloca %struct.tpci200_board*, align 8
  store %struct.tpci200_board* %0, %struct.tpci200_board** %2, align 8
  %3 = load %struct.tpci200_board*, %struct.tpci200_board** %2, align 8
  %4 = getelementptr inbounds %struct.tpci200_board, %struct.tpci200_board* %3, i32 0, i32 0
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.tpci200_board*, %struct.tpci200_board** %2, align 8
  %11 = bitcast %struct.tpci200_board* %10 to i8*
  %12 = call i32 @free_irq(i32 %9, i8* %11)
  %13 = load %struct.tpci200_board*, %struct.tpci200_board** %2, align 8
  %14 = getelementptr inbounds %struct.tpci200_board, %struct.tpci200_board* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = load %struct.tpci200_board*, %struct.tpci200_board** %2, align 8
  %19 = getelementptr inbounds %struct.tpci200_board, %struct.tpci200_board* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pci_iounmap(%struct.TYPE_7__* %17, i32 %22)
  %24 = load %struct.tpci200_board*, %struct.tpci200_board** %2, align 8
  %25 = getelementptr inbounds %struct.tpci200_board, %struct.tpci200_board* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = load %struct.tpci200_board*, %struct.tpci200_board** %2, align 8
  %30 = getelementptr inbounds %struct.tpci200_board, %struct.tpci200_board* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pci_iounmap(%struct.TYPE_7__* %28, i32 %33)
  %35 = load %struct.tpci200_board*, %struct.tpci200_board** %2, align 8
  %36 = getelementptr inbounds %struct.tpci200_board, %struct.tpci200_board* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load i32, i32* @TPCI200_IP_INTERFACE_BAR, align 4
  %41 = call i32 @pci_release_region(%struct.TYPE_7__* %39, i32 %40)
  %42 = load %struct.tpci200_board*, %struct.tpci200_board** %2, align 8
  %43 = getelementptr inbounds %struct.tpci200_board, %struct.tpci200_board* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = load i32, i32* @TPCI200_IO_ID_INT_SPACES_BAR, align 4
  %48 = call i32 @pci_release_region(%struct.TYPE_7__* %46, i32 %47)
  %49 = load %struct.tpci200_board*, %struct.tpci200_board** %2, align 8
  %50 = getelementptr inbounds %struct.tpci200_board, %struct.tpci200_board* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = load i32, i32* @TPCI200_MEM16_SPACE_BAR, align 4
  %55 = call i32 @pci_release_region(%struct.TYPE_7__* %53, i32 %54)
  %56 = load %struct.tpci200_board*, %struct.tpci200_board** %2, align 8
  %57 = getelementptr inbounds %struct.tpci200_board, %struct.tpci200_board* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load i32, i32* @TPCI200_MEM8_SPACE_BAR, align 4
  %62 = call i32 @pci_release_region(%struct.TYPE_7__* %60, i32 %61)
  %63 = load %struct.tpci200_board*, %struct.tpci200_board** %2, align 8
  %64 = getelementptr inbounds %struct.tpci200_board, %struct.tpci200_board* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = load i32, i32* @TPCI200_CFG_MEM_BAR, align 4
  %69 = call i32 @pci_release_region(%struct.TYPE_7__* %67, i32 %68)
  %70 = load %struct.tpci200_board*, %struct.tpci200_board** %2, align 8
  %71 = getelementptr inbounds %struct.tpci200_board, %struct.tpci200_board* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = call i32 @pci_disable_device(%struct.TYPE_7__* %74)
  %76 = load %struct.tpci200_board*, %struct.tpci200_board** %2, align 8
  %77 = getelementptr inbounds %struct.tpci200_board, %struct.tpci200_board* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = call i32 @pci_dev_put(%struct.TYPE_7__* %80)
  ret void
}

declare dso_local i32 @free_irq(i32, i8*) #1

declare dso_local i32 @pci_iounmap(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @pci_release_region(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.TYPE_7__*) #1

declare dso_local i32 @pci_dev_put(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
