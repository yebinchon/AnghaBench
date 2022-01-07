; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_init_mqd_managers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_init_mqd_managers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_queue_manager = type { %struct.mqd_manager**, i32, %struct.TYPE_2__ }
%struct.mqd_manager = type { i32 }
%struct.TYPE_2__ = type { %struct.mqd_manager* (i32, i32)* }

@KFD_MQD_TYPE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"mqd manager [%d] initialization failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_queue_manager*)* @init_mqd_managers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_mqd_managers(%struct.device_queue_manager* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_queue_manager*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mqd_manager*, align 8
  store %struct.device_queue_manager* %0, %struct.device_queue_manager** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %34, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @KFD_MQD_TYPE_MAX, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %37

11:                                               ; preds = %7
  %12 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %13 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.mqd_manager* (i32, i32)*, %struct.mqd_manager* (i32, i32)** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %18 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.mqd_manager* %15(i32 %16, i32 %19)
  store %struct.mqd_manager* %20, %struct.mqd_manager** %6, align 8
  %21 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %22 = icmp ne %struct.mqd_manager* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %11
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %38

26:                                               ; preds = %11
  %27 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %28 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %29 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %28, i32 0, i32 0
  %30 = load %struct.mqd_manager**, %struct.mqd_manager*** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.mqd_manager*, %struct.mqd_manager** %30, i64 %32
  store %struct.mqd_manager* %27, %struct.mqd_manager** %33, align 8
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %7

37:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %64

38:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %58, %38
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %45 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %44, i32 0, i32 0
  %46 = load %struct.mqd_manager**, %struct.mqd_manager*** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.mqd_manager*, %struct.mqd_manager** %46, i64 %48
  %50 = load %struct.mqd_manager*, %struct.mqd_manager** %49, align 8
  %51 = call i32 @kfree(%struct.mqd_manager* %50)
  %52 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %53 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %52, i32 0, i32 0
  %54 = load %struct.mqd_manager**, %struct.mqd_manager*** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.mqd_manager*, %struct.mqd_manager** %54, i64 %56
  store %struct.mqd_manager* null, %struct.mqd_manager** %57, align 8
  br label %58

58:                                               ; preds = %43
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %39

61:                                               ; preds = %39
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %61, %37
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @kfree(%struct.mqd_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
