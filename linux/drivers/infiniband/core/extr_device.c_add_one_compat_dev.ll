; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_add_one_compat_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_add_one_compat_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.rdma_dev_net = type { i32, i32 }
%struct.ib_core_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@rdma_nets_rwsem = common dso_local global i32 0, align 4
@ib_devices_shared_netns = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@compatdev_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.rdma_dev_net*)* @add_one_compat_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_one_compat_dev(%struct.ib_device* %0, %struct.rdma_dev_net* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.rdma_dev_net*, align 8
  %6 = alloca %struct.ib_core_device*, align 8
  %7 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.rdma_dev_net* %1, %struct.rdma_dev_net** %5, align 8
  %8 = call i32 @lockdep_assert_held(i32* @rdma_nets_rwsem)
  %9 = load i32, i32* @ib_devices_shared_netns, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %131

12:                                               ; preds = %2
  %13 = load %struct.rdma_dev_net*, %struct.rdma_dev_net** %5, align 8
  %14 = getelementptr inbounds %struct.rdma_dev_net, %struct.rdma_dev_net* %13, i32 0, i32 1
  %15 = call i32 @read_pnet(i32* %14)
  %16 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %17 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = call i32 @read_pnet(i32* %18)
  %20 = call i64 @net_eq(i32 %15, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %131

23:                                               ; preds = %12
  %24 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %25 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %28 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %27, i32 0, i32 1
  %29 = load %struct.rdma_dev_net*, %struct.rdma_dev_net** %5, align 8
  %30 = getelementptr inbounds %struct.rdma_dev_net, %struct.rdma_dev_net* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.ib_core_device* @xa_load(i32* %28, i32 %31)
  store %struct.ib_core_device* %32, %struct.ib_core_device** %6, align 8
  %33 = load %struct.ib_core_device*, %struct.ib_core_device** %6, align 8
  %34 = icmp ne %struct.ib_core_device* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %126

36:                                               ; preds = %23
  %37 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %38 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %37, i32 0, i32 1
  %39 = load %struct.rdma_dev_net*, %struct.rdma_dev_net** %5, align 8
  %40 = getelementptr inbounds %struct.rdma_dev_net, %struct.rdma_dev_net* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i32 @xa_reserve(i32* %38, i32 %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %126

47:                                               ; preds = %36
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.ib_core_device* @kzalloc(i32 8, i32 %48)
  store %struct.ib_core_device* %49, %struct.ib_core_device** %6, align 8
  %50 = load %struct.ib_core_device*, %struct.ib_core_device** %6, align 8
  %51 = icmp ne %struct.ib_core_device* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %119

55:                                               ; preds = %47
  %56 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %57 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ib_core_device*, %struct.ib_core_device** %6, align 8
  %61 = getelementptr inbounds %struct.ib_core_device, %struct.ib_core_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load %struct.ib_core_device*, %struct.ib_core_device** %6, align 8
  %64 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %65 = load %struct.rdma_dev_net*, %struct.rdma_dev_net** %5, align 8
  %66 = getelementptr inbounds %struct.rdma_dev_net, %struct.rdma_dev_net* %65, i32 0, i32 1
  %67 = call i32 @read_pnet(i32* %66)
  %68 = call i32 @rdma_init_coredev(%struct.ib_core_device* %63, %struct.ib_device* %64, i32 %67)
  %69 = load i32, i32* @compatdev_release, align 4
  %70 = load %struct.ib_core_device*, %struct.ib_core_device** %6, align 8
  %71 = getelementptr inbounds %struct.ib_core_device, %struct.ib_core_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 4
  %73 = load %struct.ib_core_device*, %struct.ib_core_device** %6, align 8
  %74 = getelementptr inbounds %struct.ib_core_device, %struct.ib_core_device* %73, i32 0, i32 0
  %75 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %76 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %75, i32 0, i32 2
  %77 = call i32 @dev_name(%struct.TYPE_9__* %76)
  %78 = call i32 @dev_set_name(%struct.TYPE_8__* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load %struct.ib_core_device*, %struct.ib_core_device** %6, align 8
  %80 = getelementptr inbounds %struct.ib_core_device, %struct.ib_core_device* %79, i32 0, i32 0
  %81 = call i32 @device_add(%struct.TYPE_8__* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %55
  br label %115

85:                                               ; preds = %55
  %86 = load %struct.ib_core_device*, %struct.ib_core_device** %6, align 8
  %87 = call i32 @ib_setup_port_attrs(%struct.ib_core_device* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %111

91:                                               ; preds = %85
  %92 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %93 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %92, i32 0, i32 1
  %94 = load %struct.rdma_dev_net*, %struct.rdma_dev_net** %5, align 8
  %95 = getelementptr inbounds %struct.rdma_dev_net, %struct.rdma_dev_net* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ib_core_device*, %struct.ib_core_device** %6, align 8
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call i32 @xa_store(i32* %93, i32 %96, %struct.ib_core_device* %97, i32 %98)
  %100 = call i32 @xa_err(i32 %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %91
  br label %108

104:                                              ; preds = %91
  %105 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %106 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %105, i32 0, i32 0
  %107 = call i32 @mutex_unlock(i32* %106)
  store i32 0, i32* %3, align 4
  br label %131

108:                                              ; preds = %103
  %109 = load %struct.ib_core_device*, %struct.ib_core_device** %6, align 8
  %110 = call i32 @ib_free_port_attrs(%struct.ib_core_device* %109)
  br label %111

111:                                              ; preds = %108, %90
  %112 = load %struct.ib_core_device*, %struct.ib_core_device** %6, align 8
  %113 = getelementptr inbounds %struct.ib_core_device, %struct.ib_core_device* %112, i32 0, i32 0
  %114 = call i32 @device_del(%struct.TYPE_8__* %113)
  br label %115

115:                                              ; preds = %111, %84
  %116 = load %struct.ib_core_device*, %struct.ib_core_device** %6, align 8
  %117 = getelementptr inbounds %struct.ib_core_device, %struct.ib_core_device* %116, i32 0, i32 0
  %118 = call i32 @put_device(%struct.TYPE_8__* %117)
  br label %119

119:                                              ; preds = %115, %52
  %120 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %121 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %120, i32 0, i32 1
  %122 = load %struct.rdma_dev_net*, %struct.rdma_dev_net** %5, align 8
  %123 = getelementptr inbounds %struct.rdma_dev_net, %struct.rdma_dev_net* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @xa_release(i32* %121, i32 %124)
  br label %126

126:                                              ; preds = %119, %46, %35
  %127 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %128 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %127, i32 0, i32 0
  %129 = call i32 @mutex_unlock(i32* %128)
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %126, %104, %22, %11
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @net_eq(i32, i32) #1

declare dso_local i32 @read_pnet(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ib_core_device* @xa_load(i32*, i32) #1

declare dso_local i32 @xa_reserve(i32*, i32, i32) #1

declare dso_local %struct.ib_core_device* @kzalloc(i32, i32) #1

declare dso_local i32 @rdma_init_coredev(%struct.ib_core_device*, %struct.ib_device*, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_9__*) #1

declare dso_local i32 @device_add(%struct.TYPE_8__*) #1

declare dso_local i32 @ib_setup_port_attrs(%struct.ib_core_device*) #1

declare dso_local i32 @xa_err(i32) #1

declare dso_local i32 @xa_store(i32*, i32, %struct.ib_core_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ib_free_port_attrs(%struct.ib_core_device*) #1

declare dso_local i32 @device_del(%struct.TYPE_8__*) #1

declare dso_local i32 @put_device(%struct.TYPE_8__*) #1

declare dso_local i32 @xa_release(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
