; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_firmware.c_intel_gvt_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_firmware.c_intel_gvt_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gvt = type { %struct.intel_gvt_firmware, %struct.drm_i915_private*, %struct.intel_gvt_device_info }
%struct.intel_gvt_firmware = type { i8*, i8*, i32 }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32, i32, i32, i32 }
%struct.intel_gvt_device_info = type { i32, i32 }
%struct.gvt_firmware_header = type { i32, i64, i32, i64 }
%struct.firmware = type { i64 }

@PATH_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%s/vid_0x%04x_did_0x%04x_rid_0x%02x.golden_hw_state\00", align 1
@GVT_FIRMWARE_PATH = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"request hw state firmware %s...\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"success.\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"verified.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_gvt_load_firmware(%struct.intel_gvt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_gvt*, align 8
  %4 = alloca %struct.intel_gvt_device_info*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.intel_gvt_firmware*, align 8
  %8 = alloca %struct.gvt_firmware_header*, align 8
  %9 = alloca %struct.firmware*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.intel_gvt* %0, %struct.intel_gvt** %3, align 8
  %13 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %14 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %13, i32 0, i32 2
  store %struct.intel_gvt_device_info* %14, %struct.intel_gvt_device_info** %4, align 8
  %15 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %16 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %15, i32 0, i32 1
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %16, align 8
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %5, align 8
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  store %struct.pci_dev* %21, %struct.pci_dev** %6, align 8
  %22 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %23 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %22, i32 0, i32 0
  store %struct.intel_gvt_firmware* %23, %struct.intel_gvt_firmware** %7, align 8
  %24 = load i32, i32* @PATH_MAX, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kmalloc(i32 %24, i32 %25)
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %147

32:                                               ; preds = %1
  %33 = load %struct.intel_gvt_device_info*, %struct.intel_gvt_device_info** %4, align 8
  %34 = getelementptr inbounds %struct.intel_gvt_device_info, %struct.intel_gvt_device_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kmalloc(i32 %35, i32 %36)
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %32
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @kfree(i8* %41)
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %147

45:                                               ; preds = %32
  %46 = load i8*, i8** %11, align 8
  %47 = load %struct.intel_gvt_firmware*, %struct.intel_gvt_firmware** %7, align 8
  %48 = getelementptr inbounds %struct.intel_gvt_firmware, %struct.intel_gvt_firmware* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load %struct.intel_gvt_device_info*, %struct.intel_gvt_device_info** %4, align 8
  %50 = getelementptr inbounds %struct.intel_gvt_device_info, %struct.intel_gvt_device_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @kmalloc(i32 %51, i32 %52)
  store i8* %53, i8** %11, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %45
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @kfree(i8* %57)
  %59 = load %struct.intel_gvt_firmware*, %struct.intel_gvt_firmware** %7, align 8
  %60 = getelementptr inbounds %struct.intel_gvt_firmware, %struct.intel_gvt_firmware* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @kfree(i8* %61)
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %147

65:                                               ; preds = %45
  %66 = load i8*, i8** %11, align 8
  %67 = load %struct.intel_gvt_firmware*, %struct.intel_gvt_firmware** %7, align 8
  %68 = getelementptr inbounds %struct.intel_gvt_firmware, %struct.intel_gvt_firmware* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load i8*, i8** @GVT_FIRMWARE_PATH, align 8
  %71 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %78 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @sprintf(i8* %69, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %70, i32 %73, i32 %76, i32 %79)
  %81 = load i8*, i8** %10, align 8
  %82 = call i32 (i8*, ...) @gvt_dbg_core(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %81)
  %83 = load i8*, i8** %10, align 8
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %85 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load %struct.pci_dev*, %struct.pci_dev** %86, align 8
  %88 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %87, i32 0, i32 3
  %89 = call i32 @request_firmware(%struct.firmware** %9, i8* %83, i32* %88)
  store i32 %89, i32* %12, align 4
  %90 = load i8*, i8** %10, align 8
  %91 = call i32 @kfree(i8* %90)
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %65
  br label %144

95:                                               ; preds = %65
  %96 = call i32 (i8*, ...) @gvt_dbg_core(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %97 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %98 = load %struct.firmware*, %struct.firmware** %9, align 8
  %99 = call i32 @verify_firmware(%struct.intel_gvt* %97, %struct.firmware* %98)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %141

103:                                              ; preds = %95
  %104 = call i32 (i8*, ...) @gvt_dbg_core(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %105 = load %struct.firmware*, %struct.firmware** %9, align 8
  %106 = getelementptr inbounds %struct.firmware, %struct.firmware* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to %struct.gvt_firmware_header*
  store %struct.gvt_firmware_header* %108, %struct.gvt_firmware_header** %8, align 8
  %109 = load %struct.intel_gvt_firmware*, %struct.intel_gvt_firmware** %7, align 8
  %110 = getelementptr inbounds %struct.intel_gvt_firmware, %struct.intel_gvt_firmware* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.firmware*, %struct.firmware** %9, align 8
  %113 = getelementptr inbounds %struct.firmware, %struct.firmware* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.gvt_firmware_header*, %struct.gvt_firmware_header** %8, align 8
  %116 = getelementptr inbounds %struct.gvt_firmware_header, %struct.gvt_firmware_header* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %114, %117
  %119 = load %struct.gvt_firmware_header*, %struct.gvt_firmware_header** %8, align 8
  %120 = getelementptr inbounds %struct.gvt_firmware_header, %struct.gvt_firmware_header* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @memcpy(i8* %111, i64 %118, i32 %121)
  %123 = load %struct.intel_gvt_firmware*, %struct.intel_gvt_firmware** %7, align 8
  %124 = getelementptr inbounds %struct.intel_gvt_firmware, %struct.intel_gvt_firmware* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.firmware*, %struct.firmware** %9, align 8
  %127 = getelementptr inbounds %struct.firmware, %struct.firmware* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.gvt_firmware_header*, %struct.gvt_firmware_header** %8, align 8
  %130 = getelementptr inbounds %struct.gvt_firmware_header, %struct.gvt_firmware_header* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %128, %131
  %133 = load %struct.gvt_firmware_header*, %struct.gvt_firmware_header** %8, align 8
  %134 = getelementptr inbounds %struct.gvt_firmware_header, %struct.gvt_firmware_header* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @memcpy(i8* %125, i64 %132, i32 %135)
  %137 = load %struct.firmware*, %struct.firmware** %9, align 8
  %138 = call i32 @release_firmware(%struct.firmware* %137)
  %139 = load %struct.intel_gvt_firmware*, %struct.intel_gvt_firmware** %7, align 8
  %140 = getelementptr inbounds %struct.intel_gvt_firmware, %struct.intel_gvt_firmware* %139, i32 0, i32 2
  store i32 1, i32* %140, align 8
  store i32 0, i32* %2, align 4
  br label %147

141:                                              ; preds = %102
  %142 = load %struct.firmware*, %struct.firmware** %9, align 8
  %143 = call i32 @release_firmware(%struct.firmware* %142)
  br label %144

144:                                              ; preds = %141, %94
  %145 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %146 = call i32 @expose_firmware_sysfs(%struct.intel_gvt* %145)
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %144, %103, %56, %40, %29
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @gvt_dbg_core(i8*, ...) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @verify_firmware(%struct.intel_gvt*, %struct.firmware*) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @expose_firmware_sysfs(%struct.intel_gvt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
