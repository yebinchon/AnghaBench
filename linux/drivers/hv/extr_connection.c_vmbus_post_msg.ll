; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_connection.c_vmbus_post_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_connection.c_vmbus_post_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.vmbus_channel_message_header = type { i32 }
%union.hv_connection_id = type { i64 }
%struct.TYPE_3__ = type { i32 }

@vmbus_connection = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@CHANNELMSG_INITIATE_CONTACT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"hv_post_msg() failed; error code:%d\0A\00", align 1
@MAX_UDELAY_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmbus_post_msg(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vmbus_channel_message_header*, align 8
  %9 = alloca %union.hv_connection_id, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %13 = bitcast %union.hv_connection_id* %9 to i64*
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vmbus_connection, i32 0, i32 0), align 4
  %15 = bitcast %union.hv_connection_id* %9 to %struct.TYPE_3__*
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  br label %17

17:                                               ; preds = %82, %3
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 100
  br i1 %19, label %20, label %83

20:                                               ; preds = %17
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %union.hv_connection_id, %union.hv_connection_id* %9, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @hv_post_message(i64 %24, i32 1, i8* %21, i64 %22)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  switch i32 %26, label %46 [
    i32 129, label %27
    i32 130, label %41
    i32 131, label %41
    i32 128, label %44
  ]

27:                                               ; preds = %20
  %28 = load i8*, i8** %5, align 8
  %29 = bitcast i8* %28 to %struct.vmbus_channel_message_header*
  store %struct.vmbus_channel_message_header* %29, %struct.vmbus_channel_message_header** %8, align 8
  %30 = load %struct.vmbus_channel_message_header*, %struct.vmbus_channel_message_header** %8, align 8
  %31 = getelementptr inbounds %struct.vmbus_channel_message_header, %struct.vmbus_channel_message_header* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CHANNELMSG_INITIATE_CONTACT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %85

38:                                               ; preds = %27
  %39 = load i32, i32* @EAGAIN, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %10, align 4
  br label %51

41:                                               ; preds = %20, %20
  %42 = load i32, i32* @ENOBUFS, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  br label %51

44:                                               ; preds = %20
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %4, align 4
  br label %85

46:                                               ; preds = %20
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %85

51:                                               ; preds = %41, %38
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i32, i32* %12, align 4
  %58 = icmp sgt i32 %57, 1000
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* %12, align 4
  %61 = sdiv i32 %60, 1000
  %62 = call i32 @msleep(i32 %61)
  br label %76

63:                                               ; preds = %56, %51
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @MAX_UDELAY_MS, align 4
  %66 = mul nsw i32 %65, 1000
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @udelay(i32 %69)
  br label %75

71:                                               ; preds = %63
  %72 = load i32, i32* %12, align 4
  %73 = sdiv i32 %72, 1000
  %74 = call i32 @mdelay(i32 %73)
  br label %75

75:                                               ; preds = %71, %68
  br label %76

76:                                               ; preds = %75, %59
  %77 = load i32, i32* %11, align 4
  %78 = icmp slt i32 %77, 22
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* %12, align 4
  %81 = mul nsw i32 %80, 2
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %79, %76
  br label %17

83:                                               ; preds = %17
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %46, %44, %35
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @hv_post_message(i64, i32, i8*, i64) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
