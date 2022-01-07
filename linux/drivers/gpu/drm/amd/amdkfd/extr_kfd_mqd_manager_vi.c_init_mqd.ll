; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_vi.c_init_mqd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_vi.c_init_mqd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqd_manager = type { i32 (%struct.mqd_manager*, %struct.vi_mqd*, %struct.queue_properties*)*, %struct.TYPE_2__* }
%struct.vi_mqd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i64 }
%struct.kfd_mem_obj = type { i32, i64 }
%struct.queue_properties = type { i64, i32, i32, i32, i32, i32 }

@CP_HQD_PERSISTENT_STATE__PRELOAD_REQ_MASK = common dso_local global i32 0, align 4
@CP_HQD_PERSISTENT_STATE__PRELOAD_SIZE__SHIFT = common dso_local global i32 0, align 4
@CP_MQD_CONTROL__PRIV_STATE__SHIFT = common dso_local global i32 0, align 4
@MTYPE_UC = common dso_local global i32 0, align 4
@CP_MQD_CONTROL__MTYPE__SHIFT = common dso_local global i32 0, align 4
@CP_HQD_QUANTUM__QUANTUM_EN__SHIFT = common dso_local global i32 0, align 4
@CP_HQD_QUANTUM__QUANTUM_SCALE__SHIFT = common dso_local global i32 0, align 4
@CP_HQD_QUANTUM__QUANTUM_DURATION__SHIFT = common dso_local global i32 0, align 4
@CP_HQD_EOP_RPTR__INIT_FETCHER__SHIFT = common dso_local global i32 0, align 4
@KFD_QUEUE_FORMAT_AQL = common dso_local global i64 0, align 8
@COMPUTE_PGM_RSRC2__TRAP_PRESENT__SHIFT = common dso_local global i32 0, align 4
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
  %12 = alloca %struct.vi_mqd*, align 8
  store %struct.mqd_manager* %0, %struct.mqd_manager** %6, align 8
  store i8** %1, i8*** %7, align 8
  store %struct.kfd_mem_obj* %2, %struct.kfd_mem_obj** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.queue_properties* %4, %struct.queue_properties** %10, align 8
  %13 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %8, align 8
  %14 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.vi_mqd*
  store %struct.vi_mqd* %16, %struct.vi_mqd** %12, align 8
  %17 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %8, align 8
  %18 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  %20 = load %struct.vi_mqd*, %struct.vi_mqd** %12, align 8
  %21 = call i32 @memset(%struct.vi_mqd* %20, i32 0, i32 128)
  %22 = load %struct.vi_mqd*, %struct.vi_mqd** %12, align 8
  %23 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %22, i32 0, i32 0
  store i32 -1070528512, i32* %23, align 8
  %24 = load %struct.vi_mqd*, %struct.vi_mqd** %12, align 8
  %25 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = load %struct.vi_mqd*, %struct.vi_mqd** %12, align 8
  %27 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %26, i32 0, i32 2
  store i32 -1, i32* %27, align 8
  %28 = load %struct.vi_mqd*, %struct.vi_mqd** %12, align 8
  %29 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %28, i32 0, i32 3
  store i32 -1, i32* %29, align 4
  %30 = load %struct.vi_mqd*, %struct.vi_mqd** %12, align 8
  %31 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %30, i32 0, i32 4
  store i32 -1, i32* %31, align 8
  %32 = load %struct.vi_mqd*, %struct.vi_mqd** %12, align 8
  %33 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %32, i32 0, i32 5
  store i32 -1, i32* %33, align 4
  %34 = load i32, i32* @CP_HQD_PERSISTENT_STATE__PRELOAD_REQ_MASK, align 4
  %35 = load i32, i32* @CP_HQD_PERSISTENT_STATE__PRELOAD_SIZE__SHIFT, align 4
  %36 = shl i32 83, %35
  %37 = or i32 %34, %36
  %38 = load %struct.vi_mqd*, %struct.vi_mqd** %12, align 8
  %39 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @CP_MQD_CONTROL__PRIV_STATE__SHIFT, align 4
  %41 = shl i32 1, %40
  %42 = load i32, i32* @MTYPE_UC, align 4
  %43 = load i32, i32* @CP_MQD_CONTROL__MTYPE__SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = or i32 %41, %44
  %46 = load %struct.vi_mqd*, %struct.vi_mqd** %12, align 8
  %47 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i8* @lower_32_bits(i32 %48)
  %50 = load %struct.vi_mqd*, %struct.vi_mqd** %12, align 8
  %51 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %50, i32 0, i32 23
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i8* @upper_32_bits(i32 %52)
  %54 = load %struct.vi_mqd*, %struct.vi_mqd** %12, align 8
  %55 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %54, i32 0, i32 22
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* @CP_HQD_QUANTUM__QUANTUM_EN__SHIFT, align 4
  %57 = shl i32 1, %56
  %58 = load i32, i32* @CP_HQD_QUANTUM__QUANTUM_SCALE__SHIFT, align 4
  %59 = shl i32 1, %58
  %60 = or i32 %57, %59
  %61 = load i32, i32* @CP_HQD_QUANTUM__QUANTUM_DURATION__SHIFT, align 4
  %62 = shl i32 10, %61
  %63 = or i32 %60, %62
  %64 = load %struct.vi_mqd*, %struct.vi_mqd** %12, align 8
  %65 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %64, i32 0, i32 8
  store i32 %63, i32* %65, align 8
  %66 = load %struct.vi_mqd*, %struct.vi_mqd** %12, align 8
  %67 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %68 = call i32 @set_priority(%struct.vi_mqd* %66, %struct.queue_properties* %67)
  %69 = load i32, i32* @CP_HQD_EOP_RPTR__INIT_FETCHER__SHIFT, align 4
  %70 = shl i32 1, %69
  %71 = load %struct.vi_mqd*, %struct.vi_mqd** %12, align 8
  %72 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %71, i32 0, i32 9
  store i32 %70, i32* %72, align 4
  %73 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %74 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @KFD_QUEUE_FORMAT_AQL, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %5
  %79 = load %struct.vi_mqd*, %struct.vi_mqd** %12, align 8
  %80 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %79, i32 0, i32 10
  store i32 1, i32* %80, align 8
  br label %81

