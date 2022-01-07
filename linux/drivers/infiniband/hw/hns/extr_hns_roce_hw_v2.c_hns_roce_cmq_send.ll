; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_cmq_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_cmq_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32 }
%struct.hns_roce_cmq_desc = type { i32 }

@CMD_RST_PRC_SUCCESS = common dso_local global i32 0, align 4
@CMD_RST_PRC_EBUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, %struct.hns_roce_cmq_desc*, i32)* @hns_roce_cmq_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_cmq_send(%struct.hns_roce_dev* %0, %struct.hns_roce_cmq_desc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca %struct.hns_roce_cmq_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %5, align 8
  store %struct.hns_roce_cmq_desc* %1, %struct.hns_roce_cmq_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %11 = call i32 @hns_roce_v2_rst_process_cmd(%struct.hns_roce_dev* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @CMD_RST_PRC_SUCCESS, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %48

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @CMD_RST_PRC_EBUSY, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %48

23:                                               ; preds = %16
  %24 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %25 = load %struct.hns_roce_cmq_desc*, %struct.hns_roce_cmq_desc** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @__hns_roce_cmq_send(%struct.hns_roce_dev* %24, %struct.hns_roce_cmq_desc* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %23
  %31 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %32 = call i32 @hns_roce_v2_rst_process_cmd(%struct.hns_roce_dev* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @CMD_RST_PRC_SUCCESS, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %48

37:                                               ; preds = %30
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @CMD_RST_PRC_EBUSY, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %48

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44
  br label %46

46:                                               ; preds = %45, %23
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %41, %36, %20, %15
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @hns_roce_v2_rst_process_cmd(%struct.hns_roce_dev*) #1

declare dso_local i32 @__hns_roce_cmq_send(%struct.hns_roce_dev*, %struct.hns_roce_cmq_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
