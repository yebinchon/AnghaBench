; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_hdmi.c_oaktrail_hdmi_teardown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_hdmi.c_oaktrail_hdmi_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.oaktrail_hdmi_dev* }
%struct.oaktrail_hdmi_dev = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oaktrail_hdmi_teardown(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_psb_private*, align 8
  %4 = alloca %struct.oaktrail_hdmi_dev*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load %struct.drm_psb_private*, %struct.drm_psb_private** %7, align 8
  store %struct.drm_psb_private* %8, %struct.drm_psb_private** %3, align 8
  %9 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %10 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %9, i32 0, i32 0
  %11 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %10, align 8
  store %struct.oaktrail_hdmi_dev* %11, %struct.oaktrail_hdmi_dev** %4, align 8
  %12 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %13 = icmp ne %struct.oaktrail_hdmi_dev* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %16 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %15, i32 0, i32 1
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %5, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = call i32 @pci_set_drvdata(%struct.pci_dev* %18, i32* null)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = call i32 @oaktrail_hdmi_i2c_exit(%struct.pci_dev* %20)
  %22 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %23 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @iounmap(i32 %24)
  %26 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %27 = call i32 @kfree(%struct.oaktrail_hdmi_dev* %26)
  %28 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %29 = call i32 @pci_dev_put(%struct.pci_dev* %28)
  br label %30

30:                                               ; preds = %14, %1
  ret void
}

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @oaktrail_hdmi_i2c_exit(%struct.pci_dev*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.oaktrail_hdmi_dev*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
