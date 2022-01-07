; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_register_rdma_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_register_rdma_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { %struct.i40iw_ib_device*, i32 }
%struct.i40iw_ib_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@i40iw_attr_group = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"i40iw%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_register_rdma_device(%struct.i40iw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40iw_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_ib_device*, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %3, align 8
  %6 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %7 = call %struct.i40iw_ib_device* @i40iw_init_rdma_device(%struct.i40iw_device* %6)
  %8 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %9 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %8, i32 0, i32 0
  store %struct.i40iw_ib_device* %7, %struct.i40iw_ib_device** %9, align 8
  %10 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %11 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %10, i32 0, i32 0
  %12 = load %struct.i40iw_ib_device*, %struct.i40iw_ib_device** %11, align 8
  %13 = icmp ne %struct.i40iw_ib_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %48

17:                                               ; preds = %1
  %18 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %19 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %18, i32 0, i32 0
  %20 = load %struct.i40iw_ib_device*, %struct.i40iw_ib_device** %19, align 8
  store %struct.i40iw_ib_device* %20, %struct.i40iw_ib_device** %5, align 8
  %21 = load %struct.i40iw_ib_device*, %struct.i40iw_ib_device** %5, align 8
  %22 = getelementptr inbounds %struct.i40iw_ib_device, %struct.i40iw_ib_device* %21, i32 0, i32 0
  %23 = call i32 @rdma_set_device_sysfs_group(i32* %22, i32* @i40iw_attr_group)
  %24 = load %struct.i40iw_ib_device*, %struct.i40iw_ib_device** %5, align 8
  %25 = getelementptr inbounds %struct.i40iw_ib_device, %struct.i40iw_ib_device* %24, i32 0, i32 0
  %26 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %27 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ib_device_set_netdev(i32* %25, i32 %28, i32 1)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  br label %41

33:                                               ; preds = %17
  %34 = load %struct.i40iw_ib_device*, %struct.i40iw_ib_device** %5, align 8
  %35 = getelementptr inbounds %struct.i40iw_ib_device, %struct.i40iw_ib_device* %34, i32 0, i32 0
  %36 = call i32 @ib_register_device(i32* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %41

40:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %48

41:                                               ; preds = %39, %32
  %42 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %43 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %42, i32 0, i32 0
  %44 = load %struct.i40iw_ib_device*, %struct.i40iw_ib_device** %43, align 8
  %45 = getelementptr inbounds %struct.i40iw_ib_device, %struct.i40iw_ib_device* %44, i32 0, i32 0
  %46 = call i32 @ib_dealloc_device(i32* %45)
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %41, %40, %14
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.i40iw_ib_device* @i40iw_init_rdma_device(%struct.i40iw_device*) #1

declare dso_local i32 @rdma_set_device_sysfs_group(i32*, i32*) #1

declare dso_local i32 @ib_device_set_netdev(i32*, i32, i32) #1

declare dso_local i32 @ib_register_device(i32*, i8*) #1

declare dso_local i32 @ib_dealloc_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
