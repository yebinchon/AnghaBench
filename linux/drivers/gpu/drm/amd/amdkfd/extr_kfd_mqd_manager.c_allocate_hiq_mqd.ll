; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager.c_allocate_hiq_mqd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager.c_allocate_hiq_mqd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_mem_obj = type { i32, i32, i32 }
%struct.kfd_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.queue_properties = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kfd_mem_obj* @allocate_hiq_mqd(%struct.kfd_dev* %0, %struct.queue_properties* %1) #0 {
  %3 = alloca %struct.kfd_mem_obj*, align 8
  %4 = alloca %struct.kfd_dev*, align 8
  %5 = alloca %struct.queue_properties*, align 8
  %6 = alloca %struct.kfd_mem_obj*, align 8
  store %struct.kfd_dev* %0, %struct.kfd_dev** %4, align 8
  store %struct.queue_properties* %1, %struct.queue_properties** %5, align 8
  store %struct.kfd_mem_obj* null, %struct.kfd_mem_obj** %6, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.kfd_mem_obj* @kzalloc(i32 12, i32 %7)
  store %struct.kfd_mem_obj* %8, %struct.kfd_mem_obj** %6, align 8
  %9 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %6, align 8
  %10 = icmp ne %struct.kfd_mem_obj* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.kfd_mem_obj* null, %struct.kfd_mem_obj** %3, align 8
  br label %38

12:                                               ; preds = %2
  %13 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %14 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %6, align 8
  %20 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %22 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %6, align 8
  %28 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %30 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %6, align 8
  %36 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %6, align 8
  store %struct.kfd_mem_obj* %37, %struct.kfd_mem_obj** %3, align 8
  br label %38

38:                                               ; preds = %12, %11
  %39 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %3, align 8
  ret %struct.kfd_mem_obj* %39
}

declare dso_local %struct.kfd_mem_obj* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
