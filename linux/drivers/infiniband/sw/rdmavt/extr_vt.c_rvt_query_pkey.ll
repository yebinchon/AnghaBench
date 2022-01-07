; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_vt.c_rvt_query_pkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_vt.c_rvt_query_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.rvt_dev_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i64, i64*)* @rvt_query_pkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvt_query_pkey(%struct.ib_device* %0, i32 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.rvt_dev_info*, align 8
  %11 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %13 = call %struct.rvt_dev_info* @ib_to_rvt(%struct.ib_device* %12)
  store %struct.rvt_dev_info* %13, %struct.rvt_dev_info** %10, align 8
  %14 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @ibport_num_to_idx(%struct.ib_device* %14, i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %36

22:                                               ; preds = %4
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %10, align 8
  %25 = call i64 @rvt_get_npkeys(%struct.rvt_dev_info* %24)
  %26 = icmp sge i64 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %36

30:                                               ; preds = %22
  %31 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @rvt_get_pkey(%struct.rvt_dev_info* %31, i32 %32, i64 %33)
  %35 = load i64*, i64** %9, align 8
  store i64 %34, i64* %35, align 8
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %30, %27, %19
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(%struct.ib_device*) #1

declare dso_local i32 @ibport_num_to_idx(%struct.ib_device*, i32) #1

declare dso_local i64 @rvt_get_npkeys(%struct.rvt_dev_info*) #1

declare dso_local i64 @rvt_get_pkey(%struct.rvt_dev_info*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
