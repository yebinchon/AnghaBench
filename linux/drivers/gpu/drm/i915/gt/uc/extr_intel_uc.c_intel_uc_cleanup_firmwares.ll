; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc.c_intel_uc_cleanup_firmwares.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc.c_intel_uc_cleanup_firmwares.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_uc_cleanup_firmwares(%struct.intel_uc* %0) #0 {
  %2 = alloca %struct.intel_uc*, align 8
  store %struct.intel_uc* %0, %struct.intel_uc** %2, align 8
  %3 = load %struct.intel_uc*, %struct.intel_uc** %2, align 8
  %4 = call i32 @intel_uc_uses_guc(%struct.intel_uc* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %21

7:                                                ; preds = %1
  %8 = load %struct.intel_uc*, %struct.intel_uc** %2, align 8
  %9 = call i64 @intel_uc_uses_huc(%struct.intel_uc* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load %struct.intel_uc*, %struct.intel_uc** %2, align 8
  %13 = getelementptr inbounds %struct.intel_uc, %struct.intel_uc* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i32 @intel_uc_fw_cleanup_fetch(i32* %14)
  br label %16

16:                                               ; preds = %11, %7
  %17 = load %struct.intel_uc*, %struct.intel_uc** %2, align 8
  %18 = getelementptr inbounds %struct.intel_uc, %struct.intel_uc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @intel_uc_fw_cleanup_fetch(i32* %19)
  br label %21

21:                                               ; preds = %16, %6
  ret void
}

declare dso_local i32 @intel_uc_uses_guc(%struct.intel_uc*) #1

declare dso_local i64 @intel_uc_uses_huc(%struct.intel_uc*) #1

declare dso_local i32 @intel_uc_fw_cleanup_fetch(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
