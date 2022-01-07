; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_v9.c_init_mqd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_v9.c_init_mqd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqd_manager = type { i32 (%struct.mqd_manager*, %struct.v9_mqd*, %struct.queue_properties*)*, %struct.TYPE_2__* }
%struct.v9_mqd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i64 }
%struct.kfd_mem_obj = type { i64, i64 }
%struct.queue_properties = type { i64, i32, i32, i64, i64 }

@CP_HQD_PERSISTENT_STATE__PRELOAD_REQ_MASK = common dso_local global i32 0, align 4
@CP_HQD_PERSISTENT_STATE__PRELOAD_SIZE__SHIFT = common dso_local global i32 0, align 4
@CP_MQD_CONTROL__PRIV_STATE__SHIFT = common dso_local global i32 0, align 4
@CP_HQD_QUANTUM__QUANTUM_EN__SHIFT = common dso_local global i32 0, align 4
@CP_HQD_QUANTUM__QUANTUM_SCALE__SHIFT = common dso_local global i32 0, align 4
@CP_HQD_QUANTUM__QUANTUM_DURATION__SHIFT = common dso_local global i32 0, align 4
@KFD_QUEUE_FORMAT_AQL = common dso_local global i64 0, align 8
@CP_HQD_AQL_CONTROL__CONTROL0__SHIFT = common dso_local global i32 0, align 4
@COMPUTE_PGM_RSRC2__TRAP_PRESENT__SHIFT = common dso_local global i32 0, align 4
@CP_HQD_PERSISTENT_STATE__QSWITCH_MODE__SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mqd_manager*, i8**, %struct.kfd_mem_obj*, i64*, %struct.queue_properties*)* @init_mqd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_mqd(%struct.mqd_manager* %0, i8** %1, %struct.kfd_mem_obj* %2, i64* %3, %struct.queue_properties* %4) #0 {
  %6 = alloca %struct.mqd_manager*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.kfd_mem_obj*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.queue_properties*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.v9_mqd*, align 8
  store %struct.mqd_manager* %0, %struct.mqd_manager** %6, align 8
  store i8** %1, i8*** %7, align 8
  store %struct.kfd_mem_obj* %2, %struct.kfd_mem_obj** %8, align 8
  store i64* %3, i64** %9, align 8
  store %struct.queue_properties* %4, %struct.queue_properties** %10, align 8
  %13 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %8, align 8
  %14 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.v9_mqd*
  store %struct.v9_mqd* %16, %struct.v9_mqd** %12, align 8
  %17 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %8, align 8
  %18 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %11, align 8
  %20 = load %struct.v9_mqd*, %struct.v9_mqd** %12, align 8
  %21 = call i32 @memset(%struct.v9_mqd* %20, i32 0, i32 112)
  %22 = load %struct.v9_mqd*, %struct.v9_mqd** %12, align 8
  %23 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %22, i32 0, i32 0
  store i32 -1070528512, i32* %23, align 8
  %24 = load %struct.v9_mqd*, %struct.v9_mqd** %12, align 8
  %25 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = load %struct.v9_mqd*, %struct.v9_mqd** %12, align 8
  %27 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %26, i32 0, i32 2
  store i32 -1, i32* %27, align 8
  %28 = load %struct.v9_mqd*, %struct.v9_mqd** %12, align 8
  %29 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %28, i32 0, i32 3
  store i32 -1, i32* %29, align 4
  %30 = load %struct.v9_mqd*, %struct.v9_mqd** %12, align 8
  %31 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %30, i32 0, i32 4
  store i32 -1, i32* %31, align 8
  %32 = load %struct.v9_mqd*, %struct.v9_mqd** %12, align 8
  %33 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %32, i32 0, i32 5
  store i32 -1, i32* %33, align 4
  %34 = load %struct.v9_mqd*, %struct.v9_mqd** %12, align 8
  %35 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %34, i32 0, i32 6
  store i32 -1, i32* %35, align 8
  %36 = load %struct.v9_mqd*, %struct.v9_mqd** %12, align 8
  %37 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %36, i32 0, i32 7
  store i32 -1, i32* %37, align 4
  %38 = load %struct.v9_mqd*, %struct.v9_mqd** %12, align 8
  %39 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %38, i32 0, i32 8
  store i32 -1, i32* %39, align 8
  %40 = load %struct.v9_mqd*, %struct.v9_mqd** %12, align 8
  %41 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %40, i32 0, i32 9
  store i32 -1, i32* %41, align 4
  %42 = load i32, i32* @CP_HQD_PERSISTENT_STATE__PRELOAD_REQ_MASK, align 4
  %43 = load i32, i32* @CP_HQD_PERSISTENT_STATE__PRELOAD_SIZE__SHIFT, align 4
  %44 = shl i32 83, %43
  %45 = or i32 %42, %44
  %46 = load %struct.v9_mqd*, %struct.v9_mqd** %12, align 8
  %47 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %46, i32 0, i32 10
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @CP_MQD_CONTROL__PRIV_STATE__SHIFT, align 4
  %49 = shl i32 1, %48
  %50 = load %struct.v9_mqd*, %struct.v9_mqd** %12, align 8
  %51 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %50, i32 0, i32 11
  store i32 %49, i32* %51, align 4
  %52 = load i64, i64* %11, align 8
  %53 = call i8* @lower_32_bits(i64 %52)
  %54 = load %struct.v9_mqd*, %struct.v9_mqd** %12, align 8
  %55 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %54, i32 0, i32 22
  store i8* %53, i8** %55, align 8
  %56 = load i64, i64* %11, align 8
  %57 = call i8* @upper_32_bits(i64 %56)
  %58 = load %struct.v9_mqd*, %struct.v9_mqd** %12, align 8
  %59 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %58, i32 0, i32 21
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* @CP_HQD_QUANTUM__QUANTUM_EN__SHIFT, align 4
  %61 = shl i32 1, %60
  %62 = load i32, i32* @CP_HQD_QUANTUM__QUANTUM_SCALE__SHIFT, align 4
  %63 = shl i32 1, %62
  %64 = or i32 %61, %63
  %65 = load i32, i32* @CP_HQD_QUANTUM__QUANTUM_DURATION__SHIFT, align 4
  %66 = shl i32 10, %65
  %67 = or i32 %64, %66
  %68 = load %struct.v9_mqd*, %struct.v9_mqd** %12, align 8
  %69 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %68, i32 0, i32 12
  store i32 %67, i32* %69, align 8
  %70 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %71 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @KFD_QUEUE_FORMAT_AQL, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %5
  %76 = load i32, i32* @CP_HQD_AQL_CONTROL__CONTROL0__SHIFT, align 4
  %77 = shl i32 1, %76
  %78 = load %struct.v9_mqd*, %struct.v9_mqd** %12, align 8
  %79 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %78, i32 0, i32 13
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %75, %5
  %81 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %82 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load i32, i32* @COMPUTE_PGM_RSRC2__TRAP_PRESENT__SHIFT, align 4
  %87 = shl i32 1, %86
  %88 = load %struct.v9_mqd*, %struct.v9_mqd** %12, align 8
  %89 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %88, i32 0, i32 14
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %85, %80
  %93 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %94 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %143

