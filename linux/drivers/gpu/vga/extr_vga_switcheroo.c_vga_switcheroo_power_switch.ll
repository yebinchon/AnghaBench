; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vga_switcheroo.c_vga_switcheroo_power_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vga_switcheroo.c_vga_switcheroo_power_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (i32, i32)* }
%struct.pci_dev = type { i32 }
%struct.vga_switcheroo_client = type { i32, i32 }

@vgasr_priv = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i32)* @vga_switcheroo_power_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_switcheroo_power_switch(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vga_switcheroo_client*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vgasr_priv, i32 0, i32 0), align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32 (i32, i32)*, i32 (i32, i32)** %7, align 8
  %9 = icmp ne i32 (i32, i32)* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %32

11:                                               ; preds = %2
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = call %struct.vga_switcheroo_client* @find_client_from_pci(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vgasr_priv, i32 0, i32 1), %struct.pci_dev* %12)
  store %struct.vga_switcheroo_client* %13, %struct.vga_switcheroo_client** %5, align 8
  %14 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %5, align 8
  %15 = icmp ne %struct.vga_switcheroo_client* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %32

17:                                               ; preds = %11
  %18 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %5, align 8
  %19 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %32

23:                                               ; preds = %17
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vgasr_priv, i32 0, i32 0), align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (i32, i32)*, i32 (i32, i32)** %25, align 8
  %27 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %5, align 8
  %28 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 %26(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %23, %22, %16, %10
  ret void
}

declare dso_local %struct.vga_switcheroo_client* @find_client_from_pci(i32*, %struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
