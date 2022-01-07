; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_get_opa_cc_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_get_opa_cc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_smp = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_cc_table_attr = type { %struct.TYPE_4__*, i8* }
%struct.TYPE_4__ = type { i8* }
%struct.hfi1_ibport = type { i32 }
%struct.hfi1_pportdata = type { i32 }
%struct.ib_cc_table_entry_shadow = type { i32 }
%struct.cc_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ib_cc_table_entry_shadow*, i32 }
%struct.ib_mad_hdr = type { i32 }

@IB_CCT_ENTRIES = common dso_local global i32 0, align 4
@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32)* @__subn_get_opa_cc_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__subn_get_opa_cc_table(%struct.opa_smp* %0, i32 %1, i32* %2, %struct.ib_device* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.opa_smp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ib_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ib_cc_table_attr*, align 8
  %17 = alloca %struct.hfi1_ibport*, align 8
  %18 = alloca %struct.hfi1_pportdata*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.ib_cc_table_entry_shadow*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.cc_state*, align 8
  %27 = alloca i32, align 4
  store %struct.opa_smp* %0, %struct.opa_smp** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store %struct.ib_device* %3, %struct.ib_device** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %28 = load i32*, i32** %11, align 8
  %29 = bitcast i32* %28 to %struct.ib_cc_table_attr*
  store %struct.ib_cc_table_attr* %29, %struct.ib_cc_table_attr** %16, align 8
  %30 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %31 = load i32, i32* %13, align 4
  %32 = call %struct.hfi1_ibport* @to_iport(%struct.ib_device* %30, i32 %31)
  store %struct.hfi1_ibport* %32, %struct.hfi1_ibport** %17, align 8
  %33 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %17, align 8
  %34 = call %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport* %33)
  store %struct.hfi1_pportdata* %34, %struct.hfi1_pportdata** %18, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @OPA_AM_START_BLK(i32 %35)
  store i32 %36, i32* %19, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @OPA_AM_NBLK(i32 %37)
  store i32 %38, i32* %20, align 4
  %39 = load i32, i32* @IB_CCT_ENTRIES, align 4
  %40 = load i32, i32* %20, align 4
  %41 = mul nsw i32 %39, %40
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = mul i64 4, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %27, align 4
  %46 = load i32, i32* %20, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %61, label %48

48:                                               ; preds = %7
  %49 = load i32, i32* %27, align 4
  %50 = load i32, i32* %15, align 4
  %51 = call i64 @smp_length_check(i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %19, align 4
  %55 = load i32, i32* %20, align 4
  %56 = add nsw i32 %54, %55
  %57 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %18, align 8
  %58 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %56, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %53, %48, %7
  %62 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %63 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %64 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %68 = bitcast %struct.opa_smp* %67 to %struct.ib_mad_hdr*
  %69 = call i32 @reply(%struct.ib_mad_hdr* %68)
  store i32 %69, i32* %8, align 4
  br label %139

70:                                               ; preds = %53
  %71 = call i32 (...) @rcu_read_lock()
  %72 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %18, align 8
  %73 = call %struct.cc_state* @get_cc_state(%struct.hfi1_pportdata* %72)
  store %struct.cc_state* %73, %struct.cc_state** %26, align 8
  %74 = load %struct.cc_state*, %struct.cc_state** %26, align 8
  %75 = icmp ne %struct.cc_state* %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %70
  %77 = call i32 (...) @rcu_read_unlock()
  %78 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %79 = bitcast %struct.opa_smp* %78 to %struct.ib_mad_hdr*
  %80 = call i32 @reply(%struct.ib_mad_hdr* %79)
  store i32 %80, i32* %8, align 4
  br label %139

81:                                               ; preds = %70
  %82 = load i32, i32* %19, align 4
  %83 = load i32, i32* @IB_CCT_ENTRIES, align 4
  %84 = mul nsw i32 %82, %83
  store i32 %84, i32* %24, align 4
  %85 = load i32, i32* %24, align 4
  %86 = load i32, i32* @IB_CCT_ENTRIES, align 4
  %87 = load i32, i32* %20, align 4
  %88 = mul nsw i32 %86, %87
  %89 = add nsw i32 %85, %88
  store i32 %89, i32* %25, align 4
  %90 = load %struct.cc_state*, %struct.cc_state** %26, align 8
  %91 = getelementptr inbounds %struct.cc_state, %struct.cc_state* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i8* @cpu_to_be16(i32 %93)
  %95 = load %struct.ib_cc_table_attr*, %struct.ib_cc_table_attr** %16, align 8
  %96 = getelementptr inbounds %struct.ib_cc_table_attr, %struct.ib_cc_table_attr* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load %struct.cc_state*, %struct.cc_state** %26, align 8
  %98 = getelementptr inbounds %struct.cc_state, %struct.cc_state* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load %struct.ib_cc_table_entry_shadow*, %struct.ib_cc_table_entry_shadow** %99, align 8
  store %struct.ib_cc_table_entry_shadow* %100, %struct.ib_cc_table_entry_shadow** %21, align 8
  store i32 0, i32* %23, align 4
  %101 = load i32, i32* %24, align 4
  store i32 %101, i32* %22, align 4
  br label %102

102:                                              ; preds = %121, %81
  %103 = load i32, i32* %22, align 4
  %104 = load i32, i32* %25, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %126

106:                                              ; preds = %102
  %107 = load %struct.ib_cc_table_entry_shadow*, %struct.ib_cc_table_entry_shadow** %21, align 8
  %108 = load i32, i32* %22, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.ib_cc_table_entry_shadow, %struct.ib_cc_table_entry_shadow* %107, i64 %109
  %111 = getelementptr inbounds %struct.ib_cc_table_entry_shadow, %struct.ib_cc_table_entry_shadow* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @cpu_to_be16(i32 %112)
  %114 = load %struct.ib_cc_table_attr*, %struct.ib_cc_table_attr** %16, align 8
  %115 = getelementptr inbounds %struct.ib_cc_table_attr, %struct.ib_cc_table_attr* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load i32, i32* %23, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  store i8* %113, i8** %120, align 8
  br label %121

121:                                              ; preds = %106
  %122 = load i32, i32* %23, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %23, align 4
  %124 = load i32, i32* %22, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %22, align 4
  br label %102

126:                                              ; preds = %102
  %127 = call i32 (...) @rcu_read_unlock()
  %128 = load i32*, i32** %14, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  %131 = load i32, i32* %27, align 4
  %132 = load i32*, i32** %14, align 8
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, %131
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %130, %126
  %136 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %137 = bitcast %struct.opa_smp* %136 to %struct.ib_mad_hdr*
  %138 = call i32 @reply(%struct.ib_mad_hdr* %137)
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %135, %76, %61
  %140 = load i32, i32* %8, align 4
  ret i32 %140
}

declare dso_local %struct.hfi1_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local i32 @OPA_AM_START_BLK(i32) #1

declare dso_local i32 @OPA_AM_NBLK(i32) #1

declare dso_local i64 @smp_length_check(i32, i32) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cc_state* @get_cc_state(%struct.hfi1_pportdata*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i8* @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
