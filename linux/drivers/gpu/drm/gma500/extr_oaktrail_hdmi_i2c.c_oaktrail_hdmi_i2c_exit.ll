; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_hdmi_i2c.c_oaktrail_hdmi_i2c_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_hdmi_i2c.c_oaktrail_hdmi_i2c_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.oaktrail_hdmi_dev = type { %struct.hdmi_i2c_dev* }
%struct.hdmi_i2c_dev = type { i32 }

@oaktrail_hdmi_i2c_adapter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oaktrail_hdmi_i2c_exit(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.oaktrail_hdmi_dev*, align 8
  %4 = alloca %struct.hdmi_i2c_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.oaktrail_hdmi_dev* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.oaktrail_hdmi_dev* %6, %struct.oaktrail_hdmi_dev** %3, align 8
  %7 = call i32 @i2c_del_adapter(i32* @oaktrail_hdmi_i2c_adapter)
  %8 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %3, align 8
  %9 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %8, i32 0, i32 0
  %10 = load %struct.hdmi_i2c_dev*, %struct.hdmi_i2c_dev** %9, align 8
  store %struct.hdmi_i2c_dev* %10, %struct.hdmi_i2c_dev** %4, align 8
  %11 = load %struct.hdmi_i2c_dev*, %struct.hdmi_i2c_dev** %4, align 8
  %12 = call i32 @kfree(%struct.hdmi_i2c_dev* %11)
  %13 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %3, align 8
  %17 = call i32 @free_irq(i32 %15, %struct.oaktrail_hdmi_dev* %16)
  ret void
}

declare dso_local %struct.oaktrail_hdmi_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @kfree(%struct.hdmi_i2c_dev*) #1

declare dso_local i32 @free_irq(i32, %struct.oaktrail_hdmi_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
