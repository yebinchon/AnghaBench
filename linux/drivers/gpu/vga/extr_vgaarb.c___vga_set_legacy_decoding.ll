; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vgaarb.c___vga_set_legacy_decoding.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vgaarb.c___vga_set_legacy_decoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.vga_device = type { i64 }

@VGA_RSRC_LEGACY_MASK = common dso_local global i32 0, align 4
@vga_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i32, i32)* @__vga_set_legacy_decoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__vga_set_legacy_decoding(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vga_device*, align 8
  %8 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @VGA_RSRC_LEGACY_MASK, align 4
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %5, align 4
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @spin_lock_irqsave(i32* @vga_lock, i64 %12)
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = call %struct.vga_device* @vgadev_find(%struct.pci_dev* %14)
  store %struct.vga_device* %15, %struct.vga_device** %7, align 8
  %16 = load %struct.vga_device*, %struct.vga_device** %7, align 8
  %17 = icmp eq %struct.vga_device* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %32

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.vga_device*, %struct.vga_device** %7, align 8
  %24 = getelementptr inbounds %struct.vga_device, %struct.vga_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %32

28:                                               ; preds = %22, %19
  %29 = load %struct.vga_device*, %struct.vga_device** %7, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @vga_update_device_decodes(%struct.vga_device* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %27, %18
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* @vga_lock, i64 %33)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.vga_device* @vgadev_find(%struct.pci_dev*) #1

declare dso_local i32 @vga_update_device_decodes(%struct.vga_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
