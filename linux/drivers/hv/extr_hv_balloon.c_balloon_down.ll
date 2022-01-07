; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv_balloon.c_balloon_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv_balloon.c_balloon_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.hv_dynmem_device = type { i32, i32 }
%struct.dm_unballoon_request = type { i32, i32, %union.dm_mem_page_range* }
%union.dm_mem_page_range = type { i32 }
%struct.dm_unballoon_response = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@dm_device = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [27 x i8] c"Freed %u ballooned pages.\0A\00", align 1
@DM_UNBALLOON_RESPONSE = common dso_local global i32 0, align 4
@trans_id = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@DM_INITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hv_dynmem_device*, %struct.dm_unballoon_request*)* @balloon_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balloon_down(%struct.hv_dynmem_device* %0, %struct.dm_unballoon_request* %1) #0 {
  %3 = alloca %struct.hv_dynmem_device*, align 8
  %4 = alloca %struct.dm_unballoon_request*, align 8
  %5 = alloca %union.dm_mem_page_range*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_unballoon_response, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hv_dynmem_device* %0, %struct.hv_dynmem_device** %3, align 8
  store %struct.dm_unballoon_request* %1, %struct.dm_unballoon_request** %4, align 8
  %10 = load %struct.dm_unballoon_request*, %struct.dm_unballoon_request** %4, align 8
  %11 = getelementptr inbounds %struct.dm_unballoon_request, %struct.dm_unballoon_request* %10, i32 0, i32 2
  %12 = load %union.dm_mem_page_range*, %union.dm_mem_page_range** %11, align 8
  store %union.dm_mem_page_range* %12, %union.dm_mem_page_range** %5, align 8
  %13 = load %struct.dm_unballoon_request*, %struct.dm_unballoon_request** %4, align 8
  %14 = getelementptr inbounds %struct.dm_unballoon_request, %struct.dm_unballoon_request* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.hv_dynmem_device*, %struct.hv_dynmem_device** %3, align 8
  %17 = getelementptr inbounds %struct.hv_dynmem_device, %struct.hv_dynmem_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %31, %2
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load %struct.hv_dynmem_device*, %struct.hv_dynmem_device** %3, align 8
  %25 = load %union.dm_mem_page_range*, %union.dm_mem_page_range** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %union.dm_mem_page_range, %union.dm_mem_page_range* %25, i64 %27
  %29 = call i32 @free_balloon_pages(%struct.hv_dynmem_device* %24, %union.dm_mem_page_range* %28)
  %30 = call i32 @complete(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dm_device, i32 0, i32 1))
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %19

34:                                               ; preds = %19
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.hv_dynmem_device*, %struct.hv_dynmem_device** %3, align 8
  %37 = getelementptr inbounds %struct.hv_dynmem_device, %struct.hv_dynmem_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub i32 %35, %38
  %40 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.dm_unballoon_request*, %struct.dm_unballoon_request** %4, align 8
  %42 = getelementptr inbounds %struct.dm_unballoon_request, %struct.dm_unballoon_request* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %64

46:                                               ; preds = %34
  %47 = call i32 @memset(%struct.dm_unballoon_response* %7, i32 0, i32 12)
  %48 = load i32, i32* @DM_UNBALLOON_RESPONSE, align 4
  %49 = getelementptr inbounds %struct.dm_unballoon_response, %struct.dm_unballoon_response* %7, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = call i32 @atomic_inc_return(i32* @trans_id)
  %52 = getelementptr inbounds %struct.dm_unballoon_response, %struct.dm_unballoon_response* %7, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds %struct.dm_unballoon_response, %struct.dm_unballoon_response* %7, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 12, i32* %55, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dm_device, i32 0, i32 0), align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %60 = call i32 @vmbus_sendpacket(i32 %58, %struct.dm_unballoon_response* %7, i32 12, i64 0, i32 %59, i32 0)
  %61 = load i32, i32* @DM_INITIALIZED, align 4
  %62 = load %struct.hv_dynmem_device*, %struct.hv_dynmem_device** %3, align 8
  %63 = getelementptr inbounds %struct.hv_dynmem_device, %struct.hv_dynmem_device* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %46, %45
  ret void
}

declare dso_local i32 @free_balloon_pages(%struct.hv_dynmem_device*, %union.dm_mem_page_range*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @memset(%struct.dm_unballoon_response*, i32, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @vmbus_sendpacket(i32, %struct.dm_unballoon_response*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
