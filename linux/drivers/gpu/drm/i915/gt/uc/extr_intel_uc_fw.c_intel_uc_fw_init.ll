; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc_fw.c_intel_uc_fw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc_fw.c_intel_uc_fw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uc_fw = type { i32, i32 }

@ENOEXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s fw pin-pages err=%d\0A\00", align 1
@INTEL_UC_FIRMWARE_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_uc_fw_init(%struct.intel_uc_fw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_uc_fw*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_uc_fw* %0, %struct.intel_uc_fw** %3, align 8
  %5 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %3, align 8
  %6 = call i32 @intel_uc_fw_is_loaded(%struct.intel_uc_fw* %5)
  %7 = call i32 @GEM_BUG_ON(i32 %6)
  %8 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %3, align 8
  %9 = call i32 @intel_uc_fw_is_available(%struct.intel_uc_fw* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOEXEC, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %33

14:                                               ; preds = %1
  %15 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %3, align 8
  %16 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @i915_gem_object_pin_pages(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %14
  %22 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %3, align 8
  %23 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @intel_uc_fw_type_repr(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %3, align 8
  %29 = load i32, i32* @INTEL_UC_FIRMWARE_FAIL, align 4
  %30 = call i32 @intel_uc_fw_change_status(%struct.intel_uc_fw* %28, i32 %29)
  br label %31

31:                                               ; preds = %21, %14
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @intel_uc_fw_is_loaded(%struct.intel_uc_fw*) #1

declare dso_local i32 @intel_uc_fw_is_available(%struct.intel_uc_fw*) #1

declare dso_local i32 @i915_gem_object_pin_pages(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32) #1

declare dso_local i32 @intel_uc_fw_type_repr(i32) #1

declare dso_local i32 @intel_uc_fw_change_status(%struct.intel_uc_fw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
