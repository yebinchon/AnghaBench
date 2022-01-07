; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_multicast.c_mcast_add_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_multicast.c_mcast_add_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.mcast_device = type { i32, i32, i32, %struct.ib_device*, %struct.mcast_port* }
%struct.mcast_port = type { i32, i32, i32, i32, i32, %struct.mcast_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@mcast_client = common dso_local global i32 0, align 4
@mcast_event_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @mcast_add_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcast_add_one(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca %struct.mcast_device*, align 8
  %4 = alloca %struct.mcast_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %8 = load %struct.mcast_port*, %struct.mcast_port** %4, align 8
  %9 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %10 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @struct_size(%struct.mcast_device* %7, %struct.mcast_port* %8, i32 %11)
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.mcast_device* @kmalloc(i32 %12, i32 %13)
  store %struct.mcast_device* %14, %struct.mcast_device** %3, align 8
  %15 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %16 = icmp ne %struct.mcast_device* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %102

18:                                               ; preds = %1
  %19 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %20 = call i32 @rdma_start_port(%struct.ib_device* %19)
  %21 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %22 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %24 = call i32 @rdma_end_port(%struct.ib_device* %23)
  %25 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %26 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %78, %18
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %30 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %33 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %31, %34
  %36 = icmp sle i32 %28, %35
  br i1 %36, label %37, label %81

37:                                               ; preds = %27
  %38 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %39 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %40 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %41, %42
  %44 = call i32 @rdma_cap_ib_mcast(%struct.ib_device* %38, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %37
  br label %78

47:                                               ; preds = %37
  %48 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %49 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %48, i32 0, i32 4
  %50 = load %struct.mcast_port*, %struct.mcast_port** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %50, i64 %52
  store %struct.mcast_port* %53, %struct.mcast_port** %4, align 8
  %54 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %55 = load %struct.mcast_port*, %struct.mcast_port** %4, align 8
  %56 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %55, i32 0, i32 5
  store %struct.mcast_device* %54, %struct.mcast_device** %56, align 8
  %57 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %58 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %59, %60
  %62 = load %struct.mcast_port*, %struct.mcast_port** %4, align 8
  %63 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.mcast_port*, %struct.mcast_port** %4, align 8
  %65 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %64, i32 0, i32 4
  %66 = call i32 @spin_lock_init(i32* %65)
  %67 = load i32, i32* @RB_ROOT, align 4
  %68 = load %struct.mcast_port*, %struct.mcast_port** %4, align 8
  %69 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load %struct.mcast_port*, %struct.mcast_port** %4, align 8
  %71 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %70, i32 0, i32 2
  %72 = call i32 @init_completion(i32* %71)
  %73 = load %struct.mcast_port*, %struct.mcast_port** %4, align 8
  %74 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %73, i32 0, i32 1
  %75 = call i32 @atomic_set(i32* %74, i32 1)
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %47, %46
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %27

81:                                               ; preds = %27
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %86 = call i32 @kfree(%struct.mcast_device* %85)
  br label %102

87:                                               ; preds = %81
  %88 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %89 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %90 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %89, i32 0, i32 3
  store %struct.ib_device* %88, %struct.ib_device** %90, align 8
  %91 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %92 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %93 = call i32 @ib_set_client_data(%struct.ib_device* %91, i32* @mcast_client, %struct.mcast_device* %92)
  %94 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %95 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %94, i32 0, i32 2
  %96 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %97 = load i32, i32* @mcast_event_handler, align 4
  %98 = call i32 @INIT_IB_EVENT_HANDLER(i32* %95, %struct.ib_device* %96, i32 %97)
  %99 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %100 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %99, i32 0, i32 2
  %101 = call i32 @ib_register_event_handler(i32* %100)
  br label %102

102:                                              ; preds = %87, %84, %17
  ret void
}

declare dso_local %struct.mcast_device* @kmalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.mcast_device*, %struct.mcast_port*, i32) #1

declare dso_local i32 @rdma_start_port(%struct.ib_device*) #1

declare dso_local i32 @rdma_end_port(%struct.ib_device*) #1

declare dso_local i32 @rdma_cap_ib_mcast(%struct.ib_device*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @kfree(%struct.mcast_device*) #1

declare dso_local i32 @ib_set_client_data(%struct.ib_device*, i32*, %struct.mcast_device*) #1

declare dso_local i32 @INIT_IB_EVENT_HANDLER(i32*, %struct.ib_device*, i32) #1

declare dso_local i32 @ib_register_event_handler(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
