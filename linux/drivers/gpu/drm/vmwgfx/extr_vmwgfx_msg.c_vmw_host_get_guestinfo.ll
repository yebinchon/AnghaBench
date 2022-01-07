; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_msg.c_vmw_host_get_guestinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_msg.c_vmw_host_get_guestinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_channel = type { i32 }

@vmw_msg_enabled = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"info-get %s\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Cannot allocate memory to get guest info \22%s\22.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RPCI_PROTOCOL_NUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to get guest info \22%s\22.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_host_get_guestinfo(i8* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.rpc_channel, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  store i8* null, i8** %10, align 8
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @vmw_msg_enabled, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %97

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i64*, i64** %7, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %97

26:                                               ; preds = %20
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @kasprintf(i32 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %28)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %97

37:                                               ; preds = %26
  %38 = load i32, i32* @RPCI_PROTOCOL_NUM, align 4
  %39 = call i64 @vmw_open_channel(%struct.rpc_channel* %8, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %89

42:                                               ; preds = %37
  %43 = load i8*, i8** %9, align 8
  %44 = call i64 @vmw_send_msg(%struct.rpc_channel* %8, i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = bitcast i8** %10 to i8*
  %48 = call i64 @vmw_recv_msg(%struct.rpc_channel* %8, i8* %47, i64* %11)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %42
  br label %85

51:                                               ; preds = %46
  %52 = call i32 @vmw_close_channel(%struct.rpc_channel* %8)
  %53 = load i8*, i8** %6, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %78

55:                                               ; preds = %51
  %56 = load i8*, i8** %10, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %78

58:                                               ; preds = %55
  %59 = load i64, i64* %11, align 8
  %60 = icmp ugt i64 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %58
  %62 = load i64, i64* %11, align 8
  %63 = sub i64 %62, 2
  %64 = call i64 @max(i64 %63, i64 0)
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i64*, i64** %7, align 8
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @min(i64 %65, i64 %67)
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %11, align 8
  %70 = icmp ugt i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %61
  %72 = load i8*, i8** %6, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  %75 = load i64, i64* %11, align 8
  %76 = call i32 @memcpy(i8* %72, i8* %74, i64 %75)
  br label %77

77:                                               ; preds = %71, %61
  br label %78

78:                                               ; preds = %77, %58, %55, %51
  %79 = load i64, i64* %11, align 8
  %80 = load i64*, i64** %7, align 8
  store i64 %79, i64* %80, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = call i32 @kfree(i8* %81)
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 @kfree(i8* %83)
  store i32 0, i32* %4, align 4
  br label %97

85:                                               ; preds = %50
  %86 = call i32 @vmw_close_channel(%struct.rpc_channel* %8)
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 @kfree(i8* %87)
  br label %89

89:                                               ; preds = %85, %41
  %90 = load i64*, i64** %7, align 8
  store i64 0, i64* %90, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 @kfree(i8* %91)
  %93 = load i8*, i8** %5, align 8
  %94 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %93)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %89, %78, %32, %23, %14
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i8* @kasprintf(i32, i8*, i8*) #1

declare dso_local i32 @DRM_ERROR(i8*, i8*) #1

declare dso_local i64 @vmw_open_channel(%struct.rpc_channel*, i32) #1

declare dso_local i64 @vmw_send_msg(%struct.rpc_channel*, i8*) #1

declare dso_local i64 @vmw_recv_msg(%struct.rpc_channel*, i8*, i64*) #1

declare dso_local i32 @vmw_close_channel(%struct.rpc_channel*) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
