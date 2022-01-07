; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_v10.c_init_mqd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_v10.c_init_mqd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqd_manager = type { i32 (%struct.mqd_manager*, %struct.v10_compute_mqd*, %struct.queue_properties*)*, %struct.TYPE_2__* }
%struct.v10_compute_mqd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i64 }
%struct.kfd_mem_obj = type { i32, i64 }
%struct.queue_properties = type { i64, i32, i32, i32 }

@CP_HQD_PERSISTENT_STATE__PRELOAD_REQ_MASK = common dso_local global i32 0, align 4
@CP_HQD_PERSISTENT_STATE__PRELOAD_SIZE__SHIFT = common dso_local global i32 0, align 4
@CP_MQD_CONTROL__PRIV_STATE__SHIFT = common dso_local global i32 0, align 4
@CP_HQD_QUANTUM__QUANTUM_EN__SHIFT = common dso_local global i32 0, align 4
@CP_HQD_QUANTUM__QUANTUM_SCALE__SHIFT = common dso_local global i32 0, align 4
@CP_HQD_QUANTUM__QUANTUM_DURATION__SHIFT = common dso_local global i32 0, align 4
@KFD_QUEUE_FORMAT_AQL = common dso_local global i64 0, align 8
@CP_HQD_AQL_CONTROL__CONTROL0__SHIFT = common dso_local global i32 0, align 4
@CP_HQD_PERSISTENT_STATE__QSWITCH_MODE__SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mqd_manager*, i8**, %struct.kfd_mem_obj*, i32*, %struct.queue_properties*)* @init_mqd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_mqd(%struct.mqd_manager* %0, i8** %1, %struct.kfd_mem_obj* %2, i32* %3, %struct.queue_properties* %4) #0 {
  %6 = alloca %struct.mqd_manager*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.kfd_mem_obj*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.queue_properties*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.v10_compute_mqd*, align 8
  store %struct.mqd_manager* %0, %struct.mqd_manager** %6, align 8
  store i8** %1, i8*** %7, align 8
  store %struct.kfd_mem_obj* %2, %struct.kfd_mem_obj** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.queue_properties* %4, %struct.queue_properties** %10, align 8
  %13 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %8, align 8
  %14 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.v10_compute_mqd*
  store %struct.v10_compute_mqd* %16, %struct.v10_compute_mqd** %12, align 8
  %17 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %8, align 8
  %18 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  %20 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %12, align 8
  %21 = call i32 @memset(%struct.v10_compute_mqd* %20, i32 0, i32 96)
  %22 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %12, align 8
  %23 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %22, i32 0, i32 0
  store i32 -1070528512, i32* %23, align 8
  %24 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %12, align 8
  %25 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %12, align 8
  %27 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %26, i32 0, i32 2
  store i32 -1, i32* %27, align 8
  %28 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %12, align 8
  %29 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %28, i32 0, i32 3
  store i32 -1, i32* %29, align 4
  %30 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %12, align 8
  %31 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %30, i32 0, i32 4
  store i32 -1, i32* %31, align 8
  %32 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %12, align 8
  %33 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %32, i32 0, i32 5
  store i32 -1, i32* %33, align 4
  %34 = load i32, i32* @CP_HQD_PERSISTENT_STATE__PRELOAD_REQ_MASK, align 4
  %35 = load i32, i32* @CP_HQD_PERSISTENT_STATE__PRELOAD_SIZE__SHIFT, align 4
  %36 = shl i32 83, %35
  %37 = or i32 %34, %36
  %38 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %12, align 8
  %39 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @CP_MQD_CONTROL__PRIV_STATE__SHIFT, align 4
  %41 = shl i32 1, %40
  %42 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %12, align 8
  %43 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i8* @lower_32_bits(i32 %44)
  %46 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %12, align 8
  %47 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %46, i32 0, i32 19
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i8* @upper_32_bits(i32 %48)
  %50 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %12, align 8
  %51 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %50, i32 0, i32 18
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* @CP_HQD_QUANTUM__QUANTUM_EN__SHIFT, align 4
  %53 = shl i32 1, %52
  %54 = load i32, i32* @CP_HQD_QUANTUM__QUANTUM_SCALE__SHIFT, align 4
  %55 = shl i32 1, %54
  %56 = or i32 %53, %55
  %57 = load i32, i32* @CP_HQD_QUANTUM__QUANTUM_DURATION__SHIFT, align 4
  %58 = shl i32 10, %57
  %59 = or i32 %56, %58
  %60 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %12, align 8
  %61 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %60, i32 0, i32 8
  store i32 %59, i32* %61, align 8
  %62 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %12, align 8
  %63 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %62, i32 0, i32 9
  store i32 1, i32* %63, align 4
  %64 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %12, align 8
  %65 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %64, i32 0, i32 10
  store i32 15, i32* %65, align 8
  %66 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %67 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @KFD_QUEUE_FORMAT_AQL, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %5
  %72 = load i32, i32* @CP_HQD_AQL_CONTROL__CONTROL0__SHIFT, align 4
  %73 = shl i32 1, %72
  %74 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %12, align 8
  %75 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %74, i32 0, i32 11
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %71, %5
  %77 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %78 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %122

83:                                               ; preds = %76
  %84 = load i32, i32* @CP_HQD_PERSISTENT_STATE__QSWITCH_MODE__SHIFT, align 4
  %85 = shl i32 1, %84
  %86 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %12, align 8
  %87 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %91 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i8* @lower_32_bits(i32 %92)
  %94 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %12, align 8
  %95 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %94, i32 0, i32 17
  store i8* %93, i8** %95, align 8
  %96 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %97 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i8* @upper_32_bits(i32 %98)
  %100 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %12, align 8
  %101 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %100, i32 0, i32 16
  store i8* %99, i8** %101, align 8
  %102 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %103 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %12, align 8
  %106 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %105, i32 0, i32 15
  store i32 %104, i32* %106, align 4
  %107 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %108 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %12, align 8
  %111 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %110, i32 0, i32 14
  store i32 %109, i32* %111, align 8
  %112 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %113 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %12, align 8
  %116 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %115, i32 0, i32 13
  store i32 %114, i32* %116, align 4
  %117 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %118 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %12, align 8
  %121 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %120, i32 0, i32 12
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %83, %76
  %123 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %12, align 8
  %124 = bitcast %struct.v10_compute_mqd* %123 to i8*
  %125 = load i8**, i8*** %7, align 8
  store i8* %124, i8** %125, align 8
  %126 = load i32*, i32** %9, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load i32, i32* %11, align 4
  %130 = load i32*, i32** %9, align 8
  store i32 %129, i32* %130, align 4
  br label %131

131:                                              ; preds = %128, %122
  %132 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %133 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %132, i32 0, i32 0
  %134 = load i32 (%struct.mqd_manager*, %struct.v10_compute_mqd*, %struct.queue_properties*)*, i32 (%struct.mqd_manager*, %struct.v10_compute_mqd*, %struct.queue_properties*)** %133, align 8
  %135 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %136 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %12, align 8
  %137 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %138 = call i32 %134(%struct.mqd_manager* %135, %struct.v10_compute_mqd* %136, %struct.queue_properties* %137)
  ret void
}

declare dso_local i32 @memset(%struct.v10_compute_mqd*, i32, i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
