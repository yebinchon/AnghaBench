; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_ct.c_ctch_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_ct.c_ctch_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc = type { i32 }
%struct.intel_guc_ct_channel = type { i32, i32 }

@INTEL_GUC_CT_BUFFER_TYPE_SEND = common dso_local global i32 0, align 4
@INTEL_GUC_CT_BUFFER_TYPE_RECV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_guc*, %struct.intel_guc_ct_channel*)* @ctch_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctch_disable(%struct.intel_guc* %0, %struct.intel_guc_ct_channel* %1) #0 {
  %3 = alloca %struct.intel_guc*, align 8
  %4 = alloca %struct.intel_guc_ct_channel*, align 8
  store %struct.intel_guc* %0, %struct.intel_guc** %3, align 8
  store %struct.intel_guc_ct_channel* %1, %struct.intel_guc_ct_channel** %4, align 8
  %5 = load %struct.intel_guc_ct_channel*, %struct.intel_guc_ct_channel** %4, align 8
  %6 = getelementptr inbounds %struct.intel_guc_ct_channel, %struct.intel_guc_ct_channel* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @GEM_BUG_ON(i32 %10)
  %12 = load %struct.intel_guc_ct_channel*, %struct.intel_guc_ct_channel** %4, align 8
  %13 = getelementptr inbounds %struct.intel_guc_ct_channel, %struct.intel_guc_ct_channel* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %15 = load %struct.intel_guc_ct_channel*, %struct.intel_guc_ct_channel** %4, align 8
  %16 = getelementptr inbounds %struct.intel_guc_ct_channel, %struct.intel_guc_ct_channel* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @INTEL_GUC_CT_BUFFER_TYPE_SEND, align 4
  %19 = call i32 @guc_action_deregister_ct_buffer(%struct.intel_guc* %14, i32 %17, i32 %18)
  %20 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %21 = load %struct.intel_guc_ct_channel*, %struct.intel_guc_ct_channel** %4, align 8
  %22 = getelementptr inbounds %struct.intel_guc_ct_channel, %struct.intel_guc_ct_channel* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @INTEL_GUC_CT_BUFFER_TYPE_RECV, align 4
  %25 = call i32 @guc_action_deregister_ct_buffer(%struct.intel_guc* %20, i32 %23, i32 %24)
  ret void
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @guc_action_deregister_ct_buffer(%struct.intel_guc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
