; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_trace.c___get_ib_hdr_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_trace.c___get_ib_hdr_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_header = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.ib_other_headers }
%struct.TYPE_3__ = type { %struct.ib_other_headers }
%struct.ib_other_headers = type { i32 }

@HFI1_LRH_BTH = common dso_local global i64 0, align 8
@hdr_len_by_opcode = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ib_header*)* @__get_ib_hdr_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__get_ib_hdr_len(%struct.ib_header* %0) #0 {
  %2 = alloca %struct.ib_header*, align 8
  %3 = alloca %struct.ib_other_headers*, align 8
  %4 = alloca i64, align 8
  store %struct.ib_header* %0, %struct.ib_header** %2, align 8
  %5 = load %struct.ib_header*, %struct.ib_header** %2, align 8
  %6 = call i64 @ib_get_lnh(%struct.ib_header* %5)
  %7 = load i64, i64* @HFI1_LRH_BTH, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.ib_header*, %struct.ib_header** %2, align 8
  %11 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store %struct.ib_other_headers* %12, %struct.ib_other_headers** %3, align 8
  br label %18

13:                                               ; preds = %1
  %14 = load %struct.ib_header*, %struct.ib_header** %2, align 8
  %15 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.ib_other_headers* %17, %struct.ib_other_headers** %3, align 8
  br label %18

18:                                               ; preds = %13, %9
  %19 = load %struct.ib_other_headers*, %struct.ib_other_headers** %3, align 8
  %20 = call i64 @ib_bth_get_opcode(%struct.ib_other_headers* %19)
  store i64 %20, i64* %4, align 8
  %21 = load i32*, i32** @hdr_len_by_opcode, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %33

27:                                               ; preds = %18
  %28 = load i32*, i32** @hdr_len_by_opcode, align 8
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 20
  br label %33

33:                                               ; preds = %27, %26
  %34 = phi i32 [ 0, %26 ], [ %32, %27 ]
  %35 = sext i32 %34 to i64
  ret i64 %35
}

declare dso_local i64 @ib_get_lnh(%struct.ib_header*) #1

declare dso_local i64 @ib_bth_get_opcode(%struct.ib_other_headers*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
