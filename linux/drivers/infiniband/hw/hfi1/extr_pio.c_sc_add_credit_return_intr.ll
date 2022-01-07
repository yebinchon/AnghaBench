; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_sc_add_credit_return_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_sc_add_credit_return_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_context = type { i64, i32, i32, i32, i32 }

@CREDIT_CTRL_CREDIT_INTR_SMASK = common dso_local global i32 0, align 4
@CREDIT_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sc_add_credit_return_intr(%struct.send_context* %0) #0 {
  %2 = alloca %struct.send_context*, align 8
  %3 = alloca i64, align 8
  store %struct.send_context* %0, %struct.send_context** %2, align 8
  %4 = load %struct.send_context*, %struct.send_context** %2, align 8
  %5 = getelementptr inbounds %struct.send_context, %struct.send_context* %4, i32 0, i32 1
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.send_context*, %struct.send_context** %2, align 8
  %9 = getelementptr inbounds %struct.send_context, %struct.send_context* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %1
  %13 = load i32, i32* @CREDIT_CTRL_CREDIT_INTR_SMASK, align 4
  %14 = call i32 @SC(i32 %13)
  %15 = load %struct.send_context*, %struct.send_context** %2, align 8
  %16 = getelementptr inbounds %struct.send_context, %struct.send_context* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.send_context*, %struct.send_context** %2, align 8
  %20 = getelementptr inbounds %struct.send_context, %struct.send_context* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.send_context*, %struct.send_context** %2, align 8
  %23 = getelementptr inbounds %struct.send_context, %struct.send_context* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CREDIT_CTRL, align 4
  %26 = call i32 @SC(i32 %25)
  %27 = load %struct.send_context*, %struct.send_context** %2, align 8
  %28 = getelementptr inbounds %struct.send_context, %struct.send_context* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @write_kctxt_csr(i32 %21, i32 %24, i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %12, %1
  %32 = load %struct.send_context*, %struct.send_context** %2, align 8
  %33 = getelementptr inbounds %struct.send_context, %struct.send_context* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.send_context*, %struct.send_context** %2, align 8
  %37 = getelementptr inbounds %struct.send_context, %struct.send_context* %36, i32 0, i32 1
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @SC(i32) #1

declare dso_local i32 @write_kctxt_csr(i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
