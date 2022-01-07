; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_ib_response_mad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_ib_response_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_hdr = type { i32, i64, i32 }

@IB_MGMT_METHOD_RESP = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_TRAP_REPRESS = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_BM = common dso_local global i64 0, align 8
@IB_BM_ATTR_MOD_RESP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_response_mad(%struct.ib_mad_hdr* %0) #0 {
  %2 = alloca %struct.ib_mad_hdr*, align 8
  store %struct.ib_mad_hdr* %0, %struct.ib_mad_hdr** %2, align 8
  %3 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %2, align 8
  %4 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @IB_MGMT_METHOD_RESP, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %1
  %10 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %2, align 8
  %11 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IB_MGMT_METHOD_TRAP_REPRESS, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %30, label %15

15:                                               ; preds = %9
  %16 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %2, align 8
  %17 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IB_MGMT_CLASS_BM, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %2, align 8
  %23 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IB_BM_ATTR_MOD_RESP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %21, %15
  %29 = phi i1 [ false, %15 ], [ %27, %21 ]
  br label %30

30:                                               ; preds = %28, %9, %1
  %31 = phi i1 [ true, %9 ], [ true, %1 ], [ %29, %28 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
