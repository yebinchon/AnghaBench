; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_mad.c_smp_snoop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_mad.c_smp_snoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_mad = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.ib_event = type { %struct.TYPE_4__, i32, %struct.ib_device* }
%struct.TYPE_4__ = type { i8* }
%struct.ib_port_info = type { i32, i32, i32, i32 }
%struct.ib_smp = type { i64 }

@IB_MGMT_CLASS_SUBN_LID_ROUTED = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_SET = common dso_local global i64 0, align 8
@IB_SMP_ATTR_PORT_INFO = common dso_local global i64 0, align 8
@IB_EVENT_CLIENT_REREGISTER = common dso_local global i32 0, align 4
@IB_EVENT_LID_CHANGE = common dso_local global i32 0, align 4
@IB_SMP_ATTR_PKEY_TABLE = common dso_local global i64 0, align 8
@IB_EVENT_PKEY_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, i8*, %struct.ib_mad*, i64)* @smp_snoop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smp_snoop(%struct.ib_device* %0, i8* %1, %struct.ib_mad* %2, i64 %3) #0 {
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ib_mad*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ib_event, align 8
  %10 = alloca %struct.ib_port_info*, align 8
  %11 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ib_mad* %2, %struct.ib_mad** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %13 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %4
  %19 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %20 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %105

25:                                               ; preds = %18, %4
  %26 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %27 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %105

32:                                               ; preds = %25
  %33 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %34 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IB_SMP_ATTR_PORT_INFO, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %88

39:                                               ; preds = %32
  %40 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %41 = bitcast %struct.ib_mad* %40 to %struct.ib_smp*
  %42 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.ib_port_info*
  store %struct.ib_port_info* %44, %struct.ib_port_info** %10, align 8
  %45 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %46 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @be16_to_cpu(i32 %47)
  store i64 %48, i64* %11, align 8
  %49 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %50 = call i32 @to_mdev(%struct.ib_device* %49)
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @mthca_update_rate(i32 %50, i8* %51)
  %53 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %54 = call i32 @to_mdev(%struct.ib_device* %53)
  %55 = load i8*, i8** %6, align 8
  %56 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %57 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @be16_to_cpu(i32 %58)
  %60 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %61 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 15
  %64 = call i32 @update_sm_ah(i32 %54, i8* %55, i64 %59, i32 %63)
  %65 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %66 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %9, i32 0, i32 2
  store %struct.ib_device* %65, %struct.ib_device** %66, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %9, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %71 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 128
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %39
  %76 = load i32, i32* @IB_EVENT_CLIENT_REREGISTER, align 4
  %77 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %9, i32 0, i32 1
  store i32 %76, i32* %77, align 8
  %78 = call i32 @ib_dispatch_event(%struct.ib_event* %9)
  br label %79

79:                                               ; preds = %75, %39
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* %11, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* @IB_EVENT_LID_CHANGE, align 4
  %85 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %9, i32 0, i32 1
  store i32 %84, i32* %85, align 8
  %86 = call i32 @ib_dispatch_event(%struct.ib_event* %9)
  br label %87

87:                                               ; preds = %83, %79
  br label %88

88:                                               ; preds = %87, %32
  %89 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %90 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @IB_SMP_ATTR_PKEY_TABLE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %88
  %96 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %97 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %9, i32 0, i32 2
  store %struct.ib_device* %96, %struct.ib_device** %97, align 8
  %98 = load i32, i32* @IB_EVENT_PKEY_CHANGE, align 4
  %99 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %9, i32 0, i32 1
  store i32 %98, i32* %99, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %9, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  %103 = call i32 @ib_dispatch_event(%struct.ib_event* %9)
  br label %104

104:                                              ; preds = %95, %88
  br label %105

105:                                              ; preds = %104, %25, %18
  ret void
}

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @mthca_update_rate(i32, i8*) #1

declare dso_local i32 @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @update_sm_ah(i32, i8*, i64, i32) #1

declare dso_local i32 @ib_dispatch_event(%struct.ib_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
