; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vgaarb.c_vga_client_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vgaarb.c_vga_client_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.vga_device = type { void (i8*, i32)*, i32 (i8*, i32)*, i8* }

@ENODEV = common dso_local global i32 0, align 4
@vga_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vga_client_register(%struct.pci_dev* %0, i8* %1, void (i8*, i32)* %2, i32 (i8*, i32)* %3) #0 {
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca void (i8*, i32)*, align 8
  %8 = alloca i32 (i8*, i32)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vga_device*, align 8
  %11 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store void (i8*, i32)* %2, void (i8*, i32)** %7, align 8
  store i32 (i8*, i32)* %3, i32 (i8*, i32)** %8, align 8
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %9, align 4
  %14 = load i64, i64* %11, align 8
  %15 = call i32 @spin_lock_irqsave(i32* @vga_lock, i64 %14)
  %16 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %17 = call %struct.vga_device* @vgadev_find(%struct.pci_dev* %16)
  store %struct.vga_device* %17, %struct.vga_device** %10, align 8
  %18 = load %struct.vga_device*, %struct.vga_device** %10, align 8
  %19 = icmp ne %struct.vga_device* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  br label %31

21:                                               ; preds = %4
  %22 = load void (i8*, i32)*, void (i8*, i32)** %7, align 8
  %23 = load %struct.vga_device*, %struct.vga_device** %10, align 8
  %24 = getelementptr inbounds %struct.vga_device, %struct.vga_device* %23, i32 0, i32 0
  store void (i8*, i32)* %22, void (i8*, i32)** %24, align 8
  %25 = load i32 (i8*, i32)*, i32 (i8*, i32)** %8, align 8
  %26 = load %struct.vga_device*, %struct.vga_device** %10, align 8
  %27 = getelementptr inbounds %struct.vga_device, %struct.vga_device* %26, i32 0, i32 1
  store i32 (i8*, i32)* %25, i32 (i8*, i32)** %27, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.vga_device*, %struct.vga_device** %10, align 8
  %30 = getelementptr inbounds %struct.vga_device, %struct.vga_device* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %21, %20
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* @vga_lock, i64 %32)
  %34 = load i32, i32* %9, align 4
  ret i32 %34
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.vga_device* @vgadev_find(%struct.pci_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
