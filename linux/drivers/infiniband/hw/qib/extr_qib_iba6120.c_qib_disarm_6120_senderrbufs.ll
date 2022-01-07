; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_disarm_6120_senderrbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_disarm_6120_senderrbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.qib_devdata* }
%struct.qib_devdata = type { i64, i64 }

@kr_sendbuffererror = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*)* @qib_disarm_6120_senderrbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_disarm_6120_senderrbufs(%struct.qib_pportdata* %0) #0 {
  %2 = alloca %struct.qib_pportdata*, align 8
  %3 = alloca [2 x i64], align 16
  %4 = alloca %struct.qib_devdata*, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %2, align 8
  %5 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %6 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %5, i32 0, i32 0
  %7 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  store %struct.qib_devdata* %7, %struct.qib_devdata** %4, align 8
  %8 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %9 = load i64, i64* @kr_sendbuffererror, align 8
  %10 = call i64 @qib_read_kreg64(%struct.qib_devdata* %8, i64 %9)
  %11 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  store i64 %10, i64* %11, align 16
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %13 = load i64, i64* @kr_sendbuffererror, align 8
  %14 = add nsw i64 %13, 1
  %15 = call i64 @qib_read_kreg64(%struct.qib_devdata* %12, i64 %14)
  %16 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  store i64 %15, i64* %16, align 8
  %17 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %18 = load i64, i64* %17, align 16
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %20, %1
  %25 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %26 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %27 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %28 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %31 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = call i32 @qib_disarm_piobufs_set(%struct.qib_devdata* %25, i64* %26, i64 %33)
  br label %35

35:                                               ; preds = %24, %20
  ret void
}

declare dso_local i64 @qib_read_kreg64(%struct.qib_devdata*, i64) #1

declare dso_local i32 @qib_disarm_piobufs_set(%struct.qib_devdata*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
