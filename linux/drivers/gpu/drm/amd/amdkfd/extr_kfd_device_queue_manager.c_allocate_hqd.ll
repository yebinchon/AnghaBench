; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_allocate_hqd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_allocate_hqd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_queue_manager = type { i32, i32* }
%struct.queue = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"hqd slot - pipe %d, queue %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_queue_manager*, %struct.queue*)* @allocate_hqd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_hqd(%struct.device_queue_manager* %0, %struct.queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_queue_manager*, align 8
  %5 = alloca %struct.queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device_queue_manager* %0, %struct.device_queue_manager** %4, align 8
  store %struct.queue* %1, %struct.queue** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %11 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %61, %2
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %16 = call i32 @get_pipes_per_mec(%struct.device_queue_manager* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %69

18:                                               ; preds = %13
  %19 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @is_pipe_enabled(%struct.device_queue_manager* %19, i32 0, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %61

24:                                               ; preds = %18
  %25 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %26 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %24
  %34 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %35 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ffs(i32 %40)
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = shl i32 1, %43
  %45 = xor i32 %44, -1
  %46 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %47 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %45
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.queue*, %struct.queue** %5, align 8
  %56 = getelementptr inbounds %struct.queue, %struct.queue* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.queue*, %struct.queue** %5, align 8
  %59 = getelementptr inbounds %struct.queue, %struct.queue* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  store i32 1, i32* %6, align 4
  br label %69

60:                                               ; preds = %24
  br label %61

61:                                               ; preds = %60, %23
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  %64 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %65 = call i32 @get_pipes_per_mec(%struct.device_queue_manager* %64)
  %66 = srem i32 %63, %65
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %13

69:                                               ; preds = %33, %13
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* @EBUSY, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %90

75:                                               ; preds = %69
  %76 = load %struct.queue*, %struct.queue** %5, align 8
  %77 = getelementptr inbounds %struct.queue, %struct.queue* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.queue*, %struct.queue** %5, align 8
  %80 = getelementptr inbounds %struct.queue, %struct.queue* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %81)
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  %85 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %86 = call i32 @get_pipes_per_mec(%struct.device_queue_manager* %85)
  %87 = srem i32 %84, %86
  %88 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %89 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %75, %72
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @get_pipes_per_mec(%struct.device_queue_manager*) #1

declare dso_local i32 @is_pipe_enabled(%struct.device_queue_manager*, i32, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
