; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vga_switcheroo.c_vga_switcheroo_register_audio_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vga_switcheroo.c_vga_switcheroo_register_audio_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 (%struct.pci_dev*)* }
%struct.pci_dev = type { i32 }
%struct.vga_switcheroo_client_ops = type { i32 (%struct.pci_dev.0*, i32)* }
%struct.pci_dev.0 = type opaque

@VGA_SWITCHEROO_UNKNOWN_ID = common dso_local global i32 0, align 4
@vgasr_mutex = common dso_local global i32 0, align 4
@vgasr_priv = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@ID_BIT_AUDIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vga_switcheroo_register_audio_client(%struct.pci_dev* %0, %struct.vga_switcheroo_client_ops* %1, %struct.pci_dev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.vga_switcheroo_client_ops*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.vga_switcheroo_client_ops* %1, %struct.vga_switcheroo_client_ops** %6, align 8
  store %struct.pci_dev* %2, %struct.pci_dev** %7, align 8
  %9 = load i32, i32* @VGA_SWITCHEROO_UNKNOWN_ID, align 4
  store i32 %9, i32* %8, align 4
  %10 = call i32 @mutex_lock(i32* @vgasr_mutex)
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vgasr_priv, i32 0, i32 1), align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vgasr_priv, i32 0, i32 0), align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)** %15, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %18 = call i32 %16(%struct.pci_dev* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ult i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = call i32 @mutex_unlock(i32* @vgasr_mutex)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %48

25:                                               ; preds = %13
  %26 = load %struct.vga_switcheroo_client_ops*, %struct.vga_switcheroo_client_ops** %6, align 8
  %27 = getelementptr inbounds %struct.vga_switcheroo_client_ops, %struct.vga_switcheroo_client_ops* %26, i32 0, i32 0
  %28 = load i32 (%struct.pci_dev.0*, i32)*, i32 (%struct.pci_dev.0*, i32)** %27, align 8
  %29 = icmp ne i32 (%struct.pci_dev.0*, i32)* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.vga_switcheroo_client_ops*, %struct.vga_switcheroo_client_ops** %6, align 8
  %32 = getelementptr inbounds %struct.vga_switcheroo_client_ops, %struct.vga_switcheroo_client_ops* %31, i32 0, i32 0
  %33 = load i32 (%struct.pci_dev.0*, i32)*, i32 (%struct.pci_dev.0*, i32)** %32, align 8
  %34 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %35 = bitcast %struct.pci_dev* %34 to %struct.pci_dev.0*
  %36 = load i32, i32* %8, align 4
  %37 = call i32 %33(%struct.pci_dev.0* %35, i32 %36)
  br label %38

38:                                               ; preds = %30, %25
  br label %39

39:                                               ; preds = %38, %3
  %40 = call i32 @mutex_unlock(i32* @vgasr_mutex)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %42 = load %struct.vga_switcheroo_client_ops*, %struct.vga_switcheroo_client_ops** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @ID_BIT_AUDIO, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %47 = call i32 @register_client(%struct.pci_dev* %41, %struct.vga_switcheroo_client_ops* %42, i32 %45, %struct.pci_dev* %46, i32 0, i32 1)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %39, %21
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @register_client(%struct.pci_dev*, %struct.vga_switcheroo_client_ops*, i32, %struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
