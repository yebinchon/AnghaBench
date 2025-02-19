; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_uninitialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_uninitialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_queue_manager = type { i64, i64, i32, i32, i32, i32*, i32 }

@KFD_MQD_TYPE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_queue_manager*)* @uninitialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uninitialize(%struct.device_queue_manager* %0) #0 {
  %2 = alloca %struct.device_queue_manager*, align 8
  %3 = alloca i32, align 4
  store %struct.device_queue_manager* %0, %struct.device_queue_manager** %2, align 8
  %4 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %5 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %10 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  br label %13

13:                                               ; preds = %8, %1
  %14 = phi i1 [ true, %1 ], [ %12, %8 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %18 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @kfree(i32 %19)
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %34, %13
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @KFD_MQD_TYPE_MAX, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %27 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @kfree(i32 %32)
  br label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %21

37:                                               ; preds = %21
  %38 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %39 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %38, i32 0, i32 4
  %40 = call i32 @mutex_destroy(i32* %39)
  %41 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %42 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.device_queue_manager*, %struct.device_queue_manager** %2, align 8
  %45 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @kfd_gtt_sa_free(i32 %43, i32 %46)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfd_gtt_sa_free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
