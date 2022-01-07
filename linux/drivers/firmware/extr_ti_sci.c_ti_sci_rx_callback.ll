; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_rx_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_rx_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_client = type { i32 }
%struct.ti_sci_info = type { %struct.TYPE_2__*, %struct.ti_sci_xfers_info, %struct.device* }
%struct.TYPE_2__ = type { i64 }
%struct.ti_sci_xfers_info = type { %struct.ti_sci_xfer*, i32 }
%struct.ti_sci_xfer = type { i64, i32, i32 }
%struct.device = type { i32 }
%struct.ti_msgmgr_message = type { i64, i64 }
%struct.ti_sci_msg_hdr = type { i64 }

@.str = private unnamed_addr constant [33 x i8] c"Message for %d is not expected!\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Unable to handle %zu xfer(max %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Recv xfer %zu < expected %d length\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbox_client*, i8*)* @ti_sci_rx_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_sci_rx_callback(%struct.mbox_client* %0, i8* %1) #0 {
  %3 = alloca %struct.mbox_client*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ti_sci_info*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.ti_sci_xfers_info*, align 8
  %8 = alloca %struct.ti_msgmgr_message*, align 8
  %9 = alloca %struct.ti_sci_msg_hdr*, align 8
  %10 = alloca %struct.ti_sci_xfer*, align 8
  %11 = alloca i64, align 8
  store %struct.mbox_client* %0, %struct.mbox_client** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.mbox_client*, %struct.mbox_client** %3, align 8
  %13 = call %struct.ti_sci_info* @cl_to_ti_sci_info(%struct.mbox_client* %12)
  store %struct.ti_sci_info* %13, %struct.ti_sci_info** %5, align 8
  %14 = load %struct.ti_sci_info*, %struct.ti_sci_info** %5, align 8
  %15 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %14, i32 0, i32 2
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load %struct.ti_sci_info*, %struct.ti_sci_info** %5, align 8
  %18 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %17, i32 0, i32 1
  store %struct.ti_sci_xfers_info* %18, %struct.ti_sci_xfers_info** %7, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = bitcast i8* %19 to %struct.ti_msgmgr_message*
  store %struct.ti_msgmgr_message* %20, %struct.ti_msgmgr_message** %8, align 8
  %21 = load %struct.ti_msgmgr_message*, %struct.ti_msgmgr_message** %8, align 8
  %22 = getelementptr inbounds %struct.ti_msgmgr_message, %struct.ti_msgmgr_message* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ti_sci_msg_hdr*
  store %struct.ti_sci_msg_hdr* %24, %struct.ti_sci_msg_hdr** %9, align 8
  %25 = load %struct.ti_sci_msg_hdr*, %struct.ti_sci_msg_hdr** %9, align 8
  %26 = getelementptr inbounds %struct.ti_sci_msg_hdr, %struct.ti_sci_msg_hdr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load %struct.ti_sci_xfers_info*, %struct.ti_sci_xfers_info** %7, align 8
  %30 = getelementptr inbounds %struct.ti_sci_xfers_info, %struct.ti_sci_xfers_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @test_bit(i64 %28, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %2
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = load i64, i64* %11, align 8
  %37 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %36)
  br label %104

38:                                               ; preds = %2
  %39 = load %struct.ti_sci_xfers_info*, %struct.ti_sci_xfers_info** %7, align 8
  %40 = getelementptr inbounds %struct.ti_sci_xfers_info, %struct.ti_sci_xfers_info* %39, i32 0, i32 0
  %41 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %40, align 8
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %41, i64 %42
  store %struct.ti_sci_xfer* %43, %struct.ti_sci_xfer** %10, align 8
  %44 = load %struct.ti_msgmgr_message*, %struct.ti_msgmgr_message** %8, align 8
  %45 = getelementptr inbounds %struct.ti_msgmgr_message, %struct.ti_msgmgr_message* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ti_sci_info*, %struct.ti_sci_info** %5, align 8
  %48 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %46, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %38
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = load %struct.ti_msgmgr_message*, %struct.ti_msgmgr_message** %8, align 8
  %56 = getelementptr inbounds %struct.ti_msgmgr_message, %struct.ti_msgmgr_message* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.ti_sci_info*, %struct.ti_sci_info** %5, align 8
  %59 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %57, i64 %62)
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = load %struct.ti_sci_msg_hdr*, %struct.ti_sci_msg_hdr** %9, align 8
  %66 = call i32 @ti_sci_dump_header_dbg(%struct.device* %64, %struct.ti_sci_msg_hdr* %65)
  br label %104

67:                                               ; preds = %38
  %68 = load %struct.ti_msgmgr_message*, %struct.ti_msgmgr_message** %8, align 8
  %69 = getelementptr inbounds %struct.ti_msgmgr_message, %struct.ti_msgmgr_message* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %10, align 8
  %72 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %70, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %67
  %76 = load %struct.device*, %struct.device** %6, align 8
  %77 = load %struct.ti_msgmgr_message*, %struct.ti_msgmgr_message** %8, align 8
  %78 = getelementptr inbounds %struct.ti_msgmgr_message, %struct.ti_msgmgr_message* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %10, align 8
  %81 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %76, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %79, i64 %82)
  %84 = load %struct.device*, %struct.device** %6, align 8
  %85 = load %struct.ti_sci_msg_hdr*, %struct.ti_sci_msg_hdr** %9, align 8
  %86 = call i32 @ti_sci_dump_header_dbg(%struct.device* %84, %struct.ti_sci_msg_hdr* %85)
  br label %104

87:                                               ; preds = %67
  %88 = load %struct.device*, %struct.device** %6, align 8
  %89 = load %struct.ti_sci_msg_hdr*, %struct.ti_sci_msg_hdr** %9, align 8
  %90 = call i32 @ti_sci_dump_header_dbg(%struct.device* %88, %struct.ti_sci_msg_hdr* %89)
  %91 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %10, align 8
  %92 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ti_msgmgr_message*, %struct.ti_msgmgr_message** %8, align 8
  %95 = getelementptr inbounds %struct.ti_msgmgr_message, %struct.ti_msgmgr_message* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %10, align 8
  %98 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @memcpy(i32 %93, i64 %96, i64 %99)
  %101 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %10, align 8
  %102 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %101, i32 0, i32 1
  %103 = call i32 @complete(i32* %102)
  br label %104

104:                                              ; preds = %87, %75, %53, %34
  ret void
}

declare dso_local %struct.ti_sci_info* @cl_to_ti_sci_info(%struct.mbox_client*) #1

declare dso_local i32 @test_bit(i64, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, ...) #1

declare dso_local i32 @ti_sci_dump_header_dbg(%struct.device*, %struct.ti_sci_msg_hdr*) #1

declare dso_local i32 @memcpy(i32, i64, i64) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
