; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process.c_kfd_create_process_device_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process.c_kfd_create_process_device_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_process_device = type { i32, i32, i32, i32, %struct.kfd_process*, %struct.TYPE_2__, %struct.kfd_dev* }
%struct.TYPE_2__ = type { i64, i32*, i32, i32, i32 }
%struct.kfd_dev = type { i32 }
%struct.kfd_process = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to init doorbell for process\0A\00", align 1
@PDD_UNBOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kfd_process_device* @kfd_create_process_device_data(%struct.kfd_dev* %0, %struct.kfd_process* %1) #0 {
  %3 = alloca %struct.kfd_process_device*, align 8
  %4 = alloca %struct.kfd_dev*, align 8
  %5 = alloca %struct.kfd_process*, align 8
  %6 = alloca %struct.kfd_process_device*, align 8
  store %struct.kfd_dev* %0, %struct.kfd_dev** %4, align 8
  store %struct.kfd_process* %1, %struct.kfd_process** %5, align 8
  store %struct.kfd_process_device* null, %struct.kfd_process_device** %6, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.kfd_process_device* @kzalloc(i32 64, i32 %7)
  store %struct.kfd_process_device* %8, %struct.kfd_process_device** %6, align 8
  %9 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %10 = icmp ne %struct.kfd_process_device* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.kfd_process_device* null, %struct.kfd_process_device** %3, align 8
  br label %65

12:                                               ; preds = %2
  %13 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %14 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %13, i32 0, i32 5
  %15 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %16 = call i64 @init_doorbell_bitmap(%struct.TYPE_2__* %14, %struct.kfd_dev* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %21 = call i32 @kfree(%struct.kfd_process_device* %20)
  store %struct.kfd_process_device* null, %struct.kfd_process_device** %3, align 8
  br label %65

22:                                               ; preds = %12
  %23 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %24 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %25 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %24, i32 0, i32 6
  store %struct.kfd_dev* %23, %struct.kfd_dev** %25, align 8
  %26 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %27 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %31 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %35 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %38 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 8
  %40 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %41 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %40, i32 0, i32 1
  %42 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %43 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32* %41, i32** %44, align 8
  %45 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %46 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %49 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %50 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %49, i32 0, i32 4
  store %struct.kfd_process* %48, %struct.kfd_process** %50, align 8
  %51 = load i32, i32* @PDD_UNBOUND, align 4
  %52 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %53 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %55 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  %56 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %57 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %56, i32 0, i32 2
  %58 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %59 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %58, i32 0, i32 0
  %60 = call i32 @list_add(i32* %57, i32* %59)
  %61 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %62 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %61, i32 0, i32 1
  %63 = call i32 @idr_init(i32* %62)
  %64 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  store %struct.kfd_process_device* %64, %struct.kfd_process_device** %3, align 8
  br label %65

65:                                               ; preds = %22, %18, %11
  %66 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  ret %struct.kfd_process_device* %66
}

declare dso_local %struct.kfd_process_device* @kzalloc(i32, i32) #1

declare dso_local i64 @init_doorbell_bitmap(%struct.TYPE_2__*, %struct.kfd_dev*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kfree(%struct.kfd_process_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @idr_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
