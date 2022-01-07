; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_cmd_rm_psil_pair.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_cmd_rm_psil_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_handle = type { i64 }
%struct.ti_sci_msg_psil_pair = type { i8*, i8*, i8* }
%struct.ti_sci_msg_hdr = type { i32 }
%struct.ti_sci_xfer = type { i64 }
%struct.ti_sci_info = type { i32, %struct.device* }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TI_SCI_MSG_RM_PSIL_PAIR = common dso_local global i32 0, align 4
@TI_SCI_FLAG_REQ_ACK_ON_PROCESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"RM_PSIL:Message reconfig failed(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"RM_PSIL:Mbox send fail %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_sci_handle*, i8*, i8*, i8*)* @ti_sci_cmd_rm_psil_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_cmd_rm_psil_pair(%struct.ti_sci_handle* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ti_sci_handle*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ti_sci_msg_psil_pair*, align 8
  %11 = alloca %struct.ti_sci_msg_hdr*, align 8
  %12 = alloca %struct.ti_sci_xfer*, align 8
  %13 = alloca %struct.ti_sci_info*, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca i32, align 4
  store %struct.ti_sci_handle* %0, %struct.ti_sci_handle** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %6, align 8
  %17 = bitcast %struct.ti_sci_handle* %16 to %struct.ti_sci_xfer*
  %18 = call i64 @IS_ERR(%struct.ti_sci_xfer* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %6, align 8
  %22 = bitcast %struct.ti_sci_handle* %21 to %struct.ti_sci_xfer*
  %23 = call i32 @PTR_ERR(%struct.ti_sci_xfer* %22)
  store i32 %23, i32* %5, align 4
  br label %94

24:                                               ; preds = %4
  %25 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %6, align 8
  %26 = icmp ne %struct.ti_sci_handle* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %94

30:                                               ; preds = %24
  %31 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %6, align 8
  %32 = bitcast %struct.ti_sci_handle* %31 to %struct.ti_sci_xfer*
  %33 = call %struct.ti_sci_info* @handle_to_ti_sci_info(%struct.ti_sci_xfer* %32)
  store %struct.ti_sci_info* %33, %struct.ti_sci_info** %13, align 8
  %34 = load %struct.ti_sci_info*, %struct.ti_sci_info** %13, align 8
  %35 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %34, i32 0, i32 1
  %36 = load %struct.device*, %struct.device** %35, align 8
  store %struct.device* %36, %struct.device** %14, align 8
  %37 = load %struct.ti_sci_info*, %struct.ti_sci_info** %13, align 8
  %38 = load i32, i32* @TI_SCI_MSG_RM_PSIL_PAIR, align 4
  %39 = load i32, i32* @TI_SCI_FLAG_REQ_ACK_ON_PROCESSED, align 4
  %40 = call %struct.ti_sci_xfer* @ti_sci_get_one_xfer(%struct.ti_sci_info* %37, i32 %38, i32 %39, i32 24, i32 4)
  store %struct.ti_sci_xfer* %40, %struct.ti_sci_xfer** %12, align 8
  %41 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %12, align 8
  %42 = call i64 @IS_ERR(%struct.ti_sci_xfer* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %30
  %45 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %12, align 8
  %46 = call i32 @PTR_ERR(%struct.ti_sci_xfer* %45)
  store i32 %46, i32* %15, align 4
  %47 = load %struct.device*, %struct.device** %14, align 8
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %15, align 4
  store i32 %50, i32* %5, align 4
  br label %94

51:                                               ; preds = %30
  %52 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %12, align 8
  %53 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.ti_sci_msg_psil_pair*
  store %struct.ti_sci_msg_psil_pair* %55, %struct.ti_sci_msg_psil_pair** %10, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load %struct.ti_sci_msg_psil_pair*, %struct.ti_sci_msg_psil_pair** %10, align 8
  %58 = getelementptr inbounds %struct.ti_sci_msg_psil_pair, %struct.ti_sci_msg_psil_pair* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load %struct.ti_sci_msg_psil_pair*, %struct.ti_sci_msg_psil_pair** %10, align 8
  %61 = getelementptr inbounds %struct.ti_sci_msg_psil_pair, %struct.ti_sci_msg_psil_pair* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load %struct.ti_sci_msg_psil_pair*, %struct.ti_sci_msg_psil_pair** %10, align 8
  %64 = getelementptr inbounds %struct.ti_sci_msg_psil_pair, %struct.ti_sci_msg_psil_pair* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.ti_sci_info*, %struct.ti_sci_info** %13, align 8
  %66 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %12, align 8
  %67 = call i32 @ti_sci_do_xfer(%struct.ti_sci_info* %65, %struct.ti_sci_xfer* %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %51
  %71 = load %struct.device*, %struct.device** %14, align 8
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @dev_err(%struct.device* %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %88

74:                                               ; preds = %51
  %75 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %12, align 8
  %76 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.ti_sci_msg_hdr*
  store %struct.ti_sci_msg_hdr* %78, %struct.ti_sci_msg_hdr** %11, align 8
  %79 = load %struct.ti_sci_msg_hdr*, %struct.ti_sci_msg_hdr** %11, align 8
  %80 = call i64 @ti_sci_is_response_ack(%struct.ti_sci_msg_hdr* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %86

83:                                               ; preds = %74
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  br label %86

86:                                               ; preds = %83, %82
  %87 = phi i32 [ 0, %82 ], [ %85, %83 ]
  store i32 %87, i32* %15, align 4
  br label %88

88:                                               ; preds = %86, %70
  %89 = load %struct.ti_sci_info*, %struct.ti_sci_info** %13, align 8
  %90 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %89, i32 0, i32 0
  %91 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %12, align 8
  %92 = call i32 @ti_sci_put_one_xfer(i32* %90, %struct.ti_sci_xfer* %91)
  %93 = load i32, i32* %15, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %88, %44, %27, %20
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i64 @IS_ERR(%struct.ti_sci_xfer*) #1

declare dso_local i32 @PTR_ERR(%struct.ti_sci_xfer*) #1

declare dso_local %struct.ti_sci_info* @handle_to_ti_sci_info(%struct.ti_sci_xfer*) #1

declare dso_local %struct.ti_sci_xfer* @ti_sci_get_one_xfer(%struct.ti_sci_info*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @ti_sci_do_xfer(%struct.ti_sci_info*, %struct.ti_sci_xfer*) #1

declare dso_local i64 @ti_sci_is_response_ack(%struct.ti_sci_msg_hdr*) #1

declare dso_local i32 @ti_sci_put_one_xfer(i32*, %struct.ti_sci_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
