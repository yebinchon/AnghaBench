; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_trace.c___get_16b_hdr_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_trace.c___get_16b_hdr_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_16b_header = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.ib_other_headers }
%struct.TYPE_3__ = type { %struct.ib_other_headers }
%struct.ib_other_headers = type { i32 }

@OPA_16B_L4_FM = common dso_local global i64 0, align 8
@IB_OPCODE_UD_SEND_ONLY = common dso_local global i64 0, align 8
@OPA_16B_L4_IB_LOCAL = common dso_local global i64 0, align 8
@hdr_len_by_opcode = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hfi1_16b_header*)* @__get_16b_hdr_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__get_16b_hdr_len(%struct.hfi1_16b_header* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.hfi1_16b_header*, align 8
  %4 = alloca %struct.ib_other_headers*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.hfi1_16b_header* %0, %struct.hfi1_16b_header** %3, align 8
  store %struct.ib_other_headers* null, %struct.ib_other_headers** %4, align 8
  %7 = load %struct.hfi1_16b_header*, %struct.hfi1_16b_header** %3, align 8
  %8 = call i64 @hfi1_16B_get_l4(%struct.hfi1_16b_header* %7)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @OPA_16B_L4_FM, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* @IB_OPCODE_UD_SEND_ONLY, align 8
  store i64 %13, i64* %5, align 8
  store i64 16, i64* %2, align 8
  br label %45

14:                                               ; preds = %1
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @OPA_16B_L4_IB_LOCAL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load %struct.hfi1_16b_header*, %struct.hfi1_16b_header** %3, align 8
  %20 = getelementptr inbounds %struct.hfi1_16b_header, %struct.hfi1_16b_header* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store %struct.ib_other_headers* %21, %struct.ib_other_headers** %4, align 8
  br label %27

22:                                               ; preds = %14
  %23 = load %struct.hfi1_16b_header*, %struct.hfi1_16b_header** %3, align 8
  %24 = getelementptr inbounds %struct.hfi1_16b_header, %struct.hfi1_16b_header* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store %struct.ib_other_headers* %26, %struct.ib_other_headers** %4, align 8
  br label %27

27:                                               ; preds = %22, %18
  %28 = load %struct.ib_other_headers*, %struct.ib_other_headers** %4, align 8
  %29 = call i64 @ib_bth_get_opcode(%struct.ib_other_headers* %28)
  store i64 %29, i64* %5, align 8
  %30 = load i32*, i32** @hdr_len_by_opcode, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %42

36:                                               ; preds = %27
  %37 = load i32*, i32** @hdr_len_by_opcode, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 28
  br label %42

42:                                               ; preds = %36, %35
  %43 = phi i32 [ 0, %35 ], [ %41, %36 ]
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %2, align 8
  br label %45

45:                                               ; preds = %42, %12
  %46 = load i64, i64* %2, align 8
  ret i64 %46
}

declare dso_local i64 @hfi1_16B_get_l4(%struct.hfi1_16b_header*) #1

declare dso_local i64 @ib_bth_get_opcode(%struct.ib_other_headers*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
