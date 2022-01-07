; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_client.c_ishtp_cl_get_tx_free_buffer_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_client.c_ishtp_cl_get_tx_free_buffer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_cl = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ishtp_cl_get_tx_free_buffer_size(%struct.ishtp_cl* %0) #0 {
  %2 = alloca %struct.ishtp_cl*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.ishtp_cl* %0, %struct.ishtp_cl** %2, align 8
  %5 = load %struct.ishtp_cl*, %struct.ishtp_cl** %2, align 8
  %6 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %5, i32 0, i32 1
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.ishtp_cl*, %struct.ishtp_cl** %2, align 8
  %10 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.ishtp_cl*, %struct.ishtp_cl** %2, align 8
  %13 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %11, %19
  store i32 %20, i32* %4, align 4
  %21 = load %struct.ishtp_cl*, %struct.ishtp_cl** %2, align 8
  %22 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %21, i32 0, i32 1
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
