; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_cc_set_congestion_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_cc_set_congestion_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cc_mad = type { i64 }
%struct.ib_device = type { i32 }
%struct.ib_cc_congestion_setting_attr = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.qib_ibport = type { i32 }
%struct.qib_pportdata = type { %struct.TYPE_3__*, i8* }
%struct.TYPE_3__ = type { i32, i32, i8*, i32 }
%struct.ib_smp = type { i32 }

@IB_CC_CCS_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cc_mad*, %struct.ib_device*, i32)* @cc_set_congestion_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_set_congestion_setting(%struct.ib_cc_mad* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_cc_mad*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_cc_congestion_setting_attr*, align 8
  %8 = alloca %struct.qib_ibport*, align 8
  %9 = alloca %struct.qib_pportdata*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_cc_mad* %0, %struct.ib_cc_mad** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %4, align 8
  %12 = getelementptr inbounds %struct.ib_cc_mad, %struct.ib_cc_mad* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.ib_cc_congestion_setting_attr*
  store %struct.ib_cc_congestion_setting_attr* %14, %struct.ib_cc_congestion_setting_attr** %7, align 8
  %15 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %15, i32 %16)
  store %struct.qib_ibport* %17, %struct.qib_ibport** %8, align 8
  %18 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %19 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %18)
  store %struct.qib_pportdata* %19, %struct.qib_pportdata** %9, align 8
  %20 = load %struct.ib_cc_congestion_setting_attr*, %struct.ib_cc_congestion_setting_attr** %7, align 8
  %21 = getelementptr inbounds %struct.ib_cc_congestion_setting_attr, %struct.ib_cc_congestion_setting_attr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @be16_to_cpu(i32 %22)
  %24 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %25 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %92, %3
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @IB_CC_CCS_ENTRIES, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %95

30:                                               ; preds = %26
  %31 = load %struct.ib_cc_congestion_setting_attr*, %struct.ib_cc_congestion_setting_attr** %7, align 8
  %32 = getelementptr inbounds %struct.ib_cc_congestion_setting_attr, %struct.ib_cc_congestion_setting_attr* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %40 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  store i32 %38, i32* %45, align 8
  %46 = load %struct.ib_cc_congestion_setting_attr*, %struct.ib_cc_congestion_setting_attr** %7, align 8
  %47 = getelementptr inbounds %struct.ib_cc_congestion_setting_attr, %struct.ib_cc_congestion_setting_attr* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @be16_to_cpu(i32 %53)
  %55 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %56 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  store i8* %54, i8** %61, align 8
  %62 = load %struct.ib_cc_congestion_setting_attr*, %struct.ib_cc_congestion_setting_attr** %7, align 8
  %63 = getelementptr inbounds %struct.ib_cc_congestion_setting_attr, %struct.ib_cc_congestion_setting_attr* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %71 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i32 %69, i32* %76, align 4
  %77 = load %struct.ib_cc_congestion_setting_attr*, %struct.ib_cc_congestion_setting_attr** %7, align 8
  %78 = getelementptr inbounds %struct.ib_cc_congestion_setting_attr, %struct.ib_cc_congestion_setting_attr* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %86 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i32 %84, i32* %91, align 8
  br label %92

92:                                               ; preds = %30
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %10, align 4
  br label %26

95:                                               ; preds = %26
  %96 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %4, align 8
  %97 = bitcast %struct.ib_cc_mad* %96 to %struct.ib_smp*
  %98 = call i32 @reply(%struct.ib_smp* %97)
  ret i32 %98
}

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
