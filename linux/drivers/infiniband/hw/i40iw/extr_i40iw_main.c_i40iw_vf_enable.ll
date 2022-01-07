; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_vf_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_vf_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_info = type { i32 }
%struct.i40e_client = type { i32 }
%struct.i40iw_handler = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@I40IW_MAX_PE_ENABLED_VF_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_info*, %struct.i40e_client*, i64)* @i40iw_vf_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_vf_enable(%struct.i40e_info* %0, %struct.i40e_client* %1, i64 %2) #0 {
  %4 = alloca %struct.i40e_info*, align 8
  %5 = alloca %struct.i40e_client*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.i40iw_handler*, align 8
  store %struct.i40e_info* %0, %struct.i40e_info** %4, align 8
  store %struct.i40e_client* %1, %struct.i40e_client** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.i40e_info*, %struct.i40e_info** %4, align 8
  %9 = call %struct.i40iw_handler* @i40iw_find_i40e_handler(%struct.i40e_info* %8)
  store %struct.i40iw_handler* %9, %struct.i40iw_handler** %7, align 8
  %10 = load %struct.i40iw_handler*, %struct.i40iw_handler** %7, align 8
  %11 = icmp ne %struct.i40iw_handler* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %27

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @I40IW_MAX_PE_ENABLED_VF_COUNT, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i64, i64* @I40IW_MAX_PE_ENABLED_VF_COUNT, align 8
  %19 = load %struct.i40iw_handler*, %struct.i40iw_handler** %7, align 8
  %20 = getelementptr inbounds %struct.i40iw_handler, %struct.i40iw_handler* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  br label %27

22:                                               ; preds = %13
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.i40iw_handler*, %struct.i40iw_handler** %7, align 8
  %25 = getelementptr inbounds %struct.i40iw_handler, %struct.i40iw_handler* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  br label %27

27:                                               ; preds = %12, %22, %17
  ret void
}

declare dso_local %struct.i40iw_handler* @i40iw_find_i40e_handler(%struct.i40e_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
