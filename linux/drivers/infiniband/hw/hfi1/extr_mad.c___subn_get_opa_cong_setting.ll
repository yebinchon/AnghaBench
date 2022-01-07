; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_get_opa_cong_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_get_opa_cong_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_smp = type { i32 }
%struct.ib_device = type { i32 }
%struct.opa_congestion_setting_attr = type { %struct.TYPE_4__*, i32, i8* }
%struct.TYPE_4__ = type { i32, i32, i8*, i32 }
%struct.hfi1_ibport = type { i32 }
%struct.hfi1_pportdata = type { i32 }
%struct.opa_congestion_setting_entry_shadow = type { i32, i32, i32, i32 }
%struct.cc_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, %struct.opa_congestion_setting_entry_shadow* }
%struct.ib_mad_hdr = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@OPA_MAX_SLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32)* @__subn_get_opa_cong_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__subn_get_opa_cong_setting(%struct.opa_smp* %0, i32 %1, i32* %2, %struct.ib_device* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.opa_smp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ib_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.opa_congestion_setting_attr*, align 8
  %18 = alloca %struct.hfi1_ibport*, align 8
  %19 = alloca %struct.hfi1_pportdata*, align 8
  %20 = alloca %struct.opa_congestion_setting_entry_shadow*, align 8
  %21 = alloca %struct.cc_state*, align 8
  store %struct.opa_smp* %0, %struct.opa_smp** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store %struct.ib_device* %3, %struct.ib_device** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %22 = load i32*, i32** %11, align 8
  %23 = bitcast i32* %22 to %struct.opa_congestion_setting_attr*
  store %struct.opa_congestion_setting_attr* %23, %struct.opa_congestion_setting_attr** %17, align 8
  %24 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %25 = load i32, i32* %13, align 4
  %26 = call %struct.hfi1_ibport* @to_iport(%struct.ib_device* %24, i32 %25)
  store %struct.hfi1_ibport* %26, %struct.hfi1_ibport** %18, align 8
  %27 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %18, align 8
  %28 = call %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport* %27)
  store %struct.hfi1_pportdata* %28, %struct.hfi1_pportdata** %19, align 8
  %29 = load i32, i32* %15, align 4
  %30 = call i64 @smp_length_check(i32 24, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %7
  %33 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %34 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %35 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %39 = bitcast %struct.opa_smp* %38 to %struct.ib_mad_hdr*
  %40 = call i32 @reply(%struct.ib_mad_hdr* %39)
  store i32 %40, i32* %8, align 4
  br label %146

41:                                               ; preds = %7
  %42 = call i32 (...) @rcu_read_lock()
  %43 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %19, align 8
  %44 = call %struct.cc_state* @get_cc_state(%struct.hfi1_pportdata* %43)
  store %struct.cc_state* %44, %struct.cc_state** %21, align 8
  %45 = load %struct.cc_state*, %struct.cc_state** %21, align 8
  %46 = icmp ne %struct.cc_state* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = call i32 (...) @rcu_read_unlock()
  %49 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %50 = bitcast %struct.opa_smp* %49 to %struct.ib_mad_hdr*
  %51 = call i32 @reply(%struct.ib_mad_hdr* %50)
  store i32 %51, i32* %8, align 4
  br label %146

52:                                               ; preds = %41
  %53 = load %struct.cc_state*, %struct.cc_state** %21, align 8
  %54 = getelementptr inbounds %struct.cc_state, %struct.cc_state* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load %struct.opa_congestion_setting_entry_shadow*, %struct.opa_congestion_setting_entry_shadow** %55, align 8
  store %struct.opa_congestion_setting_entry_shadow* %56, %struct.opa_congestion_setting_entry_shadow** %20, align 8
  %57 = load %struct.cc_state*, %struct.cc_state** %21, align 8
  %58 = getelementptr inbounds %struct.cc_state, %struct.cc_state* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @cpu_to_be16(i32 %60)
  %62 = load %struct.opa_congestion_setting_attr*, %struct.opa_congestion_setting_attr** %17, align 8
  %63 = getelementptr inbounds %struct.opa_congestion_setting_attr, %struct.opa_congestion_setting_attr* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load %struct.cc_state*, %struct.cc_state** %21, align 8
  %65 = getelementptr inbounds %struct.cc_state, %struct.cc_state* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @cpu_to_be32(i32 %67)
  %69 = load %struct.opa_congestion_setting_attr*, %struct.opa_congestion_setting_attr** %17, align 8
  %70 = getelementptr inbounds %struct.opa_congestion_setting_attr, %struct.opa_congestion_setting_attr* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  store i32 0, i32* %16, align 4
  br label %71

71:                                               ; preds = %129, %52
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* @OPA_MAX_SLS, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %132

75:                                               ; preds = %71
  %76 = load %struct.opa_congestion_setting_entry_shadow*, %struct.opa_congestion_setting_entry_shadow** %20, align 8
  %77 = load i32, i32* %16, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.opa_congestion_setting_entry_shadow, %struct.opa_congestion_setting_entry_shadow* %76, i64 %78
  %80 = getelementptr inbounds %struct.opa_congestion_setting_entry_shadow, %struct.opa_congestion_setting_entry_shadow* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.opa_congestion_setting_attr*, %struct.opa_congestion_setting_attr** %17, align 8
  %83 = getelementptr inbounds %struct.opa_congestion_setting_attr, %struct.opa_congestion_setting_attr* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %16, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 3
  store i32 %81, i32* %88, align 8
  %89 = load %struct.opa_congestion_setting_entry_shadow*, %struct.opa_congestion_setting_entry_shadow** %20, align 8
  %90 = load i32, i32* %16, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.opa_congestion_setting_entry_shadow, %struct.opa_congestion_setting_entry_shadow* %89, i64 %91
  %93 = getelementptr inbounds %struct.opa_congestion_setting_entry_shadow, %struct.opa_congestion_setting_entry_shadow* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @cpu_to_be16(i32 %94)
  %96 = load %struct.opa_congestion_setting_attr*, %struct.opa_congestion_setting_attr** %17, align 8
  %97 = getelementptr inbounds %struct.opa_congestion_setting_attr, %struct.opa_congestion_setting_attr* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  store i8* %95, i8** %102, align 8
  %103 = load %struct.opa_congestion_setting_entry_shadow*, %struct.opa_congestion_setting_entry_shadow** %20, align 8
  %104 = load i32, i32* %16, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.opa_congestion_setting_entry_shadow, %struct.opa_congestion_setting_entry_shadow* %103, i64 %105
  %107 = getelementptr inbounds %struct.opa_congestion_setting_entry_shadow, %struct.opa_congestion_setting_entry_shadow* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.opa_congestion_setting_attr*, %struct.opa_congestion_setting_attr** %17, align 8
  %110 = getelementptr inbounds %struct.opa_congestion_setting_attr, %struct.opa_congestion_setting_attr* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load i32, i32* %16, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  store i32 %108, i32* %115, align 4
  %116 = load %struct.opa_congestion_setting_entry_shadow*, %struct.opa_congestion_setting_entry_shadow** %20, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.opa_congestion_setting_entry_shadow, %struct.opa_congestion_setting_entry_shadow* %116, i64 %118
  %120 = getelementptr inbounds %struct.opa_congestion_setting_entry_shadow, %struct.opa_congestion_setting_entry_shadow* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.opa_congestion_setting_attr*, %struct.opa_congestion_setting_attr** %17, align 8
  %123 = getelementptr inbounds %struct.opa_congestion_setting_attr, %struct.opa_congestion_setting_attr* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = load i32, i32* %16, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  store i32 %121, i32* %128, align 8
  br label %129

129:                                              ; preds = %75
  %130 = load i32, i32* %16, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %16, align 4
  br label %71

132:                                              ; preds = %71
  %133 = call i32 (...) @rcu_read_unlock()
  %134 = load i32*, i32** %14, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %142

136:                                              ; preds = %132
  %137 = load i32*, i32** %14, align 8
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = add i64 %139, 24
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %137, align 4
  br label %142

142:                                              ; preds = %136, %132
  %143 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %144 = bitcast %struct.opa_smp* %143 to %struct.ib_mad_hdr*
  %145 = call i32 @reply(%struct.ib_mad_hdr* %144)
  store i32 %145, i32* %8, align 4
  br label %146

146:                                              ; preds = %142, %47, %32
  %147 = load i32, i32* %8, align 4
  ret i32 %147
}

declare dso_local %struct.hfi1_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local i64 @smp_length_check(i32, i32) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cc_state* @get_cc_state(%struct.hfi1_pportdata*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
