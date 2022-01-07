; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_manage_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_manage_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_handle = type { i64 }
%struct.ti_sci_msg_req_manage_irq = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.ti_sci_msg_hdr = type { i32 }
%struct.ti_sci_xfer = type { i64 }
%struct.ti_sci_info = type { i32, %struct.device* }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TI_SCI_FLAG_REQ_ACK_ON_PROCESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Message alloc failed(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Mbox send fail %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_sci_handle*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* @ti_sci_manage_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_manage_irq(%struct.ti_sci_handle* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9, i8* %10, i8* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.ti_sci_handle*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.ti_sci_msg_req_manage_irq*, align 8
  %27 = alloca %struct.ti_sci_msg_hdr*, align 8
  %28 = alloca %struct.ti_sci_xfer*, align 8
  %29 = alloca %struct.ti_sci_info*, align 8
  %30 = alloca %struct.device*, align 8
  %31 = alloca i32, align 4
  store %struct.ti_sci_handle* %0, %struct.ti_sci_handle** %14, align 8
  store i32 %1, i32* %15, align 4
  store i8* %2, i8** %16, align 8
  store i8* %3, i8** %17, align 8
  store i8* %4, i8** %18, align 8
  store i8* %5, i8** %19, align 8
  store i8* %6, i8** %20, align 8
  store i8* %7, i8** %21, align 8
  store i8* %8, i8** %22, align 8
  store i8* %9, i8** %23, align 8
  store i8* %10, i8** %24, align 8
  store i8* %11, i8** %25, align 8
  store i32 0, i32* %31, align 4
  %32 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %14, align 8
  %33 = bitcast %struct.ti_sci_handle* %32 to %struct.ti_sci_xfer*
  %34 = call i64 @IS_ERR(%struct.ti_sci_xfer* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %12
  %37 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %14, align 8
  %38 = bitcast %struct.ti_sci_handle* %37 to %struct.ti_sci_xfer*
  %39 = call i32 @PTR_ERR(%struct.ti_sci_xfer* %38)
  store i32 %39, i32* %13, align 4
  br label %131

40:                                               ; preds = %12
  %41 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %14, align 8
  %42 = icmp ne %struct.ti_sci_handle* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %13, align 4
  br label %131

46:                                               ; preds = %40
  %47 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %14, align 8
  %48 = bitcast %struct.ti_sci_handle* %47 to %struct.ti_sci_xfer*
  %49 = call %struct.ti_sci_info* @handle_to_ti_sci_info(%struct.ti_sci_xfer* %48)
  store %struct.ti_sci_info* %49, %struct.ti_sci_info** %29, align 8
  %50 = load %struct.ti_sci_info*, %struct.ti_sci_info** %29, align 8
  %51 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %50, i32 0, i32 1
  %52 = load %struct.device*, %struct.device** %51, align 8
  store %struct.device* %52, %struct.device** %30, align 8
  %53 = load %struct.ti_sci_info*, %struct.ti_sci_info** %29, align 8
  %54 = load i8*, i8** %25, align 8
  %55 = load i32, i32* @TI_SCI_FLAG_REQ_ACK_ON_PROCESSED, align 4
  %56 = call %struct.ti_sci_xfer* @ti_sci_get_one_xfer(%struct.ti_sci_info* %53, i8* %54, i32 %55, i32 80, i32 4)
  store %struct.ti_sci_xfer* %56, %struct.ti_sci_xfer** %28, align 8
  %57 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %28, align 8
  %58 = call i64 @IS_ERR(%struct.ti_sci_xfer* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %46
  %61 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %28, align 8
  %62 = call i32 @PTR_ERR(%struct.ti_sci_xfer* %61)
  store i32 %62, i32* %31, align 4
  %63 = load %struct.device*, %struct.device** %30, align 8
  %64 = load i32, i32* %31, align 4
  %65 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %31, align 4
  store i32 %66, i32* %13, align 4
  br label %131

67:                                               ; preds = %46
  %68 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %28, align 8
  %69 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.ti_sci_msg_req_manage_irq*
  store %struct.ti_sci_msg_req_manage_irq* %71, %struct.ti_sci_msg_req_manage_irq** %26, align 8
  %72 = load i32, i32* %15, align 4
  %73 = load %struct.ti_sci_msg_req_manage_irq*, %struct.ti_sci_msg_req_manage_irq** %26, align 8
  %74 = getelementptr inbounds %struct.ti_sci_msg_req_manage_irq, %struct.ti_sci_msg_req_manage_irq* %73, i32 0, i32 9
  store i32 %72, i32* %74, align 8
  %75 = load i8*, i8** %16, align 8
  %76 = load %struct.ti_sci_msg_req_manage_irq*, %struct.ti_sci_msg_req_manage_irq** %26, align 8
  %77 = getelementptr inbounds %struct.ti_sci_msg_req_manage_irq, %struct.ti_sci_msg_req_manage_irq* %76, i32 0, i32 8
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** %17, align 8
  %79 = load %struct.ti_sci_msg_req_manage_irq*, %struct.ti_sci_msg_req_manage_irq** %26, align 8
  %80 = getelementptr inbounds %struct.ti_sci_msg_req_manage_irq, %struct.ti_sci_msg_req_manage_irq* %79, i32 0, i32 7
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** %18, align 8
  %82 = load %struct.ti_sci_msg_req_manage_irq*, %struct.ti_sci_msg_req_manage_irq** %26, align 8
  %83 = getelementptr inbounds %struct.ti_sci_msg_req_manage_irq, %struct.ti_sci_msg_req_manage_irq* %82, i32 0, i32 6
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** %19, align 8
  %85 = load %struct.ti_sci_msg_req_manage_irq*, %struct.ti_sci_msg_req_manage_irq** %26, align 8
  %86 = getelementptr inbounds %struct.ti_sci_msg_req_manage_irq, %struct.ti_sci_msg_req_manage_irq* %85, i32 0, i32 5
  store i8* %84, i8** %86, align 8
  %87 = load i8*, i8** %20, align 8
  %88 = load %struct.ti_sci_msg_req_manage_irq*, %struct.ti_sci_msg_req_manage_irq** %26, align 8
  %89 = getelementptr inbounds %struct.ti_sci_msg_req_manage_irq, %struct.ti_sci_msg_req_manage_irq* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  %90 = load i8*, i8** %21, align 8
  %91 = load %struct.ti_sci_msg_req_manage_irq*, %struct.ti_sci_msg_req_manage_irq** %26, align 8
  %92 = getelementptr inbounds %struct.ti_sci_msg_req_manage_irq, %struct.ti_sci_msg_req_manage_irq* %91, i32 0, i32 3
  store i8* %90, i8** %92, align 8
  %93 = load i8*, i8** %22, align 8
  %94 = load %struct.ti_sci_msg_req_manage_irq*, %struct.ti_sci_msg_req_manage_irq** %26, align 8
  %95 = getelementptr inbounds %struct.ti_sci_msg_req_manage_irq, %struct.ti_sci_msg_req_manage_irq* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  %96 = load i8*, i8** %23, align 8
  %97 = load %struct.ti_sci_msg_req_manage_irq*, %struct.ti_sci_msg_req_manage_irq** %26, align 8
  %98 = getelementptr inbounds %struct.ti_sci_msg_req_manage_irq, %struct.ti_sci_msg_req_manage_irq* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  %99 = load i8*, i8** %24, align 8
  %100 = load %struct.ti_sci_msg_req_manage_irq*, %struct.ti_sci_msg_req_manage_irq** %26, align 8
  %101 = getelementptr inbounds %struct.ti_sci_msg_req_manage_irq, %struct.ti_sci_msg_req_manage_irq* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  %102 = load %struct.ti_sci_info*, %struct.ti_sci_info** %29, align 8
  %103 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %28, align 8
  %104 = call i32 @ti_sci_do_xfer(%struct.ti_sci_info* %102, %struct.ti_sci_xfer* %103)
  store i32 %104, i32* %31, align 4
  %105 = load i32, i32* %31, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %67
  %108 = load %struct.device*, %struct.device** %30, align 8
  %109 = load i32, i32* %31, align 4
  %110 = call i32 @dev_err(%struct.device* %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  br label %125

111:                                              ; preds = %67
  %112 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %28, align 8
  %113 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to %struct.ti_sci_msg_hdr*
  store %struct.ti_sci_msg_hdr* %115, %struct.ti_sci_msg_hdr** %27, align 8
  %116 = load %struct.ti_sci_msg_hdr*, %struct.ti_sci_msg_hdr** %27, align 8
  %117 = call i64 @ti_sci_is_response_ack(%struct.ti_sci_msg_hdr* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %123

120:                                              ; preds = %111
  %121 = load i32, i32* @ENODEV, align 4
  %122 = sub nsw i32 0, %121
  br label %123

123:                                              ; preds = %120, %119
  %124 = phi i32 [ 0, %119 ], [ %122, %120 ]
  store i32 %124, i32* %31, align 4
  br label %125

125:                                              ; preds = %123, %107
  %126 = load %struct.ti_sci_info*, %struct.ti_sci_info** %29, align 8
  %127 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %126, i32 0, i32 0
  %128 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %28, align 8
  %129 = call i32 @ti_sci_put_one_xfer(i32* %127, %struct.ti_sci_xfer* %128)
  %130 = load i32, i32* %31, align 4
  store i32 %130, i32* %13, align 4
  br label %131

131:                                              ; preds = %125, %60, %43, %36
  %132 = load i32, i32* %13, align 4
  ret i32 %132
}

declare dso_local i64 @IS_ERR(%struct.ti_sci_xfer*) #1

declare dso_local i32 @PTR_ERR(%struct.ti_sci_xfer*) #1

declare dso_local %struct.ti_sci_info* @handle_to_ti_sci_info(%struct.ti_sci_xfer*) #1

declare dso_local %struct.ti_sci_xfer* @ti_sci_get_one_xfer(%struct.ti_sci_info*, i8*, i32, i32, i32) #1

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
