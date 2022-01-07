; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_channel_mgmt.c_vmbus_onoffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_channel_mgmt.c_vmbus_onoffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vmbus_channel_message_header = type { i32 }
%struct.vmbus_channel_offer_channel = type { i64 }
%struct.vmbus_channel = type { %struct.vmbus_channel_offer_channel }

@vmbus_connection = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@INVALID_RELID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"vmbus offer changed: relid=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Old vmbus offer: \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"New vmbus offer: \00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Unable to allocate channel object\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmbus_channel_message_header*)* @vmbus_onoffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmbus_onoffer(%struct.vmbus_channel_message_header* %0) #0 {
  %2 = alloca %struct.vmbus_channel_message_header*, align 8
  %3 = alloca %struct.vmbus_channel_offer_channel*, align 8
  %4 = alloca %struct.vmbus_channel*, align 8
  %5 = alloca %struct.vmbus_channel*, align 8
  %6 = alloca i64, align 8
  store %struct.vmbus_channel_message_header* %0, %struct.vmbus_channel_message_header** %2, align 8
  %7 = load %struct.vmbus_channel_message_header*, %struct.vmbus_channel_message_header** %2, align 8
  %8 = bitcast %struct.vmbus_channel_message_header* %7 to %struct.vmbus_channel_offer_channel*
  store %struct.vmbus_channel_offer_channel* %8, %struct.vmbus_channel_offer_channel** %3, align 8
  %9 = load %struct.vmbus_channel_offer_channel*, %struct.vmbus_channel_offer_channel** %3, align 8
  %10 = call i32 @trace_vmbus_onoffer(%struct.vmbus_channel_offer_channel* %9)
  %11 = load %struct.vmbus_channel_offer_channel*, %struct.vmbus_channel_offer_channel** %3, align 8
  %12 = call %struct.vmbus_channel* @find_primary_channel_by_offer(%struct.vmbus_channel_offer_channel* %11)
  store %struct.vmbus_channel* %12, %struct.vmbus_channel** %4, align 8
  %13 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %14 = icmp ne %struct.vmbus_channel* %13, null
  br i1 %14, label %15, label %57

15:                                               ; preds = %1
  %16 = call i32 @atomic_dec(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 0))
  %17 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %18 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.vmbus_channel_offer_channel, %struct.vmbus_channel_offer_channel* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @INVALID_RELID, align 8
  %22 = icmp ne i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load %struct.vmbus_channel_offer_channel*, %struct.vmbus_channel_offer_channel** %3, align 8
  %26 = getelementptr inbounds %struct.vmbus_channel_offer_channel, %struct.vmbus_channel_offer_channel* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %29 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.vmbus_channel_offer_channel, %struct.vmbus_channel_offer_channel* %29, i32 0, i32 0
  store i64 %27, i64* %30, align 8
  store i64 8, i64* %6, align 8
  %31 = load %struct.vmbus_channel_offer_channel*, %struct.vmbus_channel_offer_channel** %3, align 8
  %32 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %33 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %32, i32 0, i32 0
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @memcmp(%struct.vmbus_channel_offer_channel* %31, %struct.vmbus_channel_offer_channel* %33, i64 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %15
  %38 = call i32 (...) @check_ready_for_resume_event()
  br label %74

39:                                               ; preds = %15
  %40 = load %struct.vmbus_channel_offer_channel*, %struct.vmbus_channel_offer_channel** %3, align 8
  %41 = getelementptr inbounds %struct.vmbus_channel_offer_channel, %struct.vmbus_channel_offer_channel* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %45 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %46 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %45, i32 0, i32 0
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @print_hex_dump_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 16, i32 4, %struct.vmbus_channel_offer_channel* %46, i64 %47, i32 0)
  %49 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %50 = load %struct.vmbus_channel_offer_channel*, %struct.vmbus_channel_offer_channel** %3, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @print_hex_dump_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 16, i32 4, %struct.vmbus_channel_offer_channel* %50, i64 %51, i32 0)
  %53 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %54 = load %struct.vmbus_channel_offer_channel*, %struct.vmbus_channel_offer_channel** %3, align 8
  %55 = call i32 @vmbus_setup_channel_state(%struct.vmbus_channel* %53, %struct.vmbus_channel_offer_channel* %54)
  %56 = call i32 (...) @check_ready_for_resume_event()
  br label %74

57:                                               ; preds = %1
  %58 = call %struct.vmbus_channel* (...) @alloc_channel()
  store %struct.vmbus_channel* %58, %struct.vmbus_channel** %5, align 8
  %59 = load %struct.vmbus_channel*, %struct.vmbus_channel** %5, align 8
  %60 = icmp ne %struct.vmbus_channel* %59, null
  br i1 %60, label %68, label %61

61:                                               ; preds = %57
  %62 = load %struct.vmbus_channel_offer_channel*, %struct.vmbus_channel_offer_channel** %3, align 8
  %63 = getelementptr inbounds %struct.vmbus_channel_offer_channel, %struct.vmbus_channel_offer_channel* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @vmbus_release_relid(i64 %64)
  %66 = call i32 @atomic_dec(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 0))
  %67 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %74

68:                                               ; preds = %57
  %69 = load %struct.vmbus_channel*, %struct.vmbus_channel** %5, align 8
  %70 = load %struct.vmbus_channel_offer_channel*, %struct.vmbus_channel_offer_channel** %3, align 8
  %71 = call i32 @vmbus_setup_channel_state(%struct.vmbus_channel* %69, %struct.vmbus_channel_offer_channel* %70)
  %72 = load %struct.vmbus_channel*, %struct.vmbus_channel** %5, align 8
  %73 = call i32 @vmbus_process_offer(%struct.vmbus_channel* %72)
  br label %74

74:                                               ; preds = %68, %61, %39, %37
  ret void
}

declare dso_local i32 @trace_vmbus_onoffer(%struct.vmbus_channel_offer_channel*) #1

declare dso_local %struct.vmbus_channel* @find_primary_channel_by_offer(%struct.vmbus_channel_offer_channel*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @memcmp(%struct.vmbus_channel_offer_channel*, %struct.vmbus_channel_offer_channel*, i64) #1

declare dso_local i32 @check_ready_for_resume_event(...) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @print_hex_dump_debug(i8*, i32, i32, i32, %struct.vmbus_channel_offer_channel*, i64, i32) #1

declare dso_local i32 @vmbus_setup_channel_state(%struct.vmbus_channel*, %struct.vmbus_channel_offer_channel*) #1

declare dso_local %struct.vmbus_channel* @alloc_channel(...) #1

declare dso_local i32 @vmbus_release_relid(i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @vmbus_process_offer(%struct.vmbus_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
