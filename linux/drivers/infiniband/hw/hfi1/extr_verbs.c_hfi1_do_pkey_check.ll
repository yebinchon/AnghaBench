; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_hfi1_do_pkey_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_hfi1_do_pkey_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_packet = type { i64, i32, %struct.TYPE_2__*, i32, %struct.hfi1_16b_header*, %struct.hfi1_ctxtdata* }
%struct.TYPE_2__ = type { i32 }
%struct.hfi1_16b_header = type { i32 }
%struct.hfi1_ctxtdata = type { %struct.hfi1_pportdata* }
%struct.hfi1_pportdata = type { i32 }

@RHF_RCV_TYPE_BYPASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_packet*)* @hfi1_do_pkey_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfi1_do_pkey_check(%struct.hfi1_packet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_packet*, align 8
  %4 = alloca %struct.hfi1_ctxtdata*, align 8
  %5 = alloca %struct.hfi1_pportdata*, align 8
  %6 = alloca %struct.hfi1_16b_header*, align 8
  %7 = alloca i32, align 4
  store %struct.hfi1_packet* %0, %struct.hfi1_packet** %3, align 8
  %8 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %9 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %8, i32 0, i32 5
  %10 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  store %struct.hfi1_ctxtdata* %10, %struct.hfi1_ctxtdata** %4, align 8
  %11 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %12 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %11, i32 0, i32 0
  %13 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %12, align 8
  store %struct.hfi1_pportdata* %13, %struct.hfi1_pportdata** %5, align 8
  %14 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %15 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %14, i32 0, i32 4
  %16 = load %struct.hfi1_16b_header*, %struct.hfi1_16b_header** %15, align 8
  store %struct.hfi1_16b_header* %16, %struct.hfi1_16b_header** %6, align 8
  %17 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %18 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RHF_RCV_TYPE_BYPASS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

23:                                               ; preds = %1
  %24 = load %struct.hfi1_16b_header*, %struct.hfi1_16b_header** %6, align 8
  %25 = call i32 @hfi1_16B_get_pkey(%struct.hfi1_16b_header* %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %29 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %32 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %37 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ingress_pkey_check(%struct.hfi1_pportdata* %26, i32 %27, i32 %30, i32 %35, i32 %38, i32 1)
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %23, %22
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @hfi1_16B_get_pkey(%struct.hfi1_16b_header*) #1

declare dso_local i32 @ingress_pkey_check(%struct.hfi1_pportdata*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
