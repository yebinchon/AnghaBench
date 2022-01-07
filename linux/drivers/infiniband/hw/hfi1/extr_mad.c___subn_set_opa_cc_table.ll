; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_set_opa_cc_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_set_opa_cc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_smp = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_cc_table_attr = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hfi1_ibport = type { i32 }
%struct.hfi1_pportdata = type { i32, i32, i32, %struct.ib_cc_table_entry_shadow* }
%struct.ib_cc_table_entry_shadow = type { i32 }
%struct.ib_mad_hdr = type { i32 }

@IB_CCT_ENTRIES = common dso_local global i32 0, align 4
@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32)* @__subn_set_opa_cc_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__subn_set_opa_cc_table(%struct.opa_smp* %0, i32 %1, i32* %2, %struct.ib_device* %3, i32 %4, i32* %5, i32 %6) #0 {
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
  %26 = alloca i32, align 4
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
  %59 = load i32, i32* %58, align 8
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
  br label %155

70:                                               ; preds = %53
  %71 = load i32, i32* %19, align 4
  %72 = load i32, i32* @IB_CCT_ENTRIES, align 4
  %73 = mul nsw i32 %71, %72
  store i32 %73, i32* %24, align 4
  %74 = load i32, i32* %24, align 4
  %75 = load i32, i32* %20, align 4
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* @IB_CCT_ENTRIES, align 4
  %78 = mul nsw i32 %76, %77
  %79 = add nsw i32 %74, %78
  %80 = load %struct.ib_cc_table_attr*, %struct.ib_cc_table_attr** %16, align 8
  %81 = getelementptr inbounds %struct.ib_cc_table_attr, %struct.ib_cc_table_attr* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @be16_to_cpu(i32 %82)
  %84 = load i32, i32* @IB_CCT_ENTRIES, align 4
  %85 = srem i32 %83, %84
  %86 = add nsw i32 %79, %85
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %25, align 4
  %88 = load %struct.ib_cc_table_attr*, %struct.ib_cc_table_attr** %16, align 8
  %89 = getelementptr inbounds %struct.ib_cc_table_attr, %struct.ib_cc_table_attr* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @be16_to_cpu(i32 %90)
  store i32 %91, i32* %26, align 4
  %92 = load i32, i32* %26, align 4
  %93 = add nsw i32 %92, 1
  %94 = load i32, i32* %25, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %70
  %97 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %98 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %99 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %103 = bitcast %struct.opa_smp* %102 to %struct.ib_mad_hdr*
  %104 = call i32 @reply(%struct.ib_mad_hdr* %103)
  store i32 %104, i32* %8, align 4
  br label %155

105:                                              ; preds = %70
  %106 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %18, align 8
  %107 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %106, i32 0, i32 2
  %108 = call i32 @spin_lock(i32* %107)
  %109 = load i32, i32* %26, align 4
  %110 = add nsw i32 %109, 1
  %111 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %18, align 8
  %112 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %18, align 8
  %114 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %113, i32 0, i32 3
  %115 = load %struct.ib_cc_table_entry_shadow*, %struct.ib_cc_table_entry_shadow** %114, align 8
  store %struct.ib_cc_table_entry_shadow* %115, %struct.ib_cc_table_entry_shadow** %21, align 8
  store i32 0, i32* %23, align 4
  %116 = load i32, i32* %24, align 4
  store i32 %116, i32* %22, align 4
  br label %117

117:                                              ; preds = %136, %105
  %118 = load i32, i32* %22, align 4
  %119 = load i32, i32* %25, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %141

121:                                              ; preds = %117
  %122 = load %struct.ib_cc_table_attr*, %struct.ib_cc_table_attr** %16, align 8
  %123 = getelementptr inbounds %struct.ib_cc_table_attr, %struct.ib_cc_table_attr* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = load i32, i32* %23, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @be16_to_cpu(i32 %129)
  %131 = load %struct.ib_cc_table_entry_shadow*, %struct.ib_cc_table_entry_shadow** %21, align 8
  %132 = load i32, i32* %22, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.ib_cc_table_entry_shadow, %struct.ib_cc_table_entry_shadow* %131, i64 %133
  %135 = getelementptr inbounds %struct.ib_cc_table_entry_shadow, %struct.ib_cc_table_entry_shadow* %134, i32 0, i32 0
  store i32 %130, i32* %135, align 4
  br label %136

136:                                              ; preds = %121
  %137 = load i32, i32* %23, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %23, align 4
  %139 = load i32, i32* %22, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %22, align 4
  br label %117

141:                                              ; preds = %117
  %142 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %18, align 8
  %143 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %142, i32 0, i32 2
  %144 = call i32 @spin_unlock(i32* %143)
  %145 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %18, align 8
  %146 = call i32 @apply_cc_state(%struct.hfi1_pportdata* %145)
  %147 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %148 = load i32, i32* %10, align 4
  %149 = load i32*, i32** %11, align 8
  %150 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %151 = load i32, i32* %13, align 4
  %152 = load i32*, i32** %14, align 8
  %153 = load i32, i32* %15, align 4
  %154 = call i32 @__subn_get_opa_cc_table(%struct.opa_smp* %147, i32 %148, i32* %149, %struct.ib_device* %150, i32 %151, i32* %152, i32 %153)
  store i32 %154, i32* %8, align 4
  br label %155

155:                                              ; preds = %141, %96, %61
  %156 = load i32, i32* %8, align 4
  ret i32 %156
}

declare dso_local %struct.hfi1_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local i32 @OPA_AM_START_BLK(i32) #1

declare dso_local i32 @OPA_AM_NBLK(i32) #1

declare dso_local i64 @smp_length_check(i32, i32) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @apply_cc_state(%struct.hfi1_pportdata*) #1

declare dso_local i32 @__subn_get_opa_cc_table(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
