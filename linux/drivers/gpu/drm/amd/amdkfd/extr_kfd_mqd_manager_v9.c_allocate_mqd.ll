; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_v9.c_allocate_mqd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_v9.c_allocate_mqd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_mem_obj = type { i32, i32, i32 }
%struct.kfd_dev = type { i32, i64 }
%struct.queue_properties = type { i64, i32 }

@KFD_QUEUE_TYPE_COMPUTE = common dso_local global i64 0, align 8
@GFP_NOIO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kfd_mem_obj* (%struct.kfd_dev*, %struct.queue_properties*)* @allocate_mqd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kfd_mem_obj* @allocate_mqd(%struct.kfd_dev* %0, %struct.queue_properties* %1) #0 {
  %3 = alloca %struct.kfd_mem_obj*, align 8
  %4 = alloca %struct.kfd_dev*, align 8
  %5 = alloca %struct.queue_properties*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kfd_mem_obj*, align 8
  store %struct.kfd_dev* %0, %struct.kfd_dev** %4, align 8
  store %struct.queue_properties* %1, %struct.queue_properties** %5, align 8
  store %struct.kfd_mem_obj* null, %struct.kfd_mem_obj** %7, align 8
  %8 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %9 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %44

12:                                               ; preds = %2
  %13 = load %struct.queue_properties*, %struct.queue_properties** %5, align 8
  %14 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @KFD_QUEUE_TYPE_COMPUTE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %12
  %19 = load i32, i32* @GFP_NOIO, align 4
  %20 = call %struct.kfd_mem_obj* @kzalloc(i32 12, i32 %19)
  store %struct.kfd_mem_obj* %20, %struct.kfd_mem_obj** %7, align 8
  %21 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %7, align 8
  %22 = icmp ne %struct.kfd_mem_obj* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store %struct.kfd_mem_obj* null, %struct.kfd_mem_obj** %3, align 8
  br label %55

24:                                               ; preds = %18
  %25 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %26 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.queue_properties*, %struct.queue_properties** %5, align 8
  %29 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = call i64 @ALIGN(i32 %30, i32 %31)
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = call i64 @ALIGN(i32 4, i32 %33)
  %35 = add nsw i64 %32, %34
  %36 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %7, align 8
  %37 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %36, i32 0, i32 2
  %38 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %7, align 8
  %39 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %38, i32 0, i32 1
  %40 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %7, align 8
  %41 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %40, i32 0, i32 0
  %42 = bitcast i32* %41 to i8*
  %43 = call i32 @amdgpu_amdkfd_alloc_gtt_mem(i32 %27, i64 %35, i32* %37, i32* %39, i8* %42, i32 1)
  store i32 %43, i32* %6, align 4
  br label %47

44:                                               ; preds = %12, %2
  %45 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %46 = call i32 @kfd_gtt_sa_allocate(%struct.kfd_dev* %45, i32 4, %struct.kfd_mem_obj** %7)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %44, %24
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %7, align 8
  %52 = call i32 @kfree(%struct.kfd_mem_obj* %51)
  store %struct.kfd_mem_obj* null, %struct.kfd_mem_obj** %3, align 8
  br label %55

53:                                               ; preds = %47
  %54 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %7, align 8
  store %struct.kfd_mem_obj* %54, %struct.kfd_mem_obj** %3, align 8
  br label %55

55:                                               ; preds = %53, %50, %23
  %56 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %3, align 8
  ret %struct.kfd_mem_obj* %56
}

declare dso_local %struct.kfd_mem_obj* @kzalloc(i32, i32) #1

declare dso_local i32 @amdgpu_amdkfd_alloc_gtt_mem(i32, i64, i32*, i32*, i8*, i32) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @kfd_gtt_sa_allocate(%struct.kfd_dev*, i32, %struct.kfd_mem_obj**) #1

declare dso_local i32 @kfree(%struct.kfd_mem_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
