; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-eg20t.c_pch_i2c_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-eg20t.c_pch_i2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.adapter_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pch_i2c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_i2c_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.adapter_info* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.adapter_info* %6, %struct.adapter_info** %4, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.adapter_info*, %struct.adapter_info** %4, align 8
  %11 = call i32 @free_irq(i32 %9, %struct.adapter_info* %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %34, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.adapter_info*, %struct.adapter_info** %4, align 8
  %15 = getelementptr inbounds %struct.adapter_info, %struct.adapter_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %12
  %19 = load %struct.adapter_info*, %struct.adapter_info** %4, align 8
  %20 = getelementptr inbounds %struct.adapter_info, %struct.adapter_info* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = call i32 @pch_i2c_disbl_int(%struct.TYPE_2__* %24)
  %26 = load %struct.adapter_info*, %struct.adapter_info** %4, align 8
  %27 = getelementptr inbounds %struct.adapter_info, %struct.adapter_info* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = call i32 @i2c_del_adapter(i32* %32)
  br label %34

34:                                               ; preds = %18
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %12

37:                                               ; preds = %12
  %38 = load %struct.adapter_info*, %struct.adapter_info** %4, align 8
  %39 = getelementptr inbounds %struct.adapter_info, %struct.adapter_info* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %37
  %46 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %47 = load %struct.adapter_info*, %struct.adapter_info** %4, align 8
  %48 = getelementptr inbounds %struct.adapter_info, %struct.adapter_info* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @pci_iounmap(%struct.pci_dev* %46, i32* %52)
  br label %54

54:                                               ; preds = %45, %37
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %69, %54
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.adapter_info*, %struct.adapter_info** %4, align 8
  %58 = getelementptr inbounds %struct.adapter_info, %struct.adapter_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %55
  %62 = load %struct.adapter_info*, %struct.adapter_info** %4, align 8
  %63 = getelementptr inbounds %struct.adapter_info, %struct.adapter_info* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %61
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %55

72:                                               ; preds = %55
  %73 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %74 = call i32 @pci_release_regions(%struct.pci_dev* %73)
  %75 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %76 = call i32 @pci_disable_device(%struct.pci_dev* %75)
  %77 = load %struct.adapter_info*, %struct.adapter_info** %4, align 8
  %78 = call i32 @kfree(%struct.adapter_info* %77)
  ret void
}

declare dso_local %struct.adapter_info* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @free_irq(i32, %struct.adapter_info*) #1

declare dso_local i32 @pch_i2c_disbl_int(%struct.TYPE_2__*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.adapter_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
