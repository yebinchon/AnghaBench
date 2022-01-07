; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_cik.c_init_mqd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_cik.c_init_mqd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqd_manager = type { i32 (%struct.mqd_manager*, %struct.cik_mqd*, %struct.queue_properties*)* }
%struct.cik_mqd = type opaque
%struct.kfd_mem_obj = type { i32, i64 }
%struct.queue_properties = type { i64 }
%struct.cik_mqd.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DEFAULT_CP_HQD_PERSISTENT_STATE = common dso_local global i32 0, align 4
@PRELOAD_REQ = common dso_local global i32 0, align 4
@MQD_CONTROL_PRIV_STATE_EN = common dso_local global i32 0, align 4
@QUANTUM_EN = common dso_local global i32 0, align 4
@QUANTUM_SCALE_1MS = common dso_local global i32 0, align 4
@KFD_QUEUE_FORMAT_AQL = common dso_local global i64 0, align 8
@AQL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mqd_manager*, i8**, %struct.kfd_mem_obj*, i32*, %struct.queue_properties*)* @init_mqd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_mqd(%struct.mqd_manager* %0, i8** %1, %struct.kfd_mem_obj* %2, i32* %3, %struct.queue_properties* %4) #0 {
  %6 = alloca %struct.mqd_manager*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.kfd_mem_obj*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.queue_properties*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cik_mqd.0*, align 8
  store %struct.mqd_manager* %0, %struct.mqd_manager** %6, align 8
  store i8** %1, i8*** %7, align 8
  store %struct.kfd_mem_obj* %2, %struct.kfd_mem_obj** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.queue_properties* %4, %struct.queue_properties** %10, align 8
  %13 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %8, align 8
  %14 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.cik_mqd.0*
  store %struct.cik_mqd.0* %16, %struct.cik_mqd.0** %12, align 8
  %17 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %8, align 8
  %18 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  %20 = load %struct.cik_mqd.0*, %struct.cik_mqd.0** %12, align 8
  %21 = call i32 @ALIGN(i32 48, i32 256)
  %22 = call i32 @memset(%struct.cik_mqd.0* %20, i32 0, i32 %21)
  %23 = load %struct.cik_mqd.0*, %struct.cik_mqd.0** %12, align 8
  %24 = getelementptr inbounds %struct.cik_mqd.0, %struct.cik_mqd.0* %23, i32 0, i32 0
  store i32 -1070528512, i32* %24, align 4
  %25 = load %struct.cik_mqd.0*, %struct.cik_mqd.0** %12, align 8
  %26 = getelementptr inbounds %struct.cik_mqd.0, %struct.cik_mqd.0* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = load %struct.cik_mqd.0*, %struct.cik_mqd.0** %12, align 8
  %28 = getelementptr inbounds %struct.cik_mqd.0, %struct.cik_mqd.0* %27, i32 0, i32 2
  store i32 -1, i32* %28, align 4
  %29 = load %struct.cik_mqd.0*, %struct.cik_mqd.0** %12, align 8
  %30 = getelementptr inbounds %struct.cik_mqd.0, %struct.cik_mqd.0* %29, i32 0, i32 3
  store i32 -1, i32* %30, align 4
  %31 = load %struct.cik_mqd.0*, %struct.cik_mqd.0** %12, align 8
  %32 = getelementptr inbounds %struct.cik_mqd.0, %struct.cik_mqd.0* %31, i32 0, i32 4
  store i32 -1, i32* %32, align 4
  %33 = load %struct.cik_mqd.0*, %struct.cik_mqd.0** %12, align 8
  %34 = getelementptr inbounds %struct.cik_mqd.0, %struct.cik_mqd.0* %33, i32 0, i32 5
  store i32 -1, i32* %34, align 4
  %35 = load i32, i32* @DEFAULT_CP_HQD_PERSISTENT_STATE, align 4
  %36 = load i32, i32* @PRELOAD_REQ, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.cik_mqd.0*, %struct.cik_mqd.0** %12, align 8
  %39 = getelementptr inbounds %struct.cik_mqd.0, %struct.cik_mqd.0* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @MQD_CONTROL_PRIV_STATE_EN, align 4
  %41 = load %struct.cik_mqd.0*, %struct.cik_mqd.0** %12, align 8
  %42 = getelementptr inbounds %struct.cik_mqd.0, %struct.cik_mqd.0* %41, i32 0, i32 11
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @lower_32_bits(i32 %43)
  %45 = load %struct.cik_mqd.0*, %struct.cik_mqd.0** %12, align 8
  %46 = getelementptr inbounds %struct.cik_mqd.0, %struct.cik_mqd.0* %45, i32 0, i32 10
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @upper_32_bits(i32 %47)
  %49 = load %struct.cik_mqd.0*, %struct.cik_mqd.0** %12, align 8
  %50 = getelementptr inbounds %struct.cik_mqd.0, %struct.cik_mqd.0* %49, i32 0, i32 9
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @QUANTUM_EN, align 4
  %52 = load i32, i32* @QUANTUM_SCALE_1MS, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @QUANTUM_DURATION(i32 10)
  %55 = or i32 %53, %54
  %56 = load %struct.cik_mqd.0*, %struct.cik_mqd.0** %12, align 8
  %57 = getelementptr inbounds %struct.cik_mqd.0, %struct.cik_mqd.0* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 4
  %58 = load %struct.cik_mqd.0*, %struct.cik_mqd.0** %12, align 8
  %59 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %60 = call i32 @set_priority(%struct.cik_mqd.0* %58, %struct.queue_properties* %59)
  %61 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %62 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @KFD_QUEUE_FORMAT_AQL, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %5
  %67 = load i32, i32* @AQL_ENABLE, align 4
  %68 = load %struct.cik_mqd.0*, %struct.cik_mqd.0** %12, align 8
  %69 = getelementptr inbounds %struct.cik_mqd.0, %struct.cik_mqd.0* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %5
  %71 = load %struct.cik_mqd.0*, %struct.cik_mqd.0** %12, align 8
  %72 = bitcast %struct.cik_mqd.0* %71 to i8*
  %73 = load i8**, i8*** %7, align 8
  store i8* %72, i8** %73, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* %11, align 4
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %70
  %80 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %81 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %80, i32 0, i32 0
  %82 = load i32 (%struct.mqd_manager*, %struct.cik_mqd*, %struct.queue_properties*)*, i32 (%struct.mqd_manager*, %struct.cik_mqd*, %struct.queue_properties*)** %81, align 8
  %83 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %84 = load %struct.cik_mqd.0*, %struct.cik_mqd.0** %12, align 8
  %85 = bitcast %struct.cik_mqd.0* %84 to %struct.cik_mqd*
  %86 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %87 = call i32 %82(%struct.mqd_manager* %83, %struct.cik_mqd* %85, %struct.queue_properties* %86)
  ret void
}

declare dso_local i32 @memset(%struct.cik_mqd.0*, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @QUANTUM_DURATION(i32) #1

declare dso_local i32 @set_priority(%struct.cik_mqd.0*, %struct.queue_properties*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
