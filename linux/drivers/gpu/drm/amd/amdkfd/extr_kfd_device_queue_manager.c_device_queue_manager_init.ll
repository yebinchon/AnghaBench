; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_device_queue_manager_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_device_queue_manager_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_queue_manager = type { i32, %struct.TYPE_4__, i32, %struct.kfd_dev* }
%struct.TYPE_4__ = type { i32 (%struct.device_queue_manager.0*)*, i8*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.device_queue_manager.0 = type opaque
%struct.kfd_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Loading device queue manager\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@sched_policy = common dso_local global i32 0, align 4
@create_queue_cpsch = common dso_local global i32 0, align 4
@start_cpsch = common dso_local global i32 0, align 4
@stop_cpsch = common dso_local global i32 0, align 4
@destroy_queue_cpsch = common dso_local global i32 0, align 4
@update_queue = common dso_local global i8* null, align 8
@register_process = common dso_local global i8* null, align 8
@unregister_process = common dso_local global i8* null, align 8
@uninitialize = common dso_local global i8* null, align 8
@create_kernel_queue_cpsch = common dso_local global i32 0, align 4
@destroy_kernel_queue_cpsch = common dso_local global i32 0, align 4
@set_cache_memory_policy = common dso_local global i8* null, align 8
@set_trap_handler = common dso_local global i8* null, align 8
@process_termination_cpsch = common dso_local global i32 0, align 4
@evict_process_queues_cpsch = common dso_local global i32 0, align 4
@restore_process_queues_cpsch = common dso_local global i32 0, align 4
@get_wave_state = common dso_local global i8* null, align 8
@start_nocpsch = common dso_local global i32 0, align 4
@stop_nocpsch = common dso_local global i32 0, align 4
@create_queue_nocpsch = common dso_local global i32 0, align 4
@destroy_queue_nocpsch = common dso_local global i32 0, align 4
@process_termination_nocpsch = common dso_local global i32 0, align 4
@evict_process_queues_nocpsch = common dso_local global i32 0, align 4
@restore_process_queues_nocpsch = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid scheduling policy %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Unexpected ASIC family %u\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Failed to allocate hiq sdma mqd trunk buffer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device_queue_manager* @device_queue_manager_init(%struct.kfd_dev* %0) #0 {
  %2 = alloca %struct.device_queue_manager*, align 8
  %3 = alloca %struct.kfd_dev*, align 8
  %4 = alloca %struct.device_queue_manager*, align 8
  store %struct.kfd_dev* %0, %struct.kfd_dev** %3, align 8
  %5 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.device_queue_manager* @kzalloc(i32 128, i32 %6)
  store %struct.device_queue_manager* %7, %struct.device_queue_manager** %4, align 8
  %8 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %9 = icmp ne %struct.device_queue_manager* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.device_queue_manager* null, %struct.device_queue_manager** %2, align 8
  br label %227

11:                                               ; preds = %1
  %12 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %13 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %20 [
    i32 142, label %17
    i32 135, label %17
  ]

17:                                               ; preds = %11, %11
  %18 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %19 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %18, i32 0, i32 0
  store i32 128, i32* %19, align 8
  br label %24

20:                                               ; preds = %11
  %21 = load i32, i32* @sched_policy, align 4
  %22 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %23 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  br label %24

24:                                               ; preds = %20, %17
  %25 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %26 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %27 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %26, i32 0, i32 3
  store %struct.kfd_dev* %25, %struct.kfd_dev** %27, align 8
  %28 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %29 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %159 [
    i32 130, label %31
    i32 129, label %31
    i32 128, label %99
  ]

31:                                               ; preds = %24, %24
  %32 = load i32, i32* @create_queue_cpsch, align 4
  %33 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %34 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 12
  store i32 %32, i32* %35, align 4
  %36 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %37 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 (%struct.device_queue_manager.0*)* bitcast (i32 (%struct.device_queue_manager*)* @initialize_cpsch to i32 (%struct.device_queue_manager.0*)*), i32 (%struct.device_queue_manager.0*)** %38, align 8
  %39 = load i32, i32* @start_cpsch, align 4
  %40 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %41 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 14
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @stop_cpsch, align 4
  %44 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %45 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 13
  store i32 %43, i32* %46, align 8
  %47 = load i32, i32* @destroy_queue_cpsch, align 4
  %48 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %49 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 11
  store i32 %47, i32* %50, align 8
  %51 = load i8*, i8** @update_queue, align 8
  %52 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %53 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 10
  store i8* %51, i8** %54, align 8
  %55 = load i8*, i8** @register_process, align 8
  %56 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %57 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 9
  store i8* %55, i8** %58, align 8
  %59 = load i8*, i8** @unregister_process, align 8
  %60 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %61 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 8
  store i8* %59, i8** %62, align 8
  %63 = load i8*, i8** @uninitialize, align 8
  %64 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %65 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 7
  store i8* %63, i8** %66, align 8
  %67 = load i32, i32* @create_kernel_queue_cpsch, align 4
  %68 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %69 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 16
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* @destroy_kernel_queue_cpsch, align 4
  %72 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %73 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 15
  store i32 %71, i32* %74, align 8
  %75 = load i8*, i8** @set_cache_memory_policy, align 8
  %76 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %77 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 6
  store i8* %75, i8** %78, align 8
  %79 = load i8*, i8** @set_trap_handler, align 8
  %80 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %81 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 5
  store i8* %79, i8** %82, align 8
  %83 = load i32, i32* @process_termination_cpsch, align 4
  %84 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %85 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 4
  store i32 %83, i32* %86, align 8
  %87 = load i32, i32* @evict_process_queues_cpsch, align 4
  %88 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %89 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* @restore_process_queues_cpsch, align 4
  %92 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %93 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  store i32 %91, i32* %94, align 8
  %95 = load i8*, i8** @get_wave_state, align 8
  %96 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %97 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store i8* %95, i8** %98, align 8
  br label %164

99:                                               ; preds = %24
  %100 = load i32, i32* @start_nocpsch, align 4
  %101 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %102 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 14
  store i32 %100, i32* %103, align 4
  %104 = load i32, i32* @stop_nocpsch, align 4
  %105 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %106 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 13
  store i32 %104, i32* %107, align 8
  %108 = load i32, i32* @create_queue_nocpsch, align 4
  %109 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %110 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 12
  store i32 %108, i32* %111, align 4
  %112 = load i32, i32* @destroy_queue_nocpsch, align 4
  %113 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %114 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 11
  store i32 %112, i32* %115, align 8
  %116 = load i8*, i8** @update_queue, align 8
  %117 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %118 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 10
  store i8* %116, i8** %119, align 8
  %120 = load i8*, i8** @register_process, align 8
  %121 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %122 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 9
  store i8* %120, i8** %123, align 8
  %124 = load i8*, i8** @unregister_process, align 8
  %125 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %126 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 8
  store i8* %124, i8** %127, align 8
  %128 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %129 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  store i32 (%struct.device_queue_manager.0*)* bitcast (i32 (%struct.device_queue_manager*)* @initialize_nocpsch to i32 (%struct.device_queue_manager.0*)*), i32 (%struct.device_queue_manager.0*)** %130, align 8
  %131 = load i8*, i8** @uninitialize, align 8
  %132 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %133 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 7
  store i8* %131, i8** %134, align 8
  %135 = load i8*, i8** @set_cache_memory_policy, align 8
  %136 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %137 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 6
  store i8* %135, i8** %138, align 8
  %139 = load i8*, i8** @set_trap_handler, align 8
  %140 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %141 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 5
  store i8* %139, i8** %142, align 8
  %143 = load i32, i32* @process_termination_nocpsch, align 4
  %144 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %145 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 4
  store i32 %143, i32* %146, align 8
  %147 = load i32, i32* @evict_process_queues_nocpsch, align 4
  %148 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %149 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 3
  store i32 %147, i32* %150, align 4
  %151 = load i32, i32* @restore_process_queues_nocpsch, align 4
  %152 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %153 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 2
  store i32 %151, i32* %154, align 8
  %155 = load i8*, i8** @get_wave_state, align 8
  %156 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %157 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  store i8* %155, i8** %158, align 8
  br label %164

159:                                              ; preds = %24
  %160 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %161 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %162)
  br label %224

