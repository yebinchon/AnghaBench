; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hw.c_i40iw_manage_arp_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hw.c_i40iw_manage_arp_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.i40iw_add_arp_cache_entry_info = type { i32, i32, i32 }
%struct.i40iw_cqp_request = type { %struct.cqp_commands_info }
%struct.cqp_commands_info = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i32*, %struct.i40iw_add_arp_cache_entry_info }
%struct.TYPE_6__ = type { i64, i32, i32* }

@I40IW_ARP_ADD = common dso_local global i64 0, align 8
@OP_ADD_ARP_CACHE_ENTRY = common dso_local global i32 0, align 4
@OP_DELETE_ARP_CACHE_ENTRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"CQP-OP Add/Del Arp Cache entry fail\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_manage_arp_cache(%struct.i40iw_device* %0, i8* %1, i64* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.i40iw_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.i40iw_add_arp_cache_entry_info*, align 8
  %12 = alloca %struct.i40iw_cqp_request*, align 8
  %13 = alloca %struct.cqp_commands_info*, align 8
  %14 = alloca i32, align 4
  store %struct.i40iw_device* %0, %struct.i40iw_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %15 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %16 = load i64*, i64** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = load i64, i64* %10, align 8
  %20 = call i32 @i40iw_arp_table(%struct.i40iw_device* %15, i64* %16, i32 %17, i8* %18, i64 %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  br label %123

24:                                               ; preds = %5
  %25 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %26 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %25, i32 0, i32 0
  %27 = call %struct.i40iw_cqp_request* @i40iw_get_cqp_request(%struct.TYPE_10__* %26, i32 0)
  store %struct.i40iw_cqp_request* %27, %struct.i40iw_cqp_request** %12, align 8
  %28 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %12, align 8
  %29 = icmp ne %struct.i40iw_cqp_request* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %123

31:                                               ; preds = %24
  %32 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %12, align 8
  %33 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %32, i32 0, i32 0
  store %struct.cqp_commands_info* %33, %struct.cqp_commands_info** %13, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @I40IW_ARP_ADD, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %74

37:                                               ; preds = %31
  %38 = load i32, i32* @OP_ADD_ARP_CACHE_ENTRY, align 4
  %39 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %13, align 8
  %40 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %13, align 8
  %42 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  store %struct.i40iw_add_arp_cache_entry_info* %45, %struct.i40iw_add_arp_cache_entry_info** %11, align 8
  %46 = load %struct.i40iw_add_arp_cache_entry_info*, %struct.i40iw_add_arp_cache_entry_info** %11, align 8
  %47 = call i32 @memset(%struct.i40iw_add_arp_cache_entry_info* %46, i32 0, i32 12)
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @cpu_to_le16(i32 %48)
  %50 = load %struct.i40iw_add_arp_cache_entry_info*, %struct.i40iw_add_arp_cache_entry_info** %11, align 8
  %51 = getelementptr inbounds %struct.i40iw_add_arp_cache_entry_info, %struct.i40iw_add_arp_cache_entry_info* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.i40iw_add_arp_cache_entry_info*, %struct.i40iw_add_arp_cache_entry_info** %11, align 8
  %53 = getelementptr inbounds %struct.i40iw_add_arp_cache_entry_info, %struct.i40iw_add_arp_cache_entry_info* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  %54 = load %struct.i40iw_add_arp_cache_entry_info*, %struct.i40iw_add_arp_cache_entry_info** %11, align 8
  %55 = getelementptr inbounds %struct.i40iw_add_arp_cache_entry_info, %struct.i40iw_add_arp_cache_entry_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @ether_addr_copy(i32 %56, i8* %57)
  %59 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %12, align 8
  %60 = ptrtoint %struct.i40iw_cqp_request* %59 to i64
  %61 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %13, align 8
  %62 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store i64 %60, i64* %65, align 8
  %66 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %67 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %13, align 8
  %70 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  store i32* %68, i32** %73, align 8
  br label %99

74:                                               ; preds = %31
  %75 = load i32, i32* @OP_DELETE_ARP_CACHE_ENTRY, align 4
  %76 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %13, align 8
  %77 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %12, align 8
  %79 = ptrtoint %struct.i40iw_cqp_request* %78 to i64
  %80 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %13, align 8
  %81 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i64 %79, i64* %84, align 8
  %85 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %86 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %13, align 8
  %89 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  store i32* %87, i32** %92, align 8
  %93 = load i32, i32* %14, align 4
  %94 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %13, align 8
  %95 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  store i32 %93, i32* %98, align 8
  br label %99

99:                                               ; preds = %74, %37
  %100 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %101 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %13, align 8
  %104 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  store i32* %102, i32** %107, align 8
  %108 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %12, align 8
  %109 = ptrtoint %struct.i40iw_cqp_request* %108 to i64
  %110 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %13, align 8
  %111 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  store i64 %109, i64* %114, align 8
  %115 = load %struct.cqp_commands_info*, %struct.cqp_commands_info** %13, align 8
  %116 = getelementptr inbounds %struct.cqp_commands_info, %struct.cqp_commands_info* %115, i32 0, i32 0
  store i32 1, i32* %116, align 8
  %117 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %118 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %12, align 8
  %119 = call i64 @i40iw_handle_cqp_op(%struct.i40iw_device* %117, %struct.i40iw_cqp_request* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %99
  %122 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %123

123:                                              ; preds = %23, %30, %121, %99
  ret void
}

declare dso_local i32 @i40iw_arp_table(%struct.i40iw_device*, i64*, i32, i8*, i64) #1

declare dso_local %struct.i40iw_cqp_request* @i40iw_get_cqp_request(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @memset(%struct.i40iw_add_arp_cache_entry_info*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i8*) #1

declare dso_local i64 @i40iw_handle_cqp_op(%struct.i40iw_device*, %struct.i40iw_cqp_request*) #1

declare dso_local i32 @i40iw_pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