99:                                               ; preds = %92
  %100 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %101 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %143

104:                                              ; preds = %99
  %105 = load i32, i32* @CP_HQD_PERSISTENT_STATE__QSWITCH_MODE__SHIFT, align 4
  %106 = shl i32 1, %105
  %107 = load %struct.v9_mqd*, %struct.v9_mqd** %12, align 8
  %108 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %107, i32 0, i32 10
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %112 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = call i8* @lower_32_bits(i64 %113)
  %115 = load %struct.v9_mqd*, %struct.v9_mqd** %12, align 8
  %116 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %115, i32 0, i32 20
  store i8* %114, i8** %116, align 8
  %117 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %118 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = call i8* @upper_32_bits(i64 %119)
  %121 = load %struct.v9_mqd*, %struct.v9_mqd** %12, align 8
  %122 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %121, i32 0, i32 19
  store i8* %120, i8** %122, align 8
  %123 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %124 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.v9_mqd*, %struct.v9_mqd** %12, align 8
  %127 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %126, i32 0, i32 18
  store i32 %125, i32* %127, align 8
  %128 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %129 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.v9_mqd*, %struct.v9_mqd** %12, align 8
  %132 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %131, i32 0, i32 17
  store i32 %130, i32* %132, align 4
  %133 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %134 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.v9_mqd*, %struct.v9_mqd** %12, align 8
  %137 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %136, i32 0, i32 16
  store i32 %135, i32* %137, align 8
  %138 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %139 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.v9_mqd*, %struct.v9_mqd** %12, align 8
  %142 = getelementptr inbounds %struct.v9_mqd, %struct.v9_mqd* %141, i32 0, i32 15
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %104, %99, %92
  %144 = load %struct.v9_mqd*, %struct.v9_mqd** %12, align 8
  %145 = bitcast %struct.v9_mqd* %144 to i8*
  %146 = load i8**, i8*** %7, align 8
  store i8* %145, i8** %146, align 8
  %147 = load i64*, i64** %9, align 8
  %148 = icmp ne i64* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = load i64, i64* %11, align 8
  %151 = load i64*, i64** %9, align 8
  store i64 %150, i64* %151, align 8
  br label %152

152:                                              ; preds = %149, %143
  %153 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %154 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %153, i32 0, i32 0
  %155 = load i32 (%struct.mqd_manager*, %struct.v9_mqd*, %struct.queue_properties*)*, i32 (%struct.mqd_manager*, %struct.v9_mqd*, %struct.queue_properties*)** %154, align 8
  %156 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %157 = load %struct.v9_mqd*, %struct.v9_mqd** %12, align 8
  %158 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %159 = call i32 %155(%struct.mqd_manager* %156, %struct.v9_mqd* %157, %struct.queue_properties* %158)
  ret void
}

declare dso_local i32 @memset(%struct.v9_mqd*, i32, i32) #1

declare dso_local i8* @lower_32_bits(i64) #1

declare dso_local i8* @upper_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