164:                                              ; preds = %99, %31
  %165 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %166 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %165, i32 0, i32 0
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  switch i32 %169, label %194 [
    i32 144, label %170
    i32 141, label %174
    i32 142, label %178
    i32 135, label %182
    i32 143, label %182
    i32 139, label %182
    i32 138, label %182
    i32 137, label %182
    i32 131, label %182
    i32 134, label %186
    i32 133, label %186
    i32 132, label %186
    i32 136, label %186
    i32 145, label %186
    i32 140, label %190
  ]

170:                                              ; preds = %164
  %171 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %172 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %171, i32 0, i32 2
  %173 = call i32 @device_queue_manager_init_vi(i32* %172)
  br label %201

174:                                              ; preds = %164
  %175 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %176 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %175, i32 0, i32 2
  %177 = call i32 @device_queue_manager_init_cik(i32* %176)
  br label %201

178:                                              ; preds = %164
  %179 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %180 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %179, i32 0, i32 2
  %181 = call i32 @device_queue_manager_init_cik_hawaii(i32* %180)
  br label %201

182:                                              ; preds = %164, %164, %164, %164, %164, %164
  %183 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %184 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %183, i32 0, i32 2
  %185 = call i32 @device_queue_manager_init_vi_tonga(i32* %184)
  br label %201

