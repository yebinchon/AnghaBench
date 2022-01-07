; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_v10.c_initialize_v10.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue_v10.c_initialize_v10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_queue = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.kfd_dev = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernel_queue*, %struct.kfd_dev*, i32, i32)* @initialize_v10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initialize_v10(%struct.kernel_queue* %0, %struct.kfd_dev* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kernel_queue*, align 8
  %7 = alloca %struct.kfd_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.kernel_queue* %0, %struct.kernel_queue** %6, align 8
  store %struct.kfd_dev* %1, %struct.kfd_dev** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.kfd_dev*, %struct.kfd_dev** %7, align 8
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %14 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %13, i32 0, i32 1
  %15 = call i32 @kfd_gtt_sa_allocate(%struct.kfd_dev* %11, i32 %12, %struct.TYPE_2__** %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %39

19:                                               ; preds = %4
  %20 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %21 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %26 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %28 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %33 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %35 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = call i32 @memset(i32 %36, i32 0, i32 %37)
  store i32 1, i32* %5, align 4
  br label %39

39:                                               ; preds = %19, %18
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @kfd_gtt_sa_allocate(%struct.kfd_dev*, i32, %struct.TYPE_2__**) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
