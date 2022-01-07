; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_qib_bad_mkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_qib_bad_mkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ibport = type { i32 }
%struct.ib_smp = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_mad_notice_attr = type { %struct.TYPE_6__, i32, i64, i32, i32, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@IB_NOTICE_TYPE_SECURITY = common dso_local global i32 0, align 4
@IB_NOTICE_PROD_CA = common dso_local global i32 0, align 4
@IB_NOTICE_TRAP_BAD_MKEY = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE = common dso_local global i64 0, align 8
@IB_NOTICE_TRAP_DR_NOTICE = common dso_local global i32 0, align 4
@IB_NOTICE_TRAP_DR_TRUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_ibport*, %struct.ib_smp*)* @qib_bad_mkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_bad_mkey(%struct.qib_ibport* %0, %struct.ib_smp* %1) #0 {
  %3 = alloca %struct.qib_ibport*, align 8
  %4 = alloca %struct.ib_smp*, align 8
  %5 = alloca %struct.ib_mad_notice_attr, align 8
  %6 = alloca i32, align 4
  store %struct.qib_ibport* %0, %struct.qib_ibport** %3, align 8
  store %struct.ib_smp* %1, %struct.ib_smp** %4, align 8
  %7 = load i32, i32* @IB_NOTICE_TYPE_SECURITY, align 4
  %8 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %5, i32 0, i32 6
  store i32 %7, i32* %8, align 8
  %9 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %5, i32 0, i32 5
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @IB_NOTICE_PROD_CA, align 4
  %11 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %5, i32 0, i32 4
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @IB_NOTICE_TRAP_BAD_MKEY, align 4
  %13 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %5, i32 0, i32 3
  store i32 %12, i32* %13, align 8
  %14 = load %struct.qib_ibport*, %struct.qib_ibport** %3, align 8
  %15 = call %struct.TYPE_5__* @ppd_from_ibp(%struct.qib_ibport* %14)
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cpu_to_be16(i32 %17)
  %19 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %5, i32 0, i32 1
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %5, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %5, i32 0, i32 0
  %22 = call i32 @memset(%struct.TYPE_6__* %21, i32 0, i32 32)
  %23 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %5, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %5, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 7
  store i32 %24, i32* %27, align 4
  %28 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %29 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %5, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 6
  store i32 %30, i32* %33, align 8
  %34 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %35 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %5, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 5
  store i32 %36, i32* %39, align 4
  %40 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %41 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %5, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 4
  store i32 %42, i32* %45, align 8
  %46 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %47 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %5, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  store i32 %48, i32* %51, align 4
  %52 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %53 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %106

57:                                               ; preds = %2
  %58 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %59 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %5, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  store i32 %60, i32* %63, align 8
  %64 = load i32, i32* @IB_NOTICE_TRAP_DR_NOTICE, align 4
  %65 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %5, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %69 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %5, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @ARRAY_SIZE(i32 %75)
  %77 = icmp sgt i32 %71, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %57
  %79 = load i32, i32* @IB_NOTICE_TRAP_DR_TRUNC, align 4
  %80 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %5, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %79
  store i32 %84, i32* %82, align 4
  %85 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %5, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @ARRAY_SIZE(i32 %88)
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %78, %57
  %91 = load i32, i32* %6, align 4
  %92 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %5, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %91
  store i32 %96, i32* %94, align 4
  %97 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %5, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %102 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @memcpy(i32 %100, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %90, %2
  %107 = load %struct.qib_ibport*, %struct.qib_ibport** %3, align 8
  %108 = call i32 @qib_send_trap(%struct.qib_ibport* %107, %struct.ib_mad_notice_attr* %5, i32 72)
  ret void
}

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local %struct.TYPE_5__* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @qib_send_trap(%struct.qib_ibport*, %struct.ib_mad_notice_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
