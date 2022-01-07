; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_drv.c_vmw_pm_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_drv.c_vmw_pm_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pci_dev = type { i32 }
%struct.drm_device = type { i32 }
%struct.vmw_private = type { i32, i64, i32, i64, i32, i32 }

@SVGA_REG_ID = common dso_local global i32 0, align 4
@SVGA_ID_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @vmw_pm_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_pm_restore(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.vmw_private*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.pci_dev* @to_pci_dev(%struct.device* %8)
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call %struct.drm_device* @pci_get_drvdata(%struct.pci_dev* %10)
  store %struct.drm_device* %11, %struct.drm_device** %5, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = call %struct.vmw_private* @vmw_priv(%struct.drm_device* %12)
  store %struct.vmw_private* %13, %struct.vmw_private** %6, align 8
  %14 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %15 = load i32, i32* @SVGA_REG_ID, align 4
  %16 = load i32, i32* @SVGA_ID_2, align 4
  %17 = call i32 @vmw_write(%struct.vmw_private* %14, i32 %15, i32 %16)
  %18 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %19 = load i32, i32* @SVGA_REG_ID, align 4
  %20 = call i32 @vmw_read(%struct.vmw_private* %18, i32 %19)
  %21 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %22 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %27 = call i32 @vmw_fifo_resource_inc(%struct.vmw_private* %26)
  br label %28

28:                                               ; preds = %25, %1
  %29 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %30 = call i32 @vmw_request_device(%struct.vmw_private* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %71

35:                                               ; preds = %28
  %36 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %37 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %42 = call i32 @__vmw_svga_enable(%struct.vmw_private* %41)
  br label %43

43:                                               ; preds = %40, %35
  %44 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %45 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @vmw_fence_fifo_up(i32 %46)
  %48 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %49 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %51 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %50, i32 0, i32 4
  %52 = call i32 @ttm_suspend_unlock(i32* %51)
  %53 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %54 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %43
  %58 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %59 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @vmw_kms_resume(i32 %60)
  br label %62

62:                                               ; preds = %57, %43
  %63 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %64 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %69 = call i32 @vmw_fb_on(%struct.vmw_private* %68)
  br label %70

70:                                               ; preds = %67, %62
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %33
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local %struct.drm_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.vmw_private* @vmw_priv(%struct.drm_device*) #1

declare dso_local i32 @vmw_write(%struct.vmw_private*, i32, i32) #1

declare dso_local i32 @vmw_read(%struct.vmw_private*, i32) #1

declare dso_local i32 @vmw_fifo_resource_inc(%struct.vmw_private*) #1

declare dso_local i32 @vmw_request_device(%struct.vmw_private*) #1

declare dso_local i32 @__vmw_svga_enable(%struct.vmw_private*) #1

declare dso_local i32 @vmw_fence_fifo_up(i32) #1

declare dso_local i32 @ttm_suspend_unlock(i32*) #1

declare dso_local i32 @vmw_kms_resume(i32) #1

declare dso_local i32 @vmw_fb_on(%struct.vmw_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
