; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_update_6120_usrhead.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_update_6120_usrhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ctxtdata = type { i32, i32 }

@ur_rcvegrindexhead = common dso_local global i32 0, align 4
@ur_rcvhdrhead = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_ctxtdata*, i64, i64, i64, i64)* @qib_update_6120_usrhead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_update_6120_usrhead(%struct.qib_ctxtdata* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.qib_ctxtdata*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.qib_ctxtdata* %0, %struct.qib_ctxtdata** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i64, i64* %8, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %5
  %14 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %15 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ur_rcvegrindexhead, align 4
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %20 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @qib_write_ureg(i32 %16, i32 %17, i64 %18, i32 %21)
  br label %23

23:                                               ; preds = %13, %5
  %24 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %25 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ur_rcvhdrhead, align 4
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %30 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @qib_write_ureg(i32 %26, i32 %27, i64 %28, i32 %31)
  ret void
}

declare dso_local i32 @qib_write_ureg(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
