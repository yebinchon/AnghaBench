; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_aeq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_aeq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_rcfw = type { i32 }
%struct.creq_qp_event = type { i32 }
%struct.creq_func_event = type { i32 }
%struct.creq_base = type { i64 }

@CREQ_BASE_TYPE_FUNC_EVENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt_qplib_rcfw*, i8*, i8*)* @bnxt_re_aeq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_re_aeq_handler(%struct.bnxt_qplib_rcfw* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.bnxt_qplib_rcfw*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.creq_qp_event*, align 8
  %8 = alloca %struct.creq_func_event*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.bnxt_qplib_rcfw* %0, %struct.bnxt_qplib_rcfw** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.creq_base*
  %13 = getelementptr inbounds %struct.creq_base, %struct.creq_base* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @CREQ_BASE_TYPE_FUNC_EVENT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.creq_func_event*
  store %struct.creq_func_event* %20, %struct.creq_func_event** %8, align 8
  %21 = load %struct.creq_func_event*, %struct.creq_func_event** %8, align 8
  %22 = call i32 @bnxt_re_handle_unaffi_async_event(%struct.creq_func_event* %21)
  store i32 %22, i32* %10, align 4
  br label %29

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  %25 = bitcast i8* %24 to %struct.creq_qp_event*
  store %struct.creq_qp_event* %25, %struct.creq_qp_event** %7, align 8
  %26 = load %struct.creq_qp_event*, %struct.creq_qp_event** %7, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @bnxt_re_handle_affi_async_event(%struct.creq_qp_event* %26, i8* %27)
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %23, %18
  %30 = load i32, i32* %10, align 4
  ret i32 %30
}

declare dso_local i32 @bnxt_re_handle_unaffi_async_event(%struct.creq_func_event*) #1

declare dso_local i32 @bnxt_re_handle_affi_async_event(%struct.creq_qp_event*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
