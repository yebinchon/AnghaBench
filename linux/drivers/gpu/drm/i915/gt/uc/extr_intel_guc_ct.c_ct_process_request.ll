; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_ct.c_ct_process_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_ct.c_ct_process_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc_ct = type { i32 }
%struct.intel_guc = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"CT: request %x %*ph\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"CT: unexpected request %x %*ph\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_guc_ct*, i32, i32, i32*)* @ct_process_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ct_process_request(%struct.intel_guc_ct* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.intel_guc_ct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.intel_guc*, align 8
  %10 = alloca i32, align 4
  store %struct.intel_guc_ct* %0, %struct.intel_guc_ct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load %struct.intel_guc_ct*, %struct.intel_guc_ct** %5, align 8
  %12 = call %struct.intel_guc* @ct_to_guc(%struct.intel_guc_ct* %11)
  store %struct.intel_guc* %12, %struct.intel_guc** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = mul nsw i32 4, %14
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @CT_DEBUG_DRIVER(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %15, i32* %16)
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %29 [
    i32 128, label %19
  ]

19:                                               ; preds = %4
  %20 = load %struct.intel_guc*, %struct.intel_guc** %9, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @intel_guc_to_host_process_recv_msg(%struct.intel_guc* %20, i32* %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @unlikely(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %30

28:                                               ; preds = %19
  br label %36

29:                                               ; preds = %4
  br label %30

30:                                               ; preds = %29, %27
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = mul nsw i32 4, %32
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %33, i32* %34)
  br label %36

36:                                               ; preds = %30, %28
  ret void
}

declare dso_local %struct.intel_guc* @ct_to_guc(%struct.intel_guc_ct*) #1

declare dso_local i32 @CT_DEBUG_DRIVER(i8*, i32, i32, i32*) #1

declare dso_local i32 @intel_guc_to_host_process_recv_msg(%struct.intel_guc*, i32*, i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
