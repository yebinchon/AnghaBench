; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_get_egrbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_get_egrbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ctxtdata = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@RCV_BUF_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hfi1_ctxtdata*, i64, i32*)* @get_egrbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_egrbuf(%struct.hfi1_ctxtdata* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.hfi1_ctxtdata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hfi1_ctxtdata* %0, %struct.hfi1_ctxtdata** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @rhf_egr_index(i64 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @rhf_egr_buf_offset(i64 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %15 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  %19 = and i32 %13, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %21, %3
  %26 = phi i1 [ false, %3 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %27
  store i32 %30, i32* %28, align 4
  %31 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %32 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @RCV_BUF_BLOCK_SIZE, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %39, %43
  %45 = inttoptr i64 %44 to i8*
  ret i8* %45
}

declare dso_local i32 @rhf_egr_index(i64) #1

declare dso_local i32 @rhf_egr_buf_offset(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
