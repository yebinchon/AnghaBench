; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_cc_get_congestion_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_cc_get_congestion_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cc_mad = type { i64 }
%struct.ib_device = type { i32 }
%struct.ib_cc_congestion_setting_attr = type { %struct.TYPE_4__*, i8*, i8* }
%struct.TYPE_4__ = type { i32, i32, i8*, i32 }
%struct.qib_ibport = type { i32 }
%struct.qib_pportdata = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, %struct.ib_cc_congestion_entry_shadow* }
%struct.ib_cc_congestion_entry_shadow = type { i32, i32, i32, i32 }
%struct.ib_smp = type { i32 }

@IB_CC_CCS_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cc_mad*, %struct.ib_device*, i32)* @cc_get_congestion_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_get_congestion_setting(%struct.ib_cc_mad* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_cc_mad*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_cc_congestion_setting_attr*, align 8
  %9 = alloca %struct.qib_ibport*, align 8
  %10 = alloca %struct.qib_pportdata*, align 8
  %11 = alloca %struct.ib_cc_congestion_entry_shadow*, align 8
  store %struct.ib_cc_mad* %0, %struct.ib_cc_mad** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %4, align 8
  %13 = getelementptr inbounds %struct.ib_cc_mad, %struct.ib_cc_mad* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ib_cc_congestion_setting_attr*
  store %struct.ib_cc_congestion_setting_attr* %15, %struct.ib_cc_congestion_setting_attr** %8, align 8
  %16 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %16, i32 %17)
  store %struct.qib_ibport* %18, %struct.qib_ibport** %9, align 8
  %19 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %20 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %19)
  store %struct.qib_pportdata* %20, %struct.qib_pportdata** %10, align 8
  %21 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %4, align 8
  %22 = getelementptr inbounds %struct.ib_cc_mad, %struct.ib_cc_mad* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @memset(i64 %23, i32 0, i32 8)
  %25 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %26 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %25, i32 0, i32 0
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %29 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load %struct.ib_cc_congestion_entry_shadow*, %struct.ib_cc_congestion_entry_shadow** %31, align 8
  store %struct.ib_cc_congestion_entry_shadow* %32, %struct.ib_cc_congestion_entry_shadow** %11, align 8
  %33 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %34 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @cpu_to_be16(i32 %37)
  %39 = load %struct.ib_cc_congestion_setting_attr*, %struct.ib_cc_congestion_setting_attr** %8, align 8
  %40 = getelementptr inbounds %struct.ib_cc_congestion_setting_attr, %struct.ib_cc_congestion_setting_attr* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %42 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i8* @cpu_to_be16(i32 %45)
  %47 = load %struct.ib_cc_congestion_setting_attr*, %struct.ib_cc_congestion_setting_attr** %8, align 8
  %48 = getelementptr inbounds %struct.ib_cc_congestion_setting_attr, %struct.ib_cc_congestion_setting_attr* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %107, %3
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @IB_CC_CCS_ENTRIES, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %110

53:                                               ; preds = %49
  %54 = load %struct.ib_cc_congestion_entry_shadow*, %struct.ib_cc_congestion_entry_shadow** %11, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ib_cc_congestion_entry_shadow, %struct.ib_cc_congestion_entry_shadow* %54, i64 %56
  %58 = getelementptr inbounds %struct.ib_cc_congestion_entry_shadow, %struct.ib_cc_congestion_entry_shadow* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ib_cc_congestion_setting_attr*, %struct.ib_cc_congestion_setting_attr** %8, align 8
  %61 = getelementptr inbounds %struct.ib_cc_congestion_setting_attr, %struct.ib_cc_congestion_setting_attr* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  store i32 %59, i32* %66, align 8
  %67 = load %struct.ib_cc_congestion_entry_shadow*, %struct.ib_cc_congestion_entry_shadow** %11, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.ib_cc_congestion_entry_shadow, %struct.ib_cc_congestion_entry_shadow* %67, i64 %69
  %71 = getelementptr inbounds %struct.ib_cc_congestion_entry_shadow, %struct.ib_cc_congestion_entry_shadow* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @cpu_to_be16(i32 %72)
  %74 = load %struct.ib_cc_congestion_setting_attr*, %struct.ib_cc_congestion_setting_attr** %8, align 8
  %75 = getelementptr inbounds %struct.ib_cc_congestion_setting_attr, %struct.ib_cc_congestion_setting_attr* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  store i8* %73, i8** %80, align 8
  %81 = load %struct.ib_cc_congestion_entry_shadow*, %struct.ib_cc_congestion_entry_shadow** %11, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.ib_cc_congestion_entry_shadow, %struct.ib_cc_congestion_entry_shadow* %81, i64 %83
  %85 = getelementptr inbounds %struct.ib_cc_congestion_entry_shadow, %struct.ib_cc_congestion_entry_shadow* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ib_cc_congestion_setting_attr*, %struct.ib_cc_congestion_setting_attr** %8, align 8
  %88 = getelementptr inbounds %struct.ib_cc_congestion_setting_attr, %struct.ib_cc_congestion_setting_attr* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i32 %86, i32* %93, align 4
  %94 = load %struct.ib_cc_congestion_entry_shadow*, %struct.ib_cc_congestion_entry_shadow** %11, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.ib_cc_congestion_entry_shadow, %struct.ib_cc_congestion_entry_shadow* %94, i64 %96
  %98 = getelementptr inbounds %struct.ib_cc_congestion_entry_shadow, %struct.ib_cc_congestion_entry_shadow* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ib_cc_congestion_setting_attr*, %struct.ib_cc_congestion_setting_attr** %8, align 8
  %101 = getelementptr inbounds %struct.ib_cc_congestion_setting_attr, %struct.ib_cc_congestion_setting_attr* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  store i32 %99, i32* %106, align 8
  br label %107

107:                                              ; preds = %53
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %49

110:                                              ; preds = %49
  %111 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %112 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %111, i32 0, i32 0
  %113 = call i32 @spin_unlock(i32* %112)
  %114 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %4, align 8
  %115 = bitcast %struct.ib_cc_mad* %114 to %struct.ib_smp*
  %116 = call i32 @reply(%struct.ib_smp* %115)
  ret i32 %116
}

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
