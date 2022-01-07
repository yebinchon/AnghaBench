; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_hfi1_get_dev_fw_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_hfi1_get_dev_fw_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.rvt_dev_info = type { i32 }
%struct.hfi1_ibdev = type { i32 }
%struct.TYPE_2__ = type { i32 }

@IB_FW_VERSION_NAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%u.%u.%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, i8*)* @hfi1_get_dev_fw_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfi1_get_dev_fw_str(%struct.ib_device* %0, i8* %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rvt_dev_info*, align 8
  %6 = alloca %struct.hfi1_ibdev*, align 8
  %7 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %9 = call %struct.rvt_dev_info* @ib_to_rvt(%struct.ib_device* %8)
  store %struct.rvt_dev_info* %9, %struct.rvt_dev_info** %5, align 8
  %10 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %5, align 8
  %11 = call %struct.hfi1_ibdev* @dev_from_rdi(%struct.rvt_dev_info* %10)
  store %struct.hfi1_ibdev* %11, %struct.hfi1_ibdev** %6, align 8
  %12 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %6, align 8
  %13 = call %struct.TYPE_2__* @dd_from_dev(%struct.hfi1_ibdev* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* @IB_FW_VERSION_NAME_MAX, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @dc8051_ver_maj(i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @dc8051_ver_min(i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @dc8051_ver_patch(i32 %22)
  %24 = call i32 @snprintf(i8* %16, i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %21, i32 %23)
  ret void
}

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(%struct.ib_device*) #1

declare dso_local %struct.hfi1_ibdev* @dev_from_rdi(%struct.rvt_dev_info*) #1

declare dso_local %struct.TYPE_2__* @dd_from_dev(%struct.hfi1_ibdev*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dc8051_ver_maj(i32) #1

declare dso_local i32 @dc8051_ver_min(i32) #1

declare dso_local i32 @dc8051_ver_patch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
