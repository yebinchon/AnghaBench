; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_sc_return_credits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_sc_return_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_context = type { i32, i32 }

@CREDIT_FORCE = common dso_local global i32 0, align 4
@CREDIT_FORCE_FORCE_RETURN_SMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sc_return_credits(%struct.send_context* %0) #0 {
  %2 = alloca %struct.send_context*, align 8
  store %struct.send_context* %0, %struct.send_context** %2, align 8
  %3 = load %struct.send_context*, %struct.send_context** %2, align 8
  %4 = icmp ne %struct.send_context* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %36

6:                                                ; preds = %1
  %7 = load %struct.send_context*, %struct.send_context** %2, align 8
  %8 = getelementptr inbounds %struct.send_context, %struct.send_context* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.send_context*, %struct.send_context** %2, align 8
  %11 = getelementptr inbounds %struct.send_context, %struct.send_context* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CREDIT_FORCE, align 4
  %14 = call i32 @SC(i32 %13)
  %15 = load i32, i32* @CREDIT_FORCE_FORCE_RETURN_SMASK, align 4
  %16 = call i32 @SC(i32 %15)
  %17 = call i32 @write_kctxt_csr(i32 %9, i32 %12, i32 %14, i32 %16)
  %18 = load %struct.send_context*, %struct.send_context** %2, align 8
  %19 = getelementptr inbounds %struct.send_context, %struct.send_context* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.send_context*, %struct.send_context** %2, align 8
  %22 = getelementptr inbounds %struct.send_context, %struct.send_context* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CREDIT_FORCE, align 4
  %25 = call i32 @SC(i32 %24)
  %26 = call i32 @read_kctxt_csr(i32 %20, i32 %23, i32 %25)
  %27 = load %struct.send_context*, %struct.send_context** %2, align 8
  %28 = getelementptr inbounds %struct.send_context, %struct.send_context* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.send_context*, %struct.send_context** %2, align 8
  %31 = getelementptr inbounds %struct.send_context, %struct.send_context* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CREDIT_FORCE, align 4
  %34 = call i32 @SC(i32 %33)
  %35 = call i32 @write_kctxt_csr(i32 %29, i32 %32, i32 %34, i32 0)
  br label %36

36:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @write_kctxt_csr(i32, i32, i32, i32) #1

declare dso_local i32 @SC(i32) #1

declare dso_local i32 @read_kctxt_csr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
