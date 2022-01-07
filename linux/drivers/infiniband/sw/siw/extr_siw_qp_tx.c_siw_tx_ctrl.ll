; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_tx.c_siw_tx_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_tx.c_siw_tx_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_iwarp_tx = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.socket = type { i32 }
%struct.msghdr = type { i32 }
%struct.kvec = type { i8*, i64 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siw_iwarp_tx*, %struct.socket*, i32)* @siw_tx_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siw_tx_ctrl(%struct.siw_iwarp_tx* %0, %struct.socket* %1, i32 %2) #0 {
  %4 = alloca %struct.siw_iwarp_tx*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.msghdr, align 4
  %8 = alloca %struct.kvec, align 8
  %9 = alloca i32, align 4
  store %struct.siw_iwarp_tx* %0, %struct.siw_iwarp_tx** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 0
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.kvec, %struct.kvec* %8, i32 0, i32 0
  %13 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %4, align 8
  %14 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = bitcast i32* %15 to i8*
  %17 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %4, align 8
  %18 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  store i8* %21, i8** %12, align 8
  %22 = getelementptr inbounds %struct.kvec, %struct.kvec* %8, i32 0, i32 1
  %23 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %4, align 8
  %24 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %4, align 8
  %27 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = sub nsw i64 %25, %29
  store i64 %30, i64* %22, align 8
  %31 = load %struct.socket*, %struct.socket** %5, align 8
  %32 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %4, align 8
  %33 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %4, align 8
  %36 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %34, %38
  %40 = call i32 @kernel_sendmsg(%struct.socket* %31, %struct.msghdr* %7, %struct.kvec* %8, i32 1, i64 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %3
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %4, align 8
  %46 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %4, align 8
  %50 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %4, align 8
  %54 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  store i32 0, i32* %9, align 4
  br label %61

58:                                               ; preds = %43
  %59 = load i32, i32* @EAGAIN, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %58, %57
  br label %62

62:                                               ; preds = %61, %3
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

declare dso_local i32 @kernel_sendmsg(%struct.socket*, %struct.msghdr*, %struct.kvec*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
