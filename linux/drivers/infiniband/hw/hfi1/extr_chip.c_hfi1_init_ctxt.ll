; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_hfi1_init_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_hfi1_init_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_context = type { i64, i32, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i32 }

@SC_USER = common dso_local global i64 0, align 8
@STATIC_RATE_CTRL = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_init_ctxt(%struct.send_context* %0) #0 {
  %2 = alloca %struct.send_context*, align 8
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.send_context* %0, %struct.send_context** %2, align 8
  %6 = load %struct.send_context*, %struct.send_context** %2, align 8
  %7 = icmp ne %struct.send_context* %6, null
  br i1 %7, label %8, label %47

8:                                                ; preds = %1
  %9 = load %struct.send_context*, %struct.send_context** %2, align 8
  %10 = getelementptr inbounds %struct.send_context, %struct.send_context* %9, i32 0, i32 2
  %11 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  store %struct.hfi1_devdata* %11, %struct.hfi1_devdata** %3, align 8
  %12 = load %struct.send_context*, %struct.send_context** %2, align 8
  %13 = getelementptr inbounds %struct.send_context, %struct.send_context* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SC_USER, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %8
  %18 = load i32, i32* @STATIC_RATE_CTRL, align 4
  %19 = call i64 @HFI1_CAP_IS_USET(i32 %18)
  br label %23

20:                                               ; preds = %8
  %21 = load i32, i32* @STATIC_RATE_CTRL, align 4
  %22 = call i64 @HFI1_CAP_IS_KSET(i32 %21)
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i64 [ %19, %17 ], [ %22, %20 ]
  store i64 %24, i64* %5, align 8
  %25 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %26 = load %struct.send_context*, %struct.send_context** %2, align 8
  %27 = getelementptr inbounds %struct.send_context, %struct.send_context* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SEND_CTXT_CHECK_ENABLE, align 4
  %30 = call i32 @read_kctxt_csr(%struct.hfi1_devdata* %25, i32 %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i64, i64* %5, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @CLEAR_STATIC_RATE_CONTROL_SMASK(i32 %34)
  br label %39

36:                                               ; preds = %23
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @SET_STATIC_RATE_CONTROL_SMASK(i32 %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %41 = load %struct.send_context*, %struct.send_context** %2, align 8
  %42 = getelementptr inbounds %struct.send_context, %struct.send_context* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SEND_CTXT_CHECK_ENABLE, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %40, i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %39, %1
  ret void
}

declare dso_local i64 @HFI1_CAP_IS_USET(i32) #1

declare dso_local i64 @HFI1_CAP_IS_KSET(i32) #1

declare dso_local i32 @read_kctxt_csr(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @CLEAR_STATIC_RATE_CONTROL_SMASK(i32) #1

declare dso_local i32 @SET_STATIC_RATE_CONTROL_SMASK(i32) #1

declare dso_local i32 @write_kctxt_csr(%struct.hfi1_devdata*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
