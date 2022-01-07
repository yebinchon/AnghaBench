; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_ct.c_wait_for_ct_request_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_ct.c_wait_for_ct_request_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_request = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"CT: fence %u err %d\0A\00", align 1
@done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_request*, i32*)* @wait_for_ct_request_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_ct_request_update(%struct.ct_request* %0, i32* %1) #0 {
  %3 = alloca %struct.ct_request*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.ct_request* %0, %struct.ct_request** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.ct_request*, %struct.ct_request** %3, align 8
  %7 = getelementptr inbounds %struct.ct_request, %struct.ct_request* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 (i32, ...) bitcast (i32 (...)* @READ_ONCE to i32 (i32, ...)*)(i32 %8)
  %10 = call i32 (i32, ...) bitcast (i32 (...)* @INTEL_GUC_MSG_IS_RESPONSE to i32 (i32, ...)*)(i32 %9)
  %11 = call i32 @wait_for_us(i32 %10, i32 10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.ct_request*, %struct.ct_request** %3, align 8
  %16 = getelementptr inbounds %struct.ct_request, %struct.ct_request* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i32, ...) bitcast (i32 (...)* @READ_ONCE to i32 (i32, ...)*)(i32 %17)
  %19 = call i32 (i32, ...) bitcast (i32 (...)* @INTEL_GUC_MSG_IS_RESPONSE to i32 (i32, ...)*)(i32 %18)
  %20 = call i32 @wait_for(i32 %19, i32 10)
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %14, %2
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %struct.ct_request*, %struct.ct_request** %3, align 8
  %27 = getelementptr inbounds %struct.ct_request, %struct.ct_request* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %25, %21
  %32 = load %struct.ct_request*, %struct.ct_request** %3, align 8
  %33 = getelementptr inbounds %struct.ct_request, %struct.ct_request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %4, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @wait_for_us(i32, i32) #1

declare dso_local i32 @INTEL_GUC_MSG_IS_RESPONSE(...) #1

declare dso_local i32 @READ_ONCE(...) #1

declare dso_local i32 @wait_for(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
