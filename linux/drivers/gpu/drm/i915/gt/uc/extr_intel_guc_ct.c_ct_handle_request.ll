; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_ct.c_ct_handle_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_ct.c_ct_handle_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc_ct = type { i32, i32, i32 }
%struct.ct_incoming_request = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"CT: dropping request %*ph\0A\00", align 1
@system_unbound_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_guc_ct*, i32*)* @ct_handle_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_handle_request(%struct.intel_guc_ct* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_guc_ct*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ct_incoming_request*, align 8
  %10 = alloca i64, align 8
  store %struct.intel_guc_ct* %0, %struct.intel_guc_ct** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @ct_header_get_len(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ct_header_is_response(i32 %18)
  %20 = call i32 @GEM_BUG_ON(i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = mul nsw i32 4, %21
  %23 = sext i32 %22 to i64
  %24 = add i64 8, %23
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.ct_incoming_request* @kmalloc(i32 %25, i32 %26)
  store %struct.ct_incoming_request* %27, %struct.ct_incoming_request** %9, align 8
  %28 = load %struct.ct_incoming_request*, %struct.ct_incoming_request** %9, align 8
  %29 = icmp ne %struct.ct_incoming_request* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load i32, i32* %8, align 4
  %36 = mul nsw i32 4, %35
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %36, i32* %37)
  store i32 0, i32* %3, align 4
  br label %64

39:                                               ; preds = %2
  %40 = load %struct.ct_incoming_request*, %struct.ct_incoming_request** %9, align 8
  %41 = getelementptr inbounds %struct.ct_incoming_request, %struct.ct_incoming_request* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = mul nsw i32 4, %44
  %46 = call i32 @memcpy(i32 %42, i32* %43, i32 %45)
  %47 = load %struct.intel_guc_ct*, %struct.intel_guc_ct** %4, align 8
  %48 = getelementptr inbounds %struct.intel_guc_ct, %struct.intel_guc_ct* %47, i32 0, i32 1
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  %51 = load %struct.ct_incoming_request*, %struct.ct_incoming_request** %9, align 8
  %52 = getelementptr inbounds %struct.ct_incoming_request, %struct.ct_incoming_request* %51, i32 0, i32 0
  %53 = load %struct.intel_guc_ct*, %struct.intel_guc_ct** %4, align 8
  %54 = getelementptr inbounds %struct.intel_guc_ct, %struct.intel_guc_ct* %53, i32 0, i32 2
  %55 = call i32 @list_add_tail(i32* %52, i32* %54)
  %56 = load %struct.intel_guc_ct*, %struct.intel_guc_ct** %4, align 8
  %57 = getelementptr inbounds %struct.intel_guc_ct, %struct.intel_guc_ct* %56, i32 0, i32 1
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load i32, i32* @system_unbound_wq, align 4
  %61 = load %struct.intel_guc_ct*, %struct.intel_guc_ct** %4, align 8
  %62 = getelementptr inbounds %struct.intel_guc_ct, %struct.intel_guc_ct* %61, i32 0, i32 0
  %63 = call i32 @queue_work(i32 %60, i32* %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %39, %34
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @ct_header_get_len(i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @ct_header_is_response(i32) #1

declare dso_local %struct.ct_incoming_request* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
