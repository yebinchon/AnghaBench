; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_dbgdev.c_dbgdev_address_watch_nodiq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_dbgdev.c_dbgdev_address_watch_nodiq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dbgdev = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.dbg_address_watch_info = type { i32, i32, i32, i32 }
%union.TCP_WATCH_ADDR_H_BITS = type { i64 }
%union.TCP_WATCH_ADDR_L_BITS = type { i64 }
%union.TCP_WATCH_CNTL_BITS = type { i64, [8 x i8] }
%struct.kfd_process_device = type { %struct.TYPE_13__*, %struct.TYPE_8__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (i32, i32, i64, i64, i64)* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"Failed to get pdd for wave control no DIQ\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@MAX_WATCH_ADDRESSES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"num_watch_points is invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"adw_info fields are not valid\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"\09\09%30s\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"* * * * * * * * * * * * * * * * * *\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"\09\09%20s %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"register index :\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"vmid is :\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Address Low is :\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Address high is :\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Control Mask is :\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Control Mode is :\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Control Vmid is :\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Control atc  is :\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kfd_dbgdev*, %struct.dbg_address_watch_info*)* @dbgdev_address_watch_nodiq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbgdev_address_watch_nodiq(%struct.kfd_dbgdev* %0, %struct.dbg_address_watch_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kfd_dbgdev*, align 8
  %5 = alloca %struct.dbg_address_watch_info*, align 8
  %6 = alloca %union.TCP_WATCH_ADDR_H_BITS, align 8
  %7 = alloca %union.TCP_WATCH_ADDR_L_BITS, align 8
  %8 = alloca %union.TCP_WATCH_CNTL_BITS, align 8
  %9 = alloca %struct.kfd_process_device*, align 8
  %10 = alloca i32, align 4
  store %struct.kfd_dbgdev* %0, %struct.kfd_dbgdev** %4, align 8
  store %struct.dbg_address_watch_info* %1, %struct.dbg_address_watch_info** %5, align 8
  %11 = load %struct.kfd_dbgdev*, %struct.kfd_dbgdev** %4, align 8
  %12 = getelementptr inbounds %struct.kfd_dbgdev, %struct.kfd_dbgdev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %14 = load %struct.dbg_address_watch_info*, %struct.dbg_address_watch_info** %5, align 8
  %15 = getelementptr inbounds %struct.dbg_address_watch_info, %struct.dbg_address_watch_info* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.kfd_process_device* @kfd_get_process_device_data(%struct.TYPE_14__* %13, i32 %16)
  store %struct.kfd_process_device* %17, %struct.kfd_process_device** %9, align 8
  %18 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %19 = icmp ne %struct.kfd_process_device* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EFAULT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %132

24:                                               ; preds = %2
  %25 = bitcast %union.TCP_WATCH_ADDR_H_BITS* %6 to i64*
  store i64 0, i64* %25, align 8
  %26 = bitcast %union.TCP_WATCH_ADDR_L_BITS* %7 to i64*
  store i64 0, i64* %26, align 8
  %27 = bitcast %union.TCP_WATCH_CNTL_BITS* %8 to i64*
  store i64 0, i64* %27, align 8
  %28 = load %struct.dbg_address_watch_info*, %struct.dbg_address_watch_info** %5, align 8
  %29 = getelementptr inbounds %struct.dbg_address_watch_info, %struct.dbg_address_watch_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MAX_WATCH_ADDRESSES, align 4
  %32 = icmp ugt i32 %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %24
  %34 = load %struct.dbg_address_watch_info*, %struct.dbg_address_watch_info** %5, align 8
  %35 = getelementptr inbounds %struct.dbg_address_watch_info, %struct.dbg_address_watch_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33, %24
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %132

42:                                               ; preds = %33
  %43 = load %struct.dbg_address_watch_info*, %struct.dbg_address_watch_info** %5, align 8
  %44 = getelementptr inbounds %struct.dbg_address_watch_info, %struct.dbg_address_watch_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.dbg_address_watch_info*, %struct.dbg_address_watch_info** %5, align 8
  %49 = getelementptr inbounds %struct.dbg_address_watch_info, %struct.dbg_address_watch_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47, %42
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %132

56:                                               ; preds = %47
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %128, %56
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.dbg_address_watch_info*, %struct.dbg_address_watch_info** %5, align 8
  %60 = getelementptr inbounds %struct.dbg_address_watch_info, %struct.dbg_address_watch_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ult i32 %58, %61
  br i1 %62, label %63, label %131

63:                                               ; preds = %57
  %64 = load %struct.dbg_address_watch_info*, %struct.dbg_address_watch_info** %5, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %67 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @dbgdev_address_watch_set_registers(%struct.dbg_address_watch_info* %64, %union.TCP_WATCH_ADDR_H_BITS* %6, %union.TCP_WATCH_ADDR_L_BITS* %7, %union.TCP_WATCH_CNTL_BITS* %8, i32 %65, i32 %69)
  %71 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i32, i32* %10, align 4
  %73 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %72)
  %74 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %75 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %77)
  %79 = bitcast %union.TCP_WATCH_ADDR_L_BITS* %7 to %struct.TYPE_9__*
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %81)
  %83 = bitcast %union.TCP_WATCH_ADDR_H_BITS* %6 to %struct.TYPE_10__*
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %85)
  %87 = bitcast %union.TCP_WATCH_ADDR_H_BITS* %6 to %struct.TYPE_10__*
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %89)
  %91 = bitcast %union.TCP_WATCH_CNTL_BITS* %8 to %struct.TYPE_11__*
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %93)
  %95 = bitcast %union.TCP_WATCH_CNTL_BITS* %8 to %struct.TYPE_11__*
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %97)
  %99 = bitcast %union.TCP_WATCH_CNTL_BITS* %8 to %struct.TYPE_11__*
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 %101)
  %103 = bitcast %union.TCP_WATCH_CNTL_BITS* %8 to %struct.TYPE_11__*
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %105)
  %107 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %108 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %109 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %108, i32 0, i32 0
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i32 (i32, i32, i64, i64, i64)*, i32 (i32, i32, i64, i64, i64)** %113, align 8
  %115 = load %struct.kfd_dbgdev*, %struct.kfd_dbgdev** %4, align 8
  %116 = getelementptr inbounds %struct.kfd_dbgdev, %struct.kfd_dbgdev* %115, i32 0, i32 0
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %10, align 4
  %121 = bitcast %union.TCP_WATCH_CNTL_BITS* %8 to i64*
  %122 = load i64, i64* %121, align 8
  %123 = bitcast %union.TCP_WATCH_ADDR_H_BITS* %6 to i64*
  %124 = load i64, i64* %123, align 8
  %125 = bitcast %union.TCP_WATCH_ADDR_L_BITS* %7 to i64*
  %126 = load i64, i64* %125, align 8
  %127 = call i32 %114(i32 %119, i32 %120, i64 %122, i64 %124, i64 %126)
  br label %128

128:                                              ; preds = %63
  %129 = load i32, i32* %10, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %57

131:                                              ; preds = %57
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %131, %52, %38, %20
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.kfd_process_device* @kfd_get_process_device_data(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @dbgdev_address_watch_set_registers(%struct.dbg_address_watch_info*, %union.TCP_WATCH_ADDR_H_BITS*, %union.TCP_WATCH_ADDR_L_BITS*, %union.TCP_WATCH_CNTL_BITS*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
