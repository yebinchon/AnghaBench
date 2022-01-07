; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_ct.c_intel_guc_ct_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_ct.c_intel_guc_ct_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc_ct = type { %struct.intel_guc_ct_channel }
%struct.intel_guc_ct_channel = type { i32, i32 }
%struct.intel_guc = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"CT: can't open channel %d; err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_guc_ct_init(%struct.intel_guc_ct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_guc_ct*, align 8
  %4 = alloca %struct.intel_guc*, align 8
  %5 = alloca %struct.intel_guc_ct_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_guc_ct* %0, %struct.intel_guc_ct** %3, align 8
  %7 = load %struct.intel_guc_ct*, %struct.intel_guc_ct** %3, align 8
  %8 = call %struct.intel_guc* @ct_to_guc(%struct.intel_guc_ct* %7)
  store %struct.intel_guc* %8, %struct.intel_guc** %4, align 8
  %9 = load %struct.intel_guc_ct*, %struct.intel_guc_ct** %3, align 8
  %10 = getelementptr inbounds %struct.intel_guc_ct, %struct.intel_guc_ct* %9, i32 0, i32 0
  store %struct.intel_guc_ct_channel* %10, %struct.intel_guc_ct_channel** %5, align 8
  %11 = load %struct.intel_guc*, %struct.intel_guc** %4, align 8
  %12 = load %struct.intel_guc_ct_channel*, %struct.intel_guc_ct_channel** %5, align 8
  %13 = call i32 @ctch_init(%struct.intel_guc* %11, %struct.intel_guc_ct_channel* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.intel_guc_ct_channel*, %struct.intel_guc_ct_channel** %5, align 8
  %19 = getelementptr inbounds %struct.intel_guc_ct_channel, %struct.intel_guc_ct_channel* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %32

24:                                               ; preds = %1
  %25 = load %struct.intel_guc_ct_channel*, %struct.intel_guc_ct_channel** %5, align 8
  %26 = getelementptr inbounds %struct.intel_guc_ct_channel, %struct.intel_guc_ct_channel* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @GEM_BUG_ON(i32 %30)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %24, %17
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.intel_guc* @ct_to_guc(%struct.intel_guc_ct*) #1

declare dso_local i32 @ctch_init(%struct.intel_guc*, %struct.intel_guc_ct_channel*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
