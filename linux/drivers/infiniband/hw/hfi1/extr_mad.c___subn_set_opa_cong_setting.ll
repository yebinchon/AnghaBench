; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_set_opa_cong_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_set_opa_cong_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_smp = type { i32 }
%struct.ib_device = type { i32 }
%struct.opa_congestion_setting_attr = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.hfi1_ibport = type { i32 }
%struct.hfi1_pportdata = type { i32, %struct.opa_congestion_setting_entry_shadow*, i32 }
%struct.opa_congestion_setting_entry_shadow = type { i32, i32, i32, i32 }
%struct.ib_mad_hdr = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@OPA_MAX_SLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32)* @__subn_set_opa_cong_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__subn_set_opa_cong_setting(%struct.opa_smp* %0, i32 %1, i32* %2, %struct.ib_device* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.opa_smp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ib_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.opa_congestion_setting_attr*, align 8
  %17 = alloca %struct.hfi1_ibport*, align 8
  %18 = alloca %struct.hfi1_pportdata*, align 8
  %19 = alloca %struct.opa_congestion_setting_entry_shadow*, align 8
  %20 = alloca i32, align 4
  store %struct.opa_smp* %0, %struct.opa_smp** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store %struct.ib_device* %3, %struct.ib_device** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %21 = load i32*, i32** %11, align 8
  %22 = bitcast i32* %21 to %struct.opa_congestion_setting_attr*
  store %struct.opa_congestion_setting_attr* %22, %struct.opa_congestion_setting_attr** %16, align 8
  %23 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %24 = load i32, i32* %13, align 4
  %25 = call %struct.hfi1_ibport* @to_iport(%struct.ib_device* %23, i32 %24)
  store %struct.hfi1_ibport* %25, %struct.hfi1_ibport** %17, align 8
  %26 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %17, align 8
  %27 = call %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport* %26)
  store %struct.hfi1_pportdata* %27, %struct.hfi1_pportdata** %18, align 8
  %28 = load i32, i32* %15, align 4
  %29 = call i64 @smp_length_check(i32 16, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %7
  %32 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %33 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %34 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %38 = bitcast %struct.opa_smp* %37 to %struct.ib_mad_hdr*
  %39 = call i32 @reply(%struct.ib_mad_hdr* %38)
  store i32 %39, i32* %8, align 4
  br label %128

40:                                               ; preds = %7
  %41 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %18, align 8
  %42 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %41, i32 0, i32 0
  %43 = call i32 @spin_lock(i32* %42)
  %44 = load %struct.opa_congestion_setting_attr*, %struct.opa_congestion_setting_attr** %16, align 8
  %45 = getelementptr inbounds %struct.opa_congestion_setting_attr, %struct.opa_congestion_setting_attr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @be32_to_cpu(i32 %46)
  %48 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %18, align 8
  %49 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %18, align 8
  %51 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %50, i32 0, i32 1
  %52 = load %struct.opa_congestion_setting_entry_shadow*, %struct.opa_congestion_setting_entry_shadow** %51, align 8
  store %struct.opa_congestion_setting_entry_shadow* %52, %struct.opa_congestion_setting_entry_shadow** %19, align 8
  store i32 0, i32* %20, align 4
  br label %53

53:                                               ; preds = %111, %40
  %54 = load i32, i32* %20, align 4
  %55 = load i32, i32* @OPA_MAX_SLS, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %114

57:                                               ; preds = %53
  %58 = load %struct.opa_congestion_setting_attr*, %struct.opa_congestion_setting_attr** %16, align 8
  %59 = getelementptr inbounds %struct.opa_congestion_setting_attr, %struct.opa_congestion_setting_attr* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %20, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.opa_congestion_setting_entry_shadow*, %struct.opa_congestion_setting_entry_shadow** %19, align 8
  %67 = load i32, i32* %20, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.opa_congestion_setting_entry_shadow, %struct.opa_congestion_setting_entry_shadow* %66, i64 %68
  %70 = getelementptr inbounds %struct.opa_congestion_setting_entry_shadow, %struct.opa_congestion_setting_entry_shadow* %69, i32 0, i32 3
  store i32 %65, i32* %70, align 4
  %71 = load %struct.opa_congestion_setting_attr*, %struct.opa_congestion_setting_attr** %16, align 8
  %72 = getelementptr inbounds %struct.opa_congestion_setting_attr, %struct.opa_congestion_setting_attr* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %20, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @be16_to_cpu(i32 %78)
  %80 = load %struct.opa_congestion_setting_entry_shadow*, %struct.opa_congestion_setting_entry_shadow** %19, align 8
  %81 = load i32, i32* %20, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.opa_congestion_setting_entry_shadow, %struct.opa_congestion_setting_entry_shadow* %80, i64 %82
  %84 = getelementptr inbounds %struct.opa_congestion_setting_entry_shadow, %struct.opa_congestion_setting_entry_shadow* %83, i32 0, i32 2
  store i32 %79, i32* %84, align 4
  %85 = load %struct.opa_congestion_setting_attr*, %struct.opa_congestion_setting_attr** %16, align 8
  %86 = getelementptr inbounds %struct.opa_congestion_setting_attr, %struct.opa_congestion_setting_attr* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i32, i32* %20, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.opa_congestion_setting_entry_shadow*, %struct.opa_congestion_setting_entry_shadow** %19, align 8
  %94 = load i32, i32* %20, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.opa_congestion_setting_entry_shadow, %struct.opa_congestion_setting_entry_shadow* %93, i64 %95
  %97 = getelementptr inbounds %struct.opa_congestion_setting_entry_shadow, %struct.opa_congestion_setting_entry_shadow* %96, i32 0, i32 1
  store i32 %92, i32* %97, align 4
  %98 = load %struct.opa_congestion_setting_attr*, %struct.opa_congestion_setting_attr** %16, align 8
  %99 = getelementptr inbounds %struct.opa_congestion_setting_attr, %struct.opa_congestion_setting_attr* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i32, i32* %20, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.opa_congestion_setting_entry_shadow*, %struct.opa_congestion_setting_entry_shadow** %19, align 8
  %107 = load i32, i32* %20, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.opa_congestion_setting_entry_shadow, %struct.opa_congestion_setting_entry_shadow* %106, i64 %108
  %110 = getelementptr inbounds %struct.opa_congestion_setting_entry_shadow, %struct.opa_congestion_setting_entry_shadow* %109, i32 0, i32 0
  store i32 %105, i32* %110, align 4
  br label %111

111:                                              ; preds = %57
  %112 = load i32, i32* %20, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %20, align 4
  br label %53

114:                                              ; preds = %53
  %115 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %18, align 8
  %116 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %115, i32 0, i32 0
  %117 = call i32 @spin_unlock(i32* %116)
  %118 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %18, align 8
  %119 = call i32 @apply_cc_state(%struct.hfi1_pportdata* %118)
  %120 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load i32*, i32** %11, align 8
  %123 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %124 = load i32, i32* %13, align 4
  %125 = load i32*, i32** %14, align 8
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @__subn_get_opa_cong_setting(%struct.opa_smp* %120, i32 %121, i32* %122, %struct.ib_device* %123, i32 %124, i32* %125, i32 %126)
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %114, %31
  %129 = load i32, i32* %8, align 4
  ret i32 %129
}

declare dso_local %struct.hfi1_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local i64 @smp_length_check(i32, i32) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @apply_cc_state(%struct.hfi1_pportdata*) #1

declare dso_local i32 @__subn_get_opa_cong_setting(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
