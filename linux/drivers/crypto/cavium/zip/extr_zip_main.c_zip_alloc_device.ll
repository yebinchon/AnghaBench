; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/zip/extr_zip_main.c_zip_alloc_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/zip/extr_zip_main.c_zip_alloc_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_device = type { i32 }
%struct.pci_dev = type { i32 }

@MAX_ZIP_DEVICES = common dso_local global i32 0, align 4
@zip_dev = common dso_local global %struct.zip_device** null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.zip_device* (%struct.pci_dev*)* @zip_alloc_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.zip_device* @zip_alloc_device(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.zip_device*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.zip_device*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.zip_device* null, %struct.zip_device** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %19, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @MAX_ZIP_DEVICES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = load %struct.zip_device**, %struct.zip_device*** @zip_dev, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.zip_device*, %struct.zip_device** %11, i64 %13
  %15 = load %struct.zip_device*, %struct.zip_device** %14, align 8
  %16 = icmp ne %struct.zip_device* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  br label %22

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %6

22:                                               ; preds = %17, %6
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MAX_ZIP_DEVICES, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.zip_device* @devm_kzalloc(i32* %28, i32 4, i32 %29)
  store %struct.zip_device* %30, %struct.zip_device** %4, align 8
  br label %31

31:                                               ; preds = %26, %22
  %32 = load %struct.zip_device*, %struct.zip_device** %4, align 8
  %33 = icmp ne %struct.zip_device* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store %struct.zip_device* null, %struct.zip_device** %2, align 8
  br label %45

35:                                               ; preds = %31
  %36 = load %struct.zip_device*, %struct.zip_device** %4, align 8
  %37 = load %struct.zip_device**, %struct.zip_device*** @zip_dev, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.zip_device*, %struct.zip_device** %37, i64 %39
  store %struct.zip_device* %36, %struct.zip_device** %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.zip_device*, %struct.zip_device** %4, align 8
  %43 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.zip_device*, %struct.zip_device** %4, align 8
  store %struct.zip_device* %44, %struct.zip_device** %2, align 8
  br label %45

45:                                               ; preds = %35, %34
  %46 = load %struct.zip_device*, %struct.zip_device** %2, align 8
  ret %struct.zip_device* %46
}

declare dso_local %struct.zip_device* @devm_kzalloc(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
