; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_request_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_request_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { i32, %struct.gb_connection* }
%struct.gb_connection = type { i32 }
%struct.gb_svc = type { i32, i32 }

@GB_SVC_STATE_RESET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GB_SVC_STATE_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@GB_SVC_STATE_SVC_HELLO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"unexpected request 0x%02x received (state %u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"unsupported request 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_operation*)* @gb_svc_request_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_svc_request_handler(%struct.gb_operation* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_operation*, align 8
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca %struct.gb_svc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gb_operation* %0, %struct.gb_operation** %3, align 8
  %8 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %9 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %8, i32 0, i32 1
  %10 = load %struct.gb_connection*, %struct.gb_connection** %9, align 8
  store %struct.gb_connection* %10, %struct.gb_connection** %4, align 8
  %11 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %12 = call %struct.gb_svc* @gb_connection_get_data(%struct.gb_connection* %11)
  store %struct.gb_svc* %12, %struct.gb_svc** %5, align 8
  %13 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %14 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %37 [
    i32 129, label %17
    i32 128, label %27
  ]

17:                                               ; preds = %1
  %18 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %19 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GB_SVC_STATE_RESET, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %23, %17
  br label %47

27:                                               ; preds = %1
  %28 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %29 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @GB_SVC_STATE_PROTOCOL_VERSION, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %33, %27
  br label %47

37:                                               ; preds = %1
  %38 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %39 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @GB_SVC_STATE_SVC_HELLO, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %43, %37
  br label %47

47:                                               ; preds = %46, %36, %26
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %52 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %51, i32 0, i32 0
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %55 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %52, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56)
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %105

59:                                               ; preds = %47
  %60 = load i32, i32* %6, align 4
  switch i32 %60, label %98 [
    i32 129, label %61
    i32 128, label %72
    i32 132, label %83
    i32 131, label %86
    i32 130, label %89
    i32 134, label %92
    i32 133, label %95
  ]

61:                                               ; preds = %59
  %62 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %63 = call i32 @gb_svc_version_request(%struct.gb_operation* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @GB_SVC_STATE_PROTOCOL_VERSION, align 4
  %68 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %69 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %61
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %2, align 4
  br label %105

72:                                               ; preds = %59
  %73 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %74 = call i32 @gb_svc_hello(%struct.gb_operation* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @GB_SVC_STATE_SVC_HELLO, align 4
  %79 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %80 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %72
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %2, align 4
  br label %105

83:                                               ; preds = %59
  %84 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %85 = call i32 @gb_svc_intf_reset_recv(%struct.gb_operation* %84)
  store i32 %85, i32* %2, align 4
  br label %105

86:                                               ; preds = %59
  %87 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %88 = call i32 @gb_svc_module_inserted_recv(%struct.gb_operation* %87)
  store i32 %88, i32* %2, align 4
  br label %105

89:                                               ; preds = %59
  %90 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %91 = call i32 @gb_svc_module_removed_recv(%struct.gb_operation* %90)
  store i32 %91, i32* %2, align 4
  br label %105

92:                                               ; preds = %59
  %93 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %94 = call i32 @gb_svc_intf_mailbox_event_recv(%struct.gb_operation* %93)
  store i32 %94, i32* %2, align 4
  br label %105

95:                                               ; preds = %59
  %96 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %97 = call i32 @gb_svc_intf_oops_recv(%struct.gb_operation* %96)
  store i32 %97, i32* %2, align 4
  br label %105

98:                                               ; preds = %59
  %99 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %100 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %99, i32 0, i32 0
  %101 = load i32, i32* %6, align 4
  %102 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %98, %95, %92, %89, %86, %83, %81, %70, %50
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.gb_svc* @gb_connection_get_data(%struct.gb_connection*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, ...) #1

declare dso_local i32 @gb_svc_version_request(%struct.gb_operation*) #1

declare dso_local i32 @gb_svc_hello(%struct.gb_operation*) #1

declare dso_local i32 @gb_svc_intf_reset_recv(%struct.gb_operation*) #1

declare dso_local i32 @gb_svc_module_inserted_recv(%struct.gb_operation*) #1

declare dso_local i32 @gb_svc_module_removed_recv(%struct.gb_operation*) #1

declare dso_local i32 @gb_svc_intf_mailbox_event_recv(%struct.gb_operation*) #1

declare dso_local i32 @gb_svc_intf_oops_recv(%struct.gb_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
