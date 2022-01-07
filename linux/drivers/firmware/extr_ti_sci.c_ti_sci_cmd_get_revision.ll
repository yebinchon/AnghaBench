; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_cmd_get_revision.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_cmd_get_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_info = type { i32, %struct.ti_sci_handle, %struct.device* }
%struct.ti_sci_handle = type { %struct.ti_sci_version_info }
%struct.ti_sci_version_info = type { i32, i32, i32, i32 }
%struct.device = type { i32 }
%struct.ti_sci_msg_resp_version = type { i32, i32, i32, i32 }
%struct.ti_sci_xfer = type { i64 }

@TI_SCI_MSG_VERSION = common dso_local global i32 0, align 4
@TI_SCI_FLAG_REQ_ACK_ON_PROCESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Message alloc failed(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Mbox send fail %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_sci_info*)* @ti_sci_cmd_get_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_cmd_get_revision(%struct.ti_sci_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_sci_info*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ti_sci_handle*, align 8
  %6 = alloca %struct.ti_sci_version_info*, align 8
  %7 = alloca %struct.ti_sci_msg_resp_version*, align 8
  %8 = alloca %struct.ti_sci_xfer*, align 8
  %9 = alloca i32, align 4
  store %struct.ti_sci_info* %0, %struct.ti_sci_info** %3, align 8
  %10 = load %struct.ti_sci_info*, %struct.ti_sci_info** %3, align 8
  %11 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %10, i32 0, i32 2
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.ti_sci_info*, %struct.ti_sci_info** %3, align 8
  %14 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %13, i32 0, i32 1
  store %struct.ti_sci_handle* %14, %struct.ti_sci_handle** %5, align 8
  %15 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %5, align 8
  %16 = getelementptr inbounds %struct.ti_sci_handle, %struct.ti_sci_handle* %15, i32 0, i32 0
  store %struct.ti_sci_version_info* %16, %struct.ti_sci_version_info** %6, align 8
  %17 = load %struct.ti_sci_info*, %struct.ti_sci_info** %3, align 8
  %18 = load i32, i32* @TI_SCI_MSG_VERSION, align 4
  %19 = load i32, i32* @TI_SCI_FLAG_REQ_ACK_ON_PROCESSED, align 4
  %20 = call %struct.ti_sci_xfer* @ti_sci_get_one_xfer(%struct.ti_sci_info* %17, i32 %18, i32 %19, i32 4, i32 16)
  store %struct.ti_sci_xfer* %20, %struct.ti_sci_xfer** %8, align 8
  %21 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %8, align 8
  %22 = call i64 @IS_ERR(%struct.ti_sci_xfer* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %8, align 8
  %26 = call i32 @PTR_ERR(%struct.ti_sci_xfer* %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %2, align 4
  br label %74

31:                                               ; preds = %1
  %32 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %8, align 8
  %33 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.ti_sci_msg_resp_version*
  store %struct.ti_sci_msg_resp_version* %35, %struct.ti_sci_msg_resp_version** %7, align 8
  %36 = load %struct.ti_sci_info*, %struct.ti_sci_info** %3, align 8
  %37 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %8, align 8
  %38 = call i32 @ti_sci_do_xfer(%struct.ti_sci_info* %36, %struct.ti_sci_xfer* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %68

45:                                               ; preds = %31
  %46 = load %struct.ti_sci_msg_resp_version*, %struct.ti_sci_msg_resp_version** %7, align 8
  %47 = getelementptr inbounds %struct.ti_sci_msg_resp_version, %struct.ti_sci_msg_resp_version* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ti_sci_version_info*, %struct.ti_sci_version_info** %6, align 8
  %50 = getelementptr inbounds %struct.ti_sci_version_info, %struct.ti_sci_version_info* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ti_sci_msg_resp_version*, %struct.ti_sci_msg_resp_version** %7, align 8
  %52 = getelementptr inbounds %struct.ti_sci_msg_resp_version, %struct.ti_sci_msg_resp_version* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ti_sci_version_info*, %struct.ti_sci_version_info** %6, align 8
  %55 = getelementptr inbounds %struct.ti_sci_version_info, %struct.ti_sci_version_info* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ti_sci_msg_resp_version*, %struct.ti_sci_msg_resp_version** %7, align 8
  %57 = getelementptr inbounds %struct.ti_sci_msg_resp_version, %struct.ti_sci_msg_resp_version* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ti_sci_version_info*, %struct.ti_sci_version_info** %6, align 8
  %60 = getelementptr inbounds %struct.ti_sci_version_info, %struct.ti_sci_version_info* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ti_sci_version_info*, %struct.ti_sci_version_info** %6, align 8
  %62 = getelementptr inbounds %struct.ti_sci_version_info, %struct.ti_sci_version_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ti_sci_msg_resp_version*, %struct.ti_sci_msg_resp_version** %7, align 8
  %65 = getelementptr inbounds %struct.ti_sci_msg_resp_version, %struct.ti_sci_msg_resp_version* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @strncpy(i32 %63, i32 %66, i32 4)
  br label %68

68:                                               ; preds = %45, %41
  %69 = load %struct.ti_sci_info*, %struct.ti_sci_info** %3, align 8
  %70 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %69, i32 0, i32 0
  %71 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %8, align 8
  %72 = call i32 @ti_sci_put_one_xfer(i32* %70, %struct.ti_sci_xfer* %71)
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %68, %24
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.ti_sci_xfer* @ti_sci_get_one_xfer(%struct.ti_sci_info*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ti_sci_xfer*) #1

declare dso_local i32 @PTR_ERR(%struct.ti_sci_xfer*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @ti_sci_do_xfer(%struct.ti_sci_info*, %struct.ti_sci_xfer*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @ti_sci_put_one_xfer(i32*, %struct.ti_sci_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
