; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_hfi1_get_rc_ohdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_hfi1_get_rc_ohdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_other_headers = type { i32 }
%struct.hfi1_opa_header = type { i64, %struct.hfi1_16b_header, %struct.ib_header }
%struct.hfi1_16b_header = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.ib_other_headers }
%struct.TYPE_7__ = type { %struct.ib_other_headers }
%struct.ib_header = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.ib_other_headers }
%struct.TYPE_5__ = type { %struct.ib_other_headers }

@HFI1_PKT_TYPE_9B = common dso_local global i64 0, align 8
@HFI1_LRH_BTH = common dso_local global i64 0, align 8
@OPA_16B_L4_IB_LOCAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_other_headers* (%struct.hfi1_opa_header*)* @hfi1_get_rc_ohdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_other_headers* @hfi1_get_rc_ohdr(%struct.hfi1_opa_header* %0) #0 {
  %2 = alloca %struct.hfi1_opa_header*, align 8
  %3 = alloca %struct.ib_other_headers*, align 8
  %4 = alloca %struct.ib_header*, align 8
  %5 = alloca %struct.hfi1_16b_header*, align 8
  %6 = alloca i64, align 8
  store %struct.hfi1_opa_header* %0, %struct.hfi1_opa_header** %2, align 8
  store %struct.ib_header* null, %struct.ib_header** %4, align 8
  store %struct.hfi1_16b_header* null, %struct.hfi1_16b_header** %5, align 8
  %7 = load %struct.hfi1_opa_header*, %struct.hfi1_opa_header** %2, align 8
  %8 = getelementptr inbounds %struct.hfi1_opa_header, %struct.hfi1_opa_header* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @HFI1_PKT_TYPE_9B, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %1
  %13 = load %struct.hfi1_opa_header*, %struct.hfi1_opa_header** %2, align 8
  %14 = getelementptr inbounds %struct.hfi1_opa_header, %struct.hfi1_opa_header* %13, i32 0, i32 2
  store %struct.ib_header* %14, %struct.ib_header** %4, align 8
  %15 = load %struct.ib_header*, %struct.ib_header** %4, align 8
  %16 = call i64 @ib_get_lnh(%struct.ib_header* %15)
  %17 = load i64, i64* @HFI1_LRH_BTH, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load %struct.ib_header*, %struct.ib_header** %4, align 8
  %21 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store %struct.ib_other_headers* %22, %struct.ib_other_headers** %3, align 8
  br label %28

23:                                               ; preds = %12
  %24 = load %struct.ib_header*, %struct.ib_header** %4, align 8
  %25 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store %struct.ib_other_headers* %27, %struct.ib_other_headers** %3, align 8
  br label %28

28:                                               ; preds = %23, %19
  br label %47

29:                                               ; preds = %1
  %30 = load %struct.hfi1_opa_header*, %struct.hfi1_opa_header** %2, align 8
  %31 = getelementptr inbounds %struct.hfi1_opa_header, %struct.hfi1_opa_header* %30, i32 0, i32 1
  store %struct.hfi1_16b_header* %31, %struct.hfi1_16b_header** %5, align 8
  %32 = load %struct.hfi1_16b_header*, %struct.hfi1_16b_header** %5, align 8
  %33 = call i64 @hfi1_16B_get_l4(%struct.hfi1_16b_header* %32)
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @OPA_16B_L4_IB_LOCAL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.hfi1_16b_header*, %struct.hfi1_16b_header** %5, align 8
  %39 = getelementptr inbounds %struct.hfi1_16b_header, %struct.hfi1_16b_header* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  store %struct.ib_other_headers* %40, %struct.ib_other_headers** %3, align 8
  br label %46

41:                                               ; preds = %29
  %42 = load %struct.hfi1_16b_header*, %struct.hfi1_16b_header** %5, align 8
  %43 = getelementptr inbounds %struct.hfi1_16b_header, %struct.hfi1_16b_header* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store %struct.ib_other_headers* %45, %struct.ib_other_headers** %3, align 8
  br label %46

46:                                               ; preds = %41, %37
  br label %47

47:                                               ; preds = %46, %28
  %48 = load %struct.ib_other_headers*, %struct.ib_other_headers** %3, align 8
  ret %struct.ib_other_headers* %48
}

declare dso_local i64 @ib_get_lnh(%struct.ib_header*) #1

declare dso_local i64 @hfi1_16B_get_l4(%struct.hfi1_16b_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
