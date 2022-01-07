; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_sp-pci.c_sp_get_msix_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_sp-pci.c_sp_get_msix_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sp_device = type { i32, i32, i32, %struct.device*, %struct.sp_pci* }
%struct.device = type { i32 }
%struct.sp_pci = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sp_device*)* @sp_get_msix_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp_get_msix_irqs(%struct.sp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sp_device*, align 8
  %4 = alloca %struct.sp_pci*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sp_device* %0, %struct.sp_device** %3, align 8
  %9 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %10 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %9, i32 0, i32 4
  %11 = load %struct.sp_pci*, %struct.sp_pci** %10, align 8
  store %struct.sp_pci* %11, %struct.sp_pci** %4, align 8
  %12 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %13 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %12, i32 0, i32 3
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.pci_dev* @to_pci_dev(%struct.device* %15)
  store %struct.pci_dev* %16, %struct.pci_dev** %6, align 8
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %33, %1
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.sp_pci*, %struct.sp_pci** %4, align 8
  %20 = getelementptr inbounds %struct.sp_pci, %struct.sp_pci* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %21)
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.sp_pci*, %struct.sp_pci** %4, align 8
  %27 = getelementptr inbounds %struct.sp_pci, %struct.sp_pci* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %25, i32* %32, align 4
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %17

36:                                               ; preds = %17
  %37 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %38 = load %struct.sp_pci*, %struct.sp_pci** %4, align 8
  %39 = getelementptr inbounds %struct.sp_pci, %struct.sp_pci* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @pci_enable_msix_range(%struct.pci_dev* %37, %struct.TYPE_3__* %40, i32 1, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %2, align 4
  br label %83

47:                                               ; preds = %36
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.sp_pci*, %struct.sp_pci** %4, align 8
  %50 = getelementptr inbounds %struct.sp_pci, %struct.sp_pci* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %52 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.sp_pci*, %struct.sp_pci** %4, align 8
  %54 = getelementptr inbounds %struct.sp_pci, %struct.sp_pci* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %60 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.sp_pci*, %struct.sp_pci** %4, align 8
  %62 = getelementptr inbounds %struct.sp_pci, %struct.sp_pci* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %72

65:                                               ; preds = %47
  %66 = load %struct.sp_pci*, %struct.sp_pci** %4, align 8
  %67 = getelementptr inbounds %struct.sp_pci, %struct.sp_pci* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  br label %79

72:                                               ; preds = %47
  %73 = load %struct.sp_pci*, %struct.sp_pci** %4, align 8
  %74 = getelementptr inbounds %struct.sp_pci, %struct.sp_pci* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  br label %79

79:                                               ; preds = %72, %65
  %80 = phi i32 [ %71, %65 ], [ %78, %72 ]
  %81 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %82 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %79, %45
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @pci_enable_msix_range(%struct.pci_dev*, %struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
