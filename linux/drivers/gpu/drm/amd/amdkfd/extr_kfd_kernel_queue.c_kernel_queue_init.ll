; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue.c_kernel_queue_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue.c_kernel_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_queue = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 (%struct.kernel_queue.0*, %struct.kfd_dev*, i32, i32)*, i32, i32, i32, i32 }
%struct.kernel_queue.0 = type opaque
%struct.kfd_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@uninitialize = common dso_local global i32 0, align 4
@acquire_packet_buffer = common dso_local global i32 0, align 4
@submit_packet = common dso_local global i32 0, align 4
@rollback_packet = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unexpected ASIC family %u\00", align 1
@KFD_KERNEL_QUEUE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to init kernel queue\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kernel_queue* @kernel_queue_init(%struct.kfd_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.kernel_queue*, align 8
  %4 = alloca %struct.kfd_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kernel_queue*, align 8
  store %struct.kfd_dev* %0, %struct.kfd_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.kernel_queue* @kzalloc(i32 32, i32 %7)
  store %struct.kernel_queue* %8, %struct.kernel_queue** %6, align 8
  %9 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %10 = icmp ne %struct.kernel_queue* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.kernel_queue* null, %struct.kernel_queue** %3, align 8
  br label %79

12:                                               ; preds = %2
  %13 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %14 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i64 (%struct.kernel_queue.0*, %struct.kfd_dev*, i32, i32)* bitcast (i64 (%struct.kernel_queue*, %struct.kfd_dev*, i32, i32)* @initialize to i64 (%struct.kernel_queue.0*, %struct.kfd_dev*, i32, i32)*), i64 (%struct.kernel_queue.0*, %struct.kfd_dev*, i32, i32)** %15, align 8
  %16 = load i32, i32* @uninitialize, align 4
  %17 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %18 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 4
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @acquire_packet_buffer, align 4
  %21 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %22 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  store i32 %20, i32* %23, align 8
  %24 = load i32, i32* @submit_packet, align 4
  %25 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %26 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @rollback_packet, align 4
  %29 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %30 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 8
  %32 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %33 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %53 [
    i32 141, label %37
    i32 132, label %37
    i32 140, label %37
    i32 136, label %37
    i32 135, label %37
    i32 134, label %37
    i32 128, label %37
    i32 138, label %41
    i32 139, label %41
    i32 131, label %45
    i32 130, label %45
    i32 129, label %45
    i32 133, label %45
    i32 142, label %45
    i32 137, label %49
  ]

37:                                               ; preds = %12, %12, %12, %12, %12, %12, %12
  %38 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %39 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %38, i32 0, i32 1
  %40 = call i32 @kernel_queue_init_vi(i32* %39)
  br label %60

41:                                               ; preds = %12, %12
  %42 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %43 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %42, i32 0, i32 1
  %44 = call i32 @kernel_queue_init_cik(i32* %43)
  br label %60

45:                                               ; preds = %12, %12, %12, %12, %12
  %46 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %47 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %46, i32 0, i32 1
  %48 = call i32 @kernel_queue_init_v9(i32* %47)
  br label %60

49:                                               ; preds = %12
  %50 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %51 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %50, i32 0, i32 1
  %52 = call i32 @kernel_queue_init_v10(i32* %51)
  br label %60

53:                                               ; preds = %12
  %54 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %55 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %76

60:                                               ; preds = %49, %45, %41, %37
  %61 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %62 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64 (%struct.kernel_queue.0*, %struct.kfd_dev*, i32, i32)*, i64 (%struct.kernel_queue.0*, %struct.kfd_dev*, i32, i32)** %63, align 8
  %65 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %66 = bitcast %struct.kernel_queue* %65 to %struct.kernel_queue.0*
  %67 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @KFD_KERNEL_QUEUE_SIZE, align 4
  %70 = call i64 %64(%struct.kernel_queue.0* %66, %struct.kfd_dev* %67, i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %60
  %73 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  store %struct.kernel_queue* %73, %struct.kernel_queue** %3, align 8
  br label %79

74:                                               ; preds = %60
  %75 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %53
  %77 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %78 = call i32 @kfree(%struct.kernel_queue* %77)
  store %struct.kernel_queue* null, %struct.kernel_queue** %3, align 8
  br label %79

79:                                               ; preds = %76, %72, %11
  %80 = load %struct.kernel_queue*, %struct.kernel_queue** %3, align 8
  ret %struct.kernel_queue* %80
}

declare dso_local %struct.kernel_queue* @kzalloc(i32, i32) #1

declare dso_local i64 @initialize(%struct.kernel_queue*, %struct.kfd_dev*, i32, i32) #1

declare dso_local i32 @kernel_queue_init_vi(i32*) #1

declare dso_local i32 @kernel_queue_init_cik(i32*) #1

declare dso_local i32 @kernel_queue_init_v9(i32*) #1

declare dso_local i32 @kernel_queue_init_v10(i32*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kfree(%struct.kernel_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