186:                                              ; preds = %164, %164, %164, %164, %164
  %187 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %188 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %187, i32 0, i32 2
  %189 = call i32 @device_queue_manager_init_v9(i32* %188)
  br label %201

190:                                              ; preds = %164
  %191 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %192 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %191, i32 0, i32 2
  %193 = call i32 @device_queue_manager_init_v10_navi10(i32* %192)
  br label %201

194:                                              ; preds = %164
  %195 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %196 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %195, i32 0, i32 0
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %199)
  br label %224

201:                                              ; preds = %190, %186, %182, %178, %174, %170
  %202 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %203 = call i64 @init_mqd_managers(%struct.device_queue_manager* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %201
  br label %224

206:                                              ; preds = %201
  %207 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %208 = call i64 @allocate_hiq_sdma_mqd(%struct.device_queue_manager* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %224

212:                                              ; preds = %206
  %213 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %214 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = load i32 (%struct.device_queue_manager.0*)*, i32 (%struct.device_queue_manager.0*)** %215, align 8
  %217 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %218 = bitcast %struct.device_queue_manager* %217 to %struct.device_queue_manager.0*
  %219 = call i32 %216(%struct.device_queue_manager.0* %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %223, label %221

221:                                              ; preds = %212
  %222 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  store %struct.device_queue_manager* %222, %struct.device_queue_manager** %2, align 8
  br label %227

223:                                              ; preds = %212
  br label %224

224:                                              ; preds = %223, %210, %205, %194, %159
  %225 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %226 = call i32 @kfree(%struct.device_queue_manager* %225)
  store %struct.device_queue_manager* null, %struct.device_queue_manager** %2, align 8
  br label %227

227:                                              ; preds = %224, %221, %10
  %228 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  ret %struct.device_queue_manager* %228
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.device_queue_manager* @kzalloc(i32, i32) #1

declare dso_local i32 @initialize_cpsch(%struct.device_queue_manager*) #1

declare dso_local i32 @initialize_nocpsch(%struct.device_queue_manager*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @device_queue_manager_init_vi(i32*) #1

declare dso_local i32 @device_queue_manager_init_cik(i32*) #1

declare dso_local i32 @device_queue_manager_init_cik_hawaii(i32*) #1

declare dso_local i32 @device_queue_manager_init_vi_tonga(i32*) #1

declare dso_local i32 @device_queue_manager_init_v9(i32*) #1

declare dso_local i32 @device_queue_manager_init_v10_navi10(i32*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i64 @init_mqd_managers(%struct.device_queue_manager*) #1

declare dso_local i64 @allocate_hiq_sdma_mqd(%struct.device_queue_manager*) #1

declare dso_local i32 @kfree(%struct.device_queue_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
