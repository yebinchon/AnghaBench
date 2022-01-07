; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_qib_sys_guid_chg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_qib_sys_guid_chg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ibport = type { i32 }
%struct.ib_mad_notice_attr = type { %struct.TYPE_6__, i32, i64, i32, i32, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@IB_NOTICE_TYPE_INFO = common dso_local global i32 0, align 4
@IB_NOTICE_PROD_CA = common dso_local global i32 0, align 4
@IB_NOTICE_TRAP_SYS_GUID_CHG = common dso_local global i32 0, align 4
@ib_qib_sys_image_guid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_sys_guid_chg(%struct.qib_ibport* %0) #0 {
  %2 = alloca %struct.qib_ibport*, align 8
  %3 = alloca %struct.ib_mad_notice_attr, align 8
  store %struct.qib_ibport* %0, %struct.qib_ibport** %2, align 8
  %4 = load i32, i32* @IB_NOTICE_TYPE_INFO, align 4
  %5 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %3, i32 0, i32 6
  store i32 %4, i32* %5, align 8
  %6 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %3, i32 0, i32 5
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* @IB_NOTICE_PROD_CA, align 4
  %8 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %3, i32 0, i32 4
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @IB_NOTICE_TRAP_SYS_GUID_CHG, align 4
  %10 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %3, i32 0, i32 3
  store i32 %9, i32* %10, align 8
  %11 = load %struct.qib_ibport*, %struct.qib_ibport** %2, align 8
  %12 = call %struct.TYPE_5__* @ppd_from_ibp(%struct.qib_ibport* %11)
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @cpu_to_be16(i32 %14)
  %16 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %3, i32 0, i32 1
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %3, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %3, i32 0, i32 0
  %19 = call i32 @memset(%struct.TYPE_6__* %18, i32 0, i32 8)
  %20 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %3, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %3, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @ib_qib_sys_image_guid, align 4
  %26 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %3, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.qib_ibport*, %struct.qib_ibport** %2, align 8
  %30 = call i32 @qib_send_trap(%struct.qib_ibport* %29, %struct.ib_mad_notice_attr* %3, i32 48)
  ret void
}

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local %struct.TYPE_5__* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @qib_send_trap(%struct.qib_ibport*, %struct.ib_mad_notice_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
