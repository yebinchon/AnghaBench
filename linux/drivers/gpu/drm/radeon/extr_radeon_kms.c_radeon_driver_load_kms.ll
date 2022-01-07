; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_kms.c_radeon_driver_load_kms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_kms.c_radeon_driver_load_kms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_5__*, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.radeon_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCI_CAP_ID_AGP = common dso_local global i32 0, align 4
@RADEON_IS_AGP = common dso_local global i64 0, align 8
@RADEON_IS_PCIE = common dso_local global i64 0, align 8
@RADEON_IS_PCI = common dso_local global i64 0, align 8
@radeon_runtime_pm = common dso_local global i64 0, align 8
@RADEON_IS_IGP = common dso_local global i64 0, align 8
@RADEON_IS_PX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Fatal error during GPU init\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Fatal error during modeset init\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Error during ACPI methods call\0A\00", align 1
@DPM_FLAG_NEVER_SKIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_driver_load_kms(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.radeon_device* @kzalloc(i32 4, i32 %9)
  store %struct.radeon_device* %10, %struct.radeon_device** %6, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %12 = icmp eq %struct.radeon_device* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %152

16:                                               ; preds = %2
  %17 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %18 = bitcast %struct.radeon_device* %17 to i8*
  %19 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load i32, i32* @PCI_CAP_ID_AGP, align 4
  %25 = call i64 @pci_find_capability(%struct.TYPE_5__* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %16
  %28 = load i64, i64* @RADEON_IS_AGP, align 8
  %29 = load i64, i64* %5, align 8
  %30 = or i64 %29, %28
  store i64 %30, i64* %5, align 8
  br label %46

31:                                               ; preds = %16
  %32 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = call i64 @pci_is_pcie(%struct.TYPE_5__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i64, i64* @RADEON_IS_PCIE, align 8
  %39 = load i64, i64* %5, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* %5, align 8
  br label %45

41:                                               ; preds = %31
  %42 = load i64, i64* @RADEON_IS_PCI, align 8
  %43 = load i64, i64* %5, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %41, %37
  br label %46

46:                                               ; preds = %45, %27
  %47 = load i64, i64* @radeon_runtime_pm, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %46
  %50 = call i64 (...) @radeon_has_atpx()
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @RADEON_IS_IGP, align 8
  %55 = and i64 %53, %54
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %59 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = call i32 @pci_is_thunderbolt_attached(%struct.TYPE_5__* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %57
  %64 = load i64, i64* @RADEON_IS_PX, align 8
  %65 = load i64, i64* %5, align 8
  %66 = or i64 %65, %64
  store i64 %66, i64* %5, align 8
  br label %67

67:                                               ; preds = %63, %57, %52, %49, %46
  %68 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %69 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %70 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %71 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @radeon_device_init(%struct.radeon_device* %68, %struct.drm_device* %69, %struct.TYPE_5__* %72, i64 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %67
  %78 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %79 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = call i32 @dev_err(i32* %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %144

83:                                               ; preds = %67
  %84 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %85 = call i32 @radeon_modeset_init(%struct.radeon_device* %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %90 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %89, i32 0, i32 1
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = call i32 @dev_err(i32* %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %88, %83
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %109, label %97

97:                                               ; preds = %94
  %98 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %99 = call i32 @radeon_acpi_init(%struct.radeon_device* %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %104 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %103, i32 0, i32 1
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = call i32 @dev_dbg(i32* %106, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %108

108:                                              ; preds = %102, %97
  br label %109

109:                                              ; preds = %108, %94
  %110 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %111 = call i64 @radeon_is_px(%struct.drm_device* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %143

113:                                              ; preds = %109
  %114 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %115 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @DPM_FLAG_NEVER_SKIP, align 4
  %118 = call i32 @dev_pm_set_driver_flags(i32 %116, i32 %117)
  %119 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %120 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @pm_runtime_use_autosuspend(i32 %121)
  %123 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %124 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @pm_runtime_set_autosuspend_delay(i32 %125, i32 5000)
  %127 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %128 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @pm_runtime_set_active(i32 %129)
  %131 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %132 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @pm_runtime_allow(i32 %133)
  %135 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %136 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @pm_runtime_mark_last_busy(i32 %137)
  %139 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %140 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @pm_runtime_put_autosuspend(i32 %141)
  br label %143

143:                                              ; preds = %113, %109
  br label %144

144:                                              ; preds = %143, %77
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %149 = call i32 @radeon_driver_unload_kms(%struct.drm_device* %148)
  br label %150

150:                                              ; preds = %147, %144
  %151 = load i32, i32* %7, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %150, %13
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.radeon_device* @kzalloc(i32, i32) #1

declare dso_local i64 @pci_find_capability(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @pci_is_pcie(%struct.TYPE_5__*) #1

declare dso_local i64 @radeon_has_atpx(...) #1

declare dso_local i32 @pci_is_thunderbolt_attached(%struct.TYPE_5__*) #1

declare dso_local i32 @radeon_device_init(%struct.radeon_device*, %struct.drm_device*, %struct.TYPE_5__*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @radeon_modeset_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_acpi_init(%struct.radeon_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i64 @radeon_is_px(%struct.drm_device*) #1

declare dso_local i32 @dev_pm_set_driver_flags(i32, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32, i32) #1

declare dso_local i32 @pm_runtime_set_active(i32) #1

declare dso_local i32 @pm_runtime_allow(i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @radeon_driver_unload_kms(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
