; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_connection.c_vmbus_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_connection.c_vmbus_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32**, i32*, i8*, i32*, i32, i32, i32, i32, i8*, i8*, i8* }
%struct.vmbus_channel_msginfo = type { i32 }

@CONNECTING = common dso_local global i64 0, align 8
@vmbus_connection = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"hv_vmbus_con\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"hv_pri_chan\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"hv_sub_chan\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VERSION_CURRENT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@CONNECTED = common dso_local global i64 0, align 8
@VERSION_INVAL = common dso_local global i32 0, align 4
@vmbus_proto_version = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Vmbus version:%d.%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Unable to connect to host\0A\00", align 1
@DISCONNECTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmbus_connect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmbus_channel_msginfo*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store %struct.vmbus_channel_msginfo* null, %struct.vmbus_channel_msginfo** %3, align 8
  %5 = load i64, i64* @CONNECTING, align 8
  store i64 %5, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 0), align 8
  %6 = call i8* @create_workqueue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 11), align 8
  %7 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 11), align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %124

12:                                               ; preds = %0
  %13 = call i8* @create_workqueue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 10), align 8
  %14 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 10), align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %124

19:                                               ; preds = %12
  %20 = call i8* @create_workqueue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i8* %20, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 9), align 8
  %21 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 9), align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %124

26:                                               ; preds = %19
  %27 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 8))
  %28 = call i32 @spin_lock_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 7))
  %29 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 6))
  %30 = call i32 @mutex_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 5))
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = load i32, i32* @__GFP_ZERO, align 4
  %33 = or i32 %31, %32
  %34 = call i64 @__get_free_pages(i32 %33, i32 0)
  %35 = inttoptr i64 %34 to i8*
  %36 = bitcast i8* %35 to i32*
  store i32* %36, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 2), align 8
  %37 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 2), align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %124

42:                                               ; preds = %26
  %43 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 2), align 8
  store i32* %43, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 4), align 8
  %44 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 2), align 8
  %45 = ptrtoint i32* %44 to i64
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = ashr i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = add i64 %45, %48
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 3), align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = load i32, i32* @__GFP_ZERO, align 4
  %53 = or i32 %51, %52
  %54 = call i64 @__get_free_pages(i32 %53, i32 0)
  %55 = inttoptr i64 %54 to i8*
  %56 = bitcast i8* %55 to i32*
  %57 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 1), align 8
  %58 = getelementptr inbounds i32*, i32** %57, i64 0
  store i32* %56, i32** %58, align 8
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = load i32, i32* @__GFP_ZERO, align 4
  %61 = or i32 %59, %60
  %62 = call i64 @__get_free_pages(i32 %61, i32 0)
  %63 = inttoptr i64 %62 to i8*
  %64 = bitcast i8* %63 to i32*
  %65 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 1), align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 1
  store i32* %64, i32** %66, align 8
  %67 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 1), align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 0
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %42
  %72 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 1), align 8
  %73 = getelementptr inbounds i32*, i32** %72, i64 1
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %71, %42
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %124

79:                                               ; preds = %71
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call %struct.vmbus_channel_msginfo* @kzalloc(i32 8, i32 %80)
  store %struct.vmbus_channel_msginfo* %81, %struct.vmbus_channel_msginfo** %3, align 8
  %82 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %3, align 8
  %83 = icmp eq %struct.vmbus_channel_msginfo* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %124

87:                                               ; preds = %79
  %88 = load i32, i32* @VERSION_CURRENT, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %106, %87
  %90 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %3, align 8
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @vmbus_negotiate_version(%struct.vmbus_channel_msginfo* %90, i32 %91)
  store i32 %92, i32* %2, align 4
  %93 = load i32, i32* %2, align 4
  %94 = load i32, i32* @ETIMEDOUT, align 4
  %95 = sub nsw i32 0, %94
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %124

98:                                               ; preds = %89
  %99 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 0), align 8
  %100 = load i64, i64* @CONNECTED, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %110

103:                                              ; preds = %98
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @vmbus_get_next_version(i32 %104)
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @VERSION_INVAL, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %89, label %110

110:                                              ; preds = %106, %102
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @VERSION_INVAL, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  br label %124

115:                                              ; preds = %110
  %116 = load i32, i32* %4, align 4
  store i32 %116, i32* @vmbus_proto_version, align 4
  %117 = load i32, i32* %4, align 4
  %118 = ashr i32 %117, 16
  %119 = load i32, i32* %4, align 4
  %120 = and i32 %119, 65535
  %121 = call i32 @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %118, i32 %120)
  %122 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %3, align 8
  %123 = call i32 @kfree(%struct.vmbus_channel_msginfo* %122)
  store i32 0, i32* %1, align 4
  br label %131

124:                                              ; preds = %114, %97, %84, %76, %39, %23, %16, %9
  %125 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %126 = load i64, i64* @DISCONNECTED, align 8
  store i64 %126, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 0), align 8
  %127 = call i32 (...) @vmbus_disconnect()
  %128 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %3, align 8
  %129 = call i32 @kfree(%struct.vmbus_channel_msginfo* %128)
  %130 = load i32, i32* %2, align 4
  store i32 %130, i32* %1, align 4
  br label %131

131:                                              ; preds = %124, %115
  %132 = load i32, i32* %1, align 4
  ret i32 %132
}

declare dso_local i8* @create_workqueue(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local %struct.vmbus_channel_msginfo* @kzalloc(i32, i32) #1

declare dso_local i32 @vmbus_negotiate_version(%struct.vmbus_channel_msginfo*, i32) #1

declare dso_local i32 @vmbus_get_next_version(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.vmbus_channel_msginfo*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @vmbus_disconnect(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
