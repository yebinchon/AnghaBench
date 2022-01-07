; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_hfi1_sc_wantpiobuf_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_hfi1_sc_wantpiobuf_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_context = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_sc_wantpiobuf_intr(%struct.send_context* %0, i64 %1) #0 {
  %3 = alloca %struct.send_context*, align 8
  %4 = alloca i64, align 8
  store %struct.send_context* %0, %struct.send_context** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.send_context*, %struct.send_context** %3, align 8
  %9 = call i32 @sc_add_credit_return_intr(%struct.send_context* %8)
  br label %13

10:                                               ; preds = %2
  %11 = load %struct.send_context*, %struct.send_context** %3, align 8
  %12 = call i32 @sc_del_credit_return_intr(%struct.send_context* %11)
  br label %13

13:                                               ; preds = %10, %7
  %14 = load %struct.send_context*, %struct.send_context** %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.send_context*, %struct.send_context** %3, align 8
  %17 = getelementptr inbounds %struct.send_context, %struct.send_context* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @trace_hfi1_wantpiointr(%struct.send_context* %14, i64 %15, i32 %18)
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load %struct.send_context*, %struct.send_context** %3, align 8
  %24 = call i32 @sc_return_credits(%struct.send_context* %23)
  br label %25

25:                                               ; preds = %22, %13
  ret void
}

declare dso_local i32 @sc_add_credit_return_intr(%struct.send_context*) #1

declare dso_local i32 @sc_del_credit_return_intr(%struct.send_context*) #1

declare dso_local i32 @trace_hfi1_wantpiointr(%struct.send_context*, i64, i32) #1

declare dso_local i32 @sc_return_credits(%struct.send_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
