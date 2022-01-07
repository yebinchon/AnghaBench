; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_disarm_7322_senderrbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_disarm_7322_senderrbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.qib_devdata* }
%struct.qib_devdata = type { i32, i32 }

@NUM_VL15_BUFS = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@kr_sendbuffererror = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*)* @qib_disarm_7322_senderrbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_disarm_7322_senderrbufs(%struct.qib_pportdata* %0) #0 {
  %2 = alloca %struct.qib_pportdata*, align 8
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i64], align 16
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %2, align 8
  %9 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %10 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %9, i32 0, i32 0
  %11 = load %struct.qib_devdata*, %struct.qib_devdata** %10, align 8
  store %struct.qib_devdata* %11, %struct.qib_devdata** %3, align 8
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %13 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %16 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %14, %17
  %19 = load i32, i32* @NUM_VL15_BUFS, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @BITS_PER_LONG, align 4
  %23 = add nsw i32 %21, %22
  %24 = sub nsw i32 %23, 1
  %25 = load i32, i32* @BITS_PER_LONG, align 4
  %26 = sdiv i32 %24, %25
  store i32 %26, i32* %7, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %58, %1
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %27
  %32 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %33 = load i64, i64* @kr_sendbuffererror, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = call i64 @qib_read_kreg64(%struct.qib_devdata* %32, i64 %36)
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 %39
  store i64 %37, i64* %40, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %31
  store i32 1, i32* %5, align 4
  %47 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %48 = load i64, i64* @kr_sendbuffererror, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @qib_write_kreg(%struct.qib_devdata* %47, i64 %51, i64 %55)
  br label %57

57:                                               ; preds = %46, %31
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %27

61:                                               ; preds = %27
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %66 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @qib_disarm_piobufs_set(%struct.qib_devdata* %65, i64* %66, i32 %67)
  br label %69

69:                                               ; preds = %64, %61
  ret void
}

declare dso_local i64 @qib_read_kreg64(%struct.qib_devdata*, i64) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i64, i64) #1

declare dso_local i32 @qib_disarm_piobufs_set(%struct.qib_devdata*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
