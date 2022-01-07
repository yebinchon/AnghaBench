; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_clear_recv_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_clear_recv_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ctxtdata = type { i32, i32, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i32 }

@CCE_INT_CLEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_ctxtdata*)* @clear_recv_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_recv_intr(%struct.hfi1_ctxtdata* %0) #0 {
  %2 = alloca %struct.hfi1_ctxtdata*, align 8
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i64, align 8
  store %struct.hfi1_ctxtdata* %0, %struct.hfi1_ctxtdata** %2, align 8
  %5 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %6 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %5, i32 0, i32 2
  %7 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  store %struct.hfi1_devdata* %7, %struct.hfi1_devdata** %3, align 8
  %8 = load i64, i64* @CCE_INT_CLEAR, align 8
  %9 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %10 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = mul nsw i32 8, %11
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %8, %13
  store i64 %14, i64* %4, align 8
  %15 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %18 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @write_csr(%struct.hfi1_devdata* %15, i64 %16, i32 %19)
  %21 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @read_csr(%struct.hfi1_devdata* %21, i64 %22)
  ret void
}

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i64, i32) #1

declare dso_local i32 @read_csr(%struct.hfi1_devdata*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
