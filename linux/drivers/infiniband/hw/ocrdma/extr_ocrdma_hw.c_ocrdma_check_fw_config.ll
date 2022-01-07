; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_check_fw_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_check_fw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32, i32 }
%struct.ocrdma_fw_conf_rsp = type { i32, i32, i32 }

@OCRDMA_FN_MODE_RDMA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*, %struct.ocrdma_fw_conf_rsp*)* @ocrdma_check_fw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_check_fw_config(%struct.ocrdma_dev* %0, %struct.ocrdma_fw_conf_rsp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocrdma_dev*, align 8
  %5 = alloca %struct.ocrdma_fw_conf_rsp*, align 8
  %6 = alloca i32, align 4
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %4, align 8
  store %struct.ocrdma_fw_conf_rsp* %1, %struct.ocrdma_fw_conf_rsp** %5, align 8
  %7 = load %struct.ocrdma_fw_conf_rsp*, %struct.ocrdma_fw_conf_rsp** %5, align 8
  %8 = getelementptr inbounds %struct.ocrdma_fw_conf_rsp, %struct.ocrdma_fw_conf_rsp* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @OCRDMA_FN_MODE_RDMA, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @OCRDMA_FN_MODE_RDMA, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %29

18:                                               ; preds = %2
  %19 = load %struct.ocrdma_fw_conf_rsp*, %struct.ocrdma_fw_conf_rsp** %5, align 8
  %20 = getelementptr inbounds %struct.ocrdma_fw_conf_rsp, %struct.ocrdma_fw_conf_rsp* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %23 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ocrdma_fw_conf_rsp*, %struct.ocrdma_fw_conf_rsp** %5, align 8
  %25 = getelementptr inbounds %struct.ocrdma_fw_conf_rsp, %struct.ocrdma_fw_conf_rsp* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %28 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %18, %15
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
