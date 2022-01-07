; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_msg.c_vmw_host_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_msg.c_vmw_host_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_channel = type { i32 }

@vmw_msg_enabled = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"log %s\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Cannot allocate memory for host log message.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RPCI_PROTOCOL_NUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to send host log message.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_host_log(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rpc_channel, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @vmw_msg_enabled, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %49

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %49

17:                                               ; preds = %12
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = call i8* @kasprintf(i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %19)
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %49

27:                                               ; preds = %17
  %28 = load i32, i32* @RPCI_PROTOCOL_NUM, align 4
  %29 = call i64 @vmw_open_channel(%struct.rpc_channel* %4, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %43

32:                                               ; preds = %27
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @vmw_send_msg(%struct.rpc_channel* %4, i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %41

37:                                               ; preds = %32
  %38 = call i32 @vmw_close_channel(%struct.rpc_channel* %4)
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @kfree(i8* %39)
  store i32 0, i32* %2, align 4
  br label %49

41:                                               ; preds = %36
  %42 = call i32 @vmw_close_channel(%struct.rpc_channel* %4)
  br label %43

43:                                               ; preds = %41, %31
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @kfree(i8* %44)
  %46 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %43, %37, %23, %15, %9
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i8* @kasprintf(i32, i8*, i8*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @vmw_open_channel(%struct.rpc_channel*, i32) #1

declare dso_local i64 @vmw_send_msg(%struct.rpc_channel*, i8*) #1

declare dso_local i32 @vmw_close_channel(%struct.rpc_channel*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
