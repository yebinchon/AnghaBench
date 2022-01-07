; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_isr.c_adf_free_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_isr.c_adf_free_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf_accel_dev = type { %struct.adf_etr_data*, %struct.adf_hw_device_data*, %struct.adf_accel_pci }
%struct.adf_etr_data = type { %struct.adf_accel_dev* }
%struct.adf_hw_device_data = type { i32 }
%struct.adf_accel_pci = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.msix_entry* }
%struct.msix_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adf_accel_dev*)* @adf_free_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adf_free_irqs(%struct.adf_accel_dev* %0) #0 {
  %2 = alloca %struct.adf_accel_dev*, align 8
  %3 = alloca %struct.adf_accel_pci*, align 8
  %4 = alloca %struct.adf_hw_device_data*, align 8
  %5 = alloca %struct.msix_entry*, align 8
  %6 = alloca %struct.adf_etr_data*, align 8
  %7 = alloca i32, align 4
  store %struct.adf_accel_dev* %0, %struct.adf_accel_dev** %2, align 8
  %8 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %9 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %8, i32 0, i32 2
  store %struct.adf_accel_pci* %9, %struct.adf_accel_pci** %3, align 8
  %10 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %11 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %10, i32 0, i32 1
  %12 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %11, align 8
  store %struct.adf_hw_device_data* %12, %struct.adf_hw_device_data** %4, align 8
  %13 = load %struct.adf_accel_pci*, %struct.adf_accel_pci** %3, align 8
  %14 = getelementptr inbounds %struct.adf_accel_pci, %struct.adf_accel_pci* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.msix_entry*, %struct.msix_entry** %15, align 8
  store %struct.msix_entry* %16, %struct.msix_entry** %5, align 8
  %17 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %18 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %17, i32 0, i32 0
  %19 = load %struct.adf_etr_data*, %struct.adf_etr_data** %18, align 8
  store %struct.adf_etr_data* %19, %struct.adf_etr_data** %6, align 8
  store i32 0, i32* %7, align 4
  %20 = load %struct.adf_accel_pci*, %struct.adf_accel_pci** %3, align 8
  %21 = getelementptr inbounds %struct.adf_accel_pci, %struct.adf_accel_pci* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %57

25:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %53, %25
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %4, align 8
  %29 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %26
  %33 = load %struct.msix_entry*, %struct.msix_entry** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %33, i64 %35
  %37 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @irq_set_affinity_hint(i32 %38, i32* null)
  %40 = load %struct.msix_entry*, %struct.msix_entry** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %40, i64 %42
  %44 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.adf_etr_data*, %struct.adf_etr_data** %6, align 8
  %47 = getelementptr inbounds %struct.adf_etr_data, %struct.adf_etr_data* %46, i32 0, i32 0
  %48 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %48, i64 %50
  %52 = call i32 @free_irq(i32 %45, %struct.adf_accel_dev* %51)
  br label %53

53:                                               ; preds = %32
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %26

56:                                               ; preds = %26
  br label %57

57:                                               ; preds = %56, %1
  %58 = load %struct.msix_entry*, %struct.msix_entry** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %58, i64 %60
  %62 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @irq_set_affinity_hint(i32 %63, i32* null)
  %65 = load %struct.msix_entry*, %struct.msix_entry** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %65, i64 %67
  %69 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %72 = call i32 @free_irq(i32 %70, %struct.adf_accel_dev* %71)
  ret void
}

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @free_irq(i32, %struct.adf_accel_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
