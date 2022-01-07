; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_hfi1_may_ecn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_hfi1_may_ecn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_packet = type { i64, i32, i32 }

@RHF_RCV_TYPE_BYPASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_packet*)* @hfi1_may_ecn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfi1_may_ecn(%struct.hfi1_packet* %0) #0 {
  %2 = alloca %struct.hfi1_packet*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hfi1_packet* %0, %struct.hfi1_packet** %2, align 8
  %5 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %6 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @RHF_RCV_TYPE_BYPASS, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %12 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @hfi1_16B_get_fecn(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %16 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @hfi1_16B_get_becn(i32 %17)
  store i32 %18, i32* %4, align 4
  br label %28

19:                                               ; preds = %1
  %20 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %21 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ib_bth_get_fecn(i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %25 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ib_bth_get_becn(i32 %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %19, %10
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i1 [ true, %28 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  ret i32 %36
}

declare dso_local i32 @hfi1_16B_get_fecn(i32) #1

declare dso_local i32 @hfi1_16B_get_becn(i32) #1

declare dso_local i32 @ib_bth_get_fecn(i32) #1

declare dso_local i32 @ib_bth_get_becn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
