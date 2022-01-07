; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_cc_get_congestion_control_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_cc_get_congestion_control_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cc_mad = type { i32, i64 }
%struct.ib_device = type { i32 }
%struct.ib_cc_table_attr = type { %struct.TYPE_4__*, i8* }
%struct.TYPE_4__ = type { i8* }
%struct.qib_ibport = type { i32 }
%struct.qib_pportdata = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.ib_cc_table_entry_shadow* }
%struct.ib_cc_table_entry_shadow = type { i32 }
%struct.ib_smp = type { i32 }

@IB_CC_TABLE_CAP_DEFAULT = common dso_local global i32 0, align 4
@IB_CCT_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cc_mad*, %struct.ib_device*, i32)* @cc_get_congestion_control_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_get_congestion_control_table(%struct.ib_cc_mad* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_cc_mad*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_cc_table_attr*, align 8
  %9 = alloca %struct.qib_ibport*, align 8
  %10 = alloca %struct.qib_pportdata*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ib_cc_table_entry_shadow*, align 8
  %15 = alloca i32, align 4
  store %struct.ib_cc_mad* %0, %struct.ib_cc_mad** %5, align 8
  store %struct.ib_device* %1, %struct.ib_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %5, align 8
  %17 = getelementptr inbounds %struct.ib_cc_mad, %struct.ib_cc_mad* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ib_cc_table_attr*
  store %struct.ib_cc_table_attr* %19, %struct.ib_cc_table_attr** %8, align 8
  %20 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %20, i32 %21)
  store %struct.qib_ibport* %22, %struct.qib_ibport** %9, align 8
  %23 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %24 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %23)
  store %struct.qib_pportdata* %24, %struct.qib_pportdata** %10, align 8
  %25 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %5, align 8
  %26 = getelementptr inbounds %struct.ib_cc_mad, %struct.ib_cc_mad* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @be32_to_cpu(i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @IB_CC_TABLE_CAP_DEFAULT, align 4
  %31 = sub nsw i32 %30, 1
  %32 = icmp sgt i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %122

34:                                               ; preds = %3
  %35 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %5, align 8
  %36 = getelementptr inbounds %struct.ib_cc_mad, %struct.ib_cc_mad* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @memset(i64 %37, i32 0, i32 8)
  %39 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %40 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %39, i32 0, i32 0
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %43 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* @IB_CCT_ENTRIES, align 4
  %49 = sdiv i32 %47, %48
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %34
  %53 = load i32, i32* %12, align 4
  %54 = sub nsw i32 %53, 1
  br label %56

55:                                               ; preds = %34
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi i32 [ %54, %52 ], [ 0, %55 ]
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %63 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %62, i32 0, i32 0
  %64 = call i32 @spin_unlock(i32* %63)
  br label %122

65:                                               ; preds = %56
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @cpu_to_be32(i32 %66)
  %68 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %5, align 8
  %69 = getelementptr inbounds %struct.ib_cc_mad, %struct.ib_cc_mad* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @IB_CCT_ENTRIES, align 4
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  %73 = mul nsw i32 %70, %72
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = call i8* @cpu_to_be16(i32 %76)
  %78 = load %struct.ib_cc_table_attr*, %struct.ib_cc_table_attr** %8, align 8
  %79 = getelementptr inbounds %struct.ib_cc_table_attr, %struct.ib_cc_table_attr* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %81 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %80, i32 0, i32 1
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load %struct.ib_cc_table_entry_shadow*, %struct.ib_cc_table_entry_shadow** %83, align 8
  %85 = load i32, i32* @IB_CCT_ENTRIES, align 4
  %86 = load i32, i32* %11, align 4
  %87 = mul nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.ib_cc_table_entry_shadow, %struct.ib_cc_table_entry_shadow* %84, i64 %88
  store %struct.ib_cc_table_entry_shadow* %89, %struct.ib_cc_table_entry_shadow** %14, align 8
  %90 = load i32, i32* @IB_CCT_ENTRIES, align 4
  %91 = load i32, i32* %13, align 4
  %92 = srem i32 %91, %90
  store i32 %92, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %93

93:                                               ; preds = %112, %65
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp sle i32 %94, %95
  br i1 %96, label %97, label %115

97:                                               ; preds = %93
  %98 = load %struct.ib_cc_table_entry_shadow*, %struct.ib_cc_table_entry_shadow** %14, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.ib_cc_table_entry_shadow, %struct.ib_cc_table_entry_shadow* %98, i64 %100
  %102 = getelementptr inbounds %struct.ib_cc_table_entry_shadow, %struct.ib_cc_table_entry_shadow* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @cpu_to_be16(i32 %103)
  %105 = load %struct.ib_cc_table_attr*, %struct.ib_cc_table_attr** %8, align 8
  %106 = getelementptr inbounds %struct.ib_cc_table_attr, %struct.ib_cc_table_attr* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  store i8* %104, i8** %111, align 8
  br label %112

112:                                              ; preds = %97
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %15, align 4
  br label %93

115:                                              ; preds = %93
  %116 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %117 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %116, i32 0, i32 0
  %118 = call i32 @spin_unlock(i32* %117)
  %119 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %5, align 8
  %120 = bitcast %struct.ib_cc_mad* %119 to %struct.ib_smp*
  %121 = call i32 @reply(%struct.ib_smp* %120)
  store i32 %121, i32* %4, align 4
  br label %126

122:                                              ; preds = %61, %33
  %123 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %5, align 8
  %124 = bitcast %struct.ib_cc_mad* %123 to %struct.ib_smp*
  %125 = call i32 @reply_failure(%struct.ib_smp* %124)
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %122, %115
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

declare dso_local i32 @reply_failure(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
