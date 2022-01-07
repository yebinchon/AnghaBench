; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv_balloon.c_post_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv_balloon.c_post_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_dynmem_device = type { i64, i64, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.dm_status = type { %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i32, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@last_post_time = common dso_local global i64 0, align 8
@pressure_report_delay = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@DM_STATUS_REPORT = common dso_local global i32 0, align 4
@trans_id = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hv_dynmem_device*)* @post_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @post_status(%struct.hv_dynmem_device* %0) #0 {
  %2 = alloca %struct.hv_dynmem_device*, align 8
  %3 = alloca %struct.dm_status, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.hv_dynmem_device* %0, %struct.hv_dynmem_device** %2, align 8
  %6 = load i64, i64* @jiffies, align 8
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* @last_post_time, align 8
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* @pressure_report_delay, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i64, i64* @pressure_report_delay, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* @pressure_report_delay, align 8
  br label %95

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @last_post_time, align 8
  %16 = load i64, i64* @HZ, align 8
  %17 = add i64 %15, %16
  %18 = call i32 @time_after(i64 %14, i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %95

21:                                               ; preds = %13
  %22 = call i32 @memset(%struct.dm_status* %3, i32 0, i32 40)
  %23 = load i32, i32* @DM_STATUS_REPORT, align 4
  %24 = getelementptr inbounds %struct.dm_status, %struct.dm_status* %3, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = getelementptr inbounds %struct.dm_status, %struct.dm_status* %3, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 40, i32* %27, align 8
  %28 = call i64 @atomic_inc_return(i32* @trans_id)
  %29 = getelementptr inbounds %struct.dm_status, %struct.dm_status* %3, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = call i32 (...) @si_mem_available()
  %32 = getelementptr inbounds %struct.dm_status, %struct.dm_status* %3, i32 0, i32 2
  store i32 %31, i32* %32, align 8
  %33 = call i64 (...) @vm_memory_committed()
  %34 = load %struct.hv_dynmem_device*, %struct.hv_dynmem_device** %2, align 8
  %35 = getelementptr inbounds %struct.hv_dynmem_device, %struct.hv_dynmem_device* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = load %struct.hv_dynmem_device*, %struct.hv_dynmem_device** %2, align 8
  %39 = getelementptr inbounds %struct.hv_dynmem_device, %struct.hv_dynmem_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.hv_dynmem_device*, %struct.hv_dynmem_device** %2, align 8
  %42 = getelementptr inbounds %struct.hv_dynmem_device, %struct.hv_dynmem_device* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %21
  %46 = load %struct.hv_dynmem_device*, %struct.hv_dynmem_device** %2, align 8
  %47 = getelementptr inbounds %struct.hv_dynmem_device, %struct.hv_dynmem_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.hv_dynmem_device*, %struct.hv_dynmem_device** %2, align 8
  %50 = getelementptr inbounds %struct.hv_dynmem_device, %struct.hv_dynmem_device* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  br label %54

53:                                               ; preds = %21
  br label %54

54:                                               ; preds = %53, %45
  %55 = phi i64 [ %52, %45 ], [ 0, %53 ]
  %56 = add nsw i64 %37, %55
  %57 = call i64 (...) @compute_balloon_floor()
  %58 = add nsw i64 %56, %57
  %59 = getelementptr inbounds %struct.dm_status, %struct.dm_status* %3, i32 0, i32 1
  store i64 %58, i64* %59, align 8
  %60 = getelementptr inbounds %struct.dm_status, %struct.dm_status* %3, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.dm_status, %struct.dm_status* %3, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i64 (...) @vm_memory_committed()
  %65 = load %struct.hv_dynmem_device*, %struct.hv_dynmem_device** %2, align 8
  %66 = getelementptr inbounds %struct.hv_dynmem_device, %struct.hv_dynmem_device* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.hv_dynmem_device*, %struct.hv_dynmem_device** %2, align 8
  %69 = getelementptr inbounds %struct.hv_dynmem_device, %struct.hv_dynmem_device* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.hv_dynmem_device*, %struct.hv_dynmem_device** %2, align 8
  %72 = getelementptr inbounds %struct.hv_dynmem_device, %struct.hv_dynmem_device* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @trace_balloon_status(i32 %61, i64 %63, i64 %64, i64 %67, i64 %70, i64 %73)
  %75 = getelementptr inbounds %struct.dm_status, %struct.dm_status* %3, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @atomic_read(i32* @trans_id)
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %54
  br label %95

81:                                               ; preds = %54
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* @last_post_time, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %95

86:                                               ; preds = %81
  %87 = load i64, i64* @jiffies, align 8
  store i64 %87, i64* @last_post_time, align 8
  %88 = load %struct.hv_dynmem_device*, %struct.hv_dynmem_device** %2, align 8
  %89 = getelementptr inbounds %struct.hv_dynmem_device, %struct.hv_dynmem_device* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %94 = call i32 @vmbus_sendpacket(i32 %92, %struct.dm_status* %3, i32 40, i64 0, i32 %93, i32 0)
  br label %95

95:                                               ; preds = %86, %85, %80, %20, %10
  ret void
}

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @memset(%struct.dm_status*, i32, i32) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @si_mem_available(...) #1

declare dso_local i64 @vm_memory_committed(...) #1

declare dso_local i64 @compute_balloon_floor(...) #1

declare dso_local i32 @trace_balloon_status(i32, i64, i64, i64, i64, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @vmbus_sendpacket(i32, %struct.dm_status*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
