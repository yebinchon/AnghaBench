; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_port_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_port_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32 }

@ROCEE_GLB_CFG_REG = common dso_local global i32 0, align 4
@ROCEE_GLB_CFG_ROCEE_PORT_ST_M = common dso_local global i32 0, align 4
@ROCEE_GLB_CFG_ROCEE_PORT_ST_S = common dso_local global i32 0, align 4
@ALL_PORT_VAL_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*, i32)* @hns_roce_port_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_port_enable(%struct.hns_roce_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %11 = load i32, i32* @ROCEE_GLB_CFG_REG, align 4
  %12 = call i32 @roce_read(%struct.hns_roce_dev* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @cpu_to_le32(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @ROCEE_GLB_CFG_ROCEE_PORT_ST_M, align 4
  %17 = load i32, i32* @ROCEE_GLB_CFG_ROCEE_PORT_ST_S, align 4
  %18 = load i32, i32* @ALL_PORT_VAL_OPEN, align 4
  %19 = call i32 @roce_set_field(i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @le32_to_cpu(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %23 = load i32, i32* @ROCEE_GLB_CFG_REG, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @roce_write(%struct.hns_roce_dev* %22, i32 %23, i32 %24)
  br label %42

26:                                               ; preds = %2
  %27 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %28 = load i32, i32* @ROCEE_GLB_CFG_REG, align 4
  %29 = call i32 @roce_read(%struct.hns_roce_dev* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @cpu_to_le32(i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @ROCEE_GLB_CFG_ROCEE_PORT_ST_M, align 4
  %34 = load i32, i32* @ROCEE_GLB_CFG_ROCEE_PORT_ST_S, align 4
  %35 = call i32 @roce_set_field(i32 %32, i32 %33, i32 %34, i32 0)
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @le32_to_cpu(i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %39 = load i32, i32* @ROCEE_GLB_CFG_REG, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @roce_write(%struct.hns_roce_dev* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %26, %9
  ret void
}

declare dso_local i32 @roce_read(%struct.hns_roce_dev*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @roce_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @roce_write(%struct.hns_roce_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