81:                                               ; preds = %78, %5
  %82 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %83 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %121

86:                                               ; preds = %81
  %87 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %88 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = ashr i32 %89, 8
  %91 = call i8* @lower_32_bits(i32 %90)
  %92 = load %struct.vi_mqd*, %struct.vi_mqd** %12, align 8
  %93 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %92, i32 0, i32 21
  store i8* %91, i8** %93, align 8
  %94 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %95 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = ashr i32 %96, 8
  %98 = call i8* @upper_32_bits(i32 %97)
  %99 = load %struct.vi_mqd*, %struct.vi_mqd** %12, align 8
  %100 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %99, i32 0, i32 20
  store i8* %98, i8** %100, align 8
  %101 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %102 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = ashr i32 %103, 8
  %105 = call i8* @lower_32_bits(i32 %104)
  %106 = load %struct.vi_mqd*, %struct.vi_mqd** %12, align 8
  %107 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %106, i32 0, i32 19
  store i8* %105, i8** %107, align 8
  %108 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %109 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = ashr i32 %110, 8
  %112 = call i8* @upper_32_bits(i32 %111)
  %113 = load %struct.vi_mqd*, %struct.vi_mqd** %12, align 8
  %114 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %113, i32 0, i32 18
  store i8* %112, i8** %114, align 8
  %115 = load i32, i32* @COMPUTE_PGM_RSRC2__TRAP_PRESENT__SHIFT, align 4
  %116 = shl i32 1, %115
  %117 = load %struct.vi_mqd*, %struct.vi_mqd** %12, align 8
  %118 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %117, i32 0, i32 11
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %86, %81
  %122 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %123 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %122, i32 0, i32 1
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %172

128:                                              ; preds = %121
  %129 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %130 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %172

133:                                              ; preds = %128
  %134 = load i32, i32* @CP_HQD_PERSISTENT_STATE__QSWITCH_MODE__SHIFT, align 4
  %135 = shl i32 1, %134
  %136 = load %struct.vi_mqd*, %struct.vi_mqd** %12, align 8
  %137 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  %140 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %141 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = call i8* @lower_32_bits(i32 %142)
  %144 = load %struct.vi_mqd*, %struct.vi_mqd** %12, align 8
  %145 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %144, i32 0, i32 17
  store i8* %143, i8** %145, align 8
  %146 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %147 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = call i8* @upper_32_bits(i32 %148)
  %150 = load %struct.vi_mqd*, %struct.vi_mqd** %12, align 8
  %151 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %150, i32 0, i32 16
  store i8* %149, i8** %151, align 8
  %152 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %153 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.vi_mqd*, %struct.vi_mqd** %12, align 8
  %156 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %155, i32 0, i32 15
  store i32 %154, i32* %156, align 4
  %157 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %158 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.vi_mqd*, %struct.vi_mqd** %12, align 8
  %161 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %160, i32 0, i32 14
  store i32 %159, i32* %161, align 8
  %162 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %163 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.vi_mqd*, %struct.vi_mqd** %12, align 8
  %166 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %165, i32 0, i32 13
  store i32 %164, i32* %166, align 4
  %167 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %168 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.vi_mqd*, %struct.vi_mqd** %12, align 8
  %171 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %170, i32 0, i32 12
  store i32 %169, i32* %171, align 8
  br label %172

172:                                              ; preds = %133, %128, %121
  %173 = load %struct.vi_mqd*, %struct.vi_mqd** %12, align 8
  %174 = bitcast %struct.vi_mqd* %173 to i8*
  %175 = load i8**, i8*** %7, align 8
  store i8* %174, i8** %175, align 8
  %176 = load i32*, i32** %9, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %172
  %179 = load i32, i32* %11, align 4
  %180 = load i32*, i32** %9, align 8
  store i32 %179, i32* %180, align 4
  br label %181

181:                                              ; preds = %178, %172
  %182 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %183 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %182, i32 0, i32 0
  %184 = load i32 (%struct.mqd_manager*, %struct.vi_mqd*, %struct.queue_properties*)*, i32 (%struct.mqd_manager*, %struct.vi_mqd*, %struct.queue_properties*)** %183, align 8
  %185 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %186 = load %struct.vi_mqd*, %struct.vi_mqd** %12, align 8
  %187 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %188 = call i32 %184(%struct.mqd_manager* %185, %struct.vi_mqd* %186, %struct.queue_properties* %187)
  ret void
}

declare dso_local i32 @memset(%struct.vi_mqd*, i32, i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

declare dso_local i32 @set_priority(%struct.vi_mqd*, %struct.queue_properties*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
