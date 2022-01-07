; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process_queue_manager.c_create_cp_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process_queue_manager.c_create_cp_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process_queue_manager = type { i32 }
%struct.kfd_dev = type { i32 }
%struct.queue = type { i32, %struct.kfd_dev* }
%struct.queue_properties = type { i32, i64, i32* }
%struct.file = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"PQM After init queue\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.process_queue_manager*, %struct.kfd_dev*, %struct.queue**, %struct.queue_properties*, %struct.file*, i32)* @create_cp_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_cp_queue(%struct.process_queue_manager* %0, %struct.kfd_dev* %1, %struct.queue** %2, %struct.queue_properties* %3, %struct.file* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.process_queue_manager*, align 8
  %9 = alloca %struct.kfd_dev*, align 8
  %10 = alloca %struct.queue**, align 8
  %11 = alloca %struct.queue_properties*, align 8
  %12 = alloca %struct.file*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.process_queue_manager* %0, %struct.process_queue_manager** %8, align 8
  store %struct.kfd_dev* %1, %struct.kfd_dev** %9, align 8
  store %struct.queue** %2, %struct.queue*** %10, align 8
  store %struct.queue_properties* %3, %struct.queue_properties** %11, align 8
  store %struct.file* %4, %struct.file** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.queue_properties*, %struct.queue_properties** %11, align 8
  %16 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %15, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = load %struct.queue_properties*, %struct.queue_properties** %11, align 8
  %18 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* %13, align 4
  %20 = load %struct.queue_properties*, %struct.queue_properties** %11, align 8
  %21 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.queue**, %struct.queue*** %10, align 8
  %23 = load %struct.queue_properties*, %struct.queue_properties** %11, align 8
  %24 = call i32 @init_queue(%struct.queue** %22, %struct.queue_properties* %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %7, align 4
  br label %42

29:                                               ; preds = %6
  %30 = load %struct.kfd_dev*, %struct.kfd_dev** %9, align 8
  %31 = load %struct.queue**, %struct.queue*** %10, align 8
  %32 = load %struct.queue*, %struct.queue** %31, align 8
  %33 = getelementptr inbounds %struct.queue, %struct.queue* %32, i32 0, i32 1
  store %struct.kfd_dev* %30, %struct.kfd_dev** %33, align 8
  %34 = load %struct.process_queue_manager*, %struct.process_queue_manager** %8, align 8
  %35 = getelementptr inbounds %struct.process_queue_manager, %struct.process_queue_manager* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.queue**, %struct.queue*** %10, align 8
  %38 = load %struct.queue*, %struct.queue** %37, align 8
  %39 = getelementptr inbounds %struct.queue, %struct.queue* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %29, %27
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @init_queue(%struct.queue**, %struct.queue_properties*) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
