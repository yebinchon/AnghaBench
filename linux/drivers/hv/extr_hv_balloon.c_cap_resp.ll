; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv_balloon.c_cap_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv_balloon.c_cap_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_dynmem_device = type { i32, i32 }
%struct.dm_capabilities_resp_msg = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Capabilities not accepted by host\0A\00", align 1
@DM_INIT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hv_dynmem_device*, %struct.dm_capabilities_resp_msg*)* @cap_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cap_resp(%struct.hv_dynmem_device* %0, %struct.dm_capabilities_resp_msg* %1) #0 {
  %3 = alloca %struct.hv_dynmem_device*, align 8
  %4 = alloca %struct.dm_capabilities_resp_msg*, align 8
  store %struct.hv_dynmem_device* %0, %struct.hv_dynmem_device** %3, align 8
  store %struct.dm_capabilities_resp_msg* %1, %struct.dm_capabilities_resp_msg** %4, align 8
  %5 = load %struct.dm_capabilities_resp_msg*, %struct.dm_capabilities_resp_msg** %4, align 8
  %6 = getelementptr inbounds %struct.dm_capabilities_resp_msg, %struct.dm_capabilities_resp_msg* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @DM_INIT_ERROR, align 4
  %12 = load %struct.hv_dynmem_device*, %struct.hv_dynmem_device** %3, align 8
  %13 = getelementptr inbounds %struct.hv_dynmem_device, %struct.hv_dynmem_device* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  br label %14

14:                                               ; preds = %9, %2
  %15 = load %struct.hv_dynmem_device*, %struct.hv_dynmem_device** %3, align 8
  %16 = getelementptr inbounds %struct.hv_dynmem_device, %struct.hv_dynmem_device* %15, i32 0, i32 0
  %17 = call i32 @complete(i32* %16)
  ret void
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
