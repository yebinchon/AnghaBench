; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_e752x_edac.c_e752x_init_mem_map_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_e752x_edac.c_e752x_init_mem_map_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.e752x_pvt = type { i32* }

@E752X_DRB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.e752x_pvt*)* @e752x_init_mem_map_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e752x_init_mem_map_table(%struct.pci_dev* %0, %struct.e752x_pvt* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.e752x_pvt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.e752x_pvt* %1, %struct.e752x_pvt** %4, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %75, %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %78

12:                                               ; preds = %9
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = load i64, i64* @E752X_DRB, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = call i32 @pci_read_config_byte(%struct.pci_dev* %13, i64 %17, i64* %6)
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %12
  %23 = load %struct.e752x_pvt*, %struct.e752x_pvt** %4, align 8
  %24 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 255, i32* %28, align 4
  %29 = load %struct.e752x_pvt*, %struct.e752x_pvt** %4, align 8
  %30 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  store i32 255, i32* %35, align 4
  br label %74

36:                                               ; preds = %12
  %37 = load i64, i64* %8, align 8
  %38 = trunc i64 %37 to i32
  %39 = load %struct.e752x_pvt*, %struct.e752x_pvt** %4, align 8
  %40 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %38, i32* %44, align 4
  %45 = load i64, i64* %8, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %6, align 8
  store i64 %47, i64* %7, align 8
  %48 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %49 = load i64, i64* @E752X_DRB, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = add nsw i64 %52, 1
  %54 = call i32 @pci_read_config_byte(%struct.pci_dev* %48, i64 %53, i64* %6)
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %36
  br label %61

59:                                               ; preds = %36
  %60 = load i64, i64* %8, align 8
  br label %61

61:                                               ; preds = %59, %58
  %62 = phi i64 [ 255, %58 ], [ %60, %59 ]
  %63 = trunc i64 %62 to i32
  %64 = load %struct.e752x_pvt*, %struct.e752x_pvt** %4, align 8
  %65 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  store i32 %63, i32* %70, align 4
  %71 = load i64, i64* %8, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %6, align 8
  store i64 %73, i64* %7, align 8
  br label %74

74:                                               ; preds = %61, %22
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 2
  store i32 %77, i32* %5, align 4
  br label %9

78:                                               ; preds = %9
  ret void
}

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
