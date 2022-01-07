; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_load_firmware_from_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_load_firmware_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_device_t = type { i32, i32, i32, i32 }
%struct.firmware = type { i64, i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"mode %d not supported on this device\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Firmware name: %s\0A\00", align 1
@SMS_DEVICE_FAMILY2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to open firmware file '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"read fw %s, buffer size=0x%zx\0A\00", align 1
@SMS_ALLOC_ALIGNMENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"failed to allocate firmware buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smscore_device_t*, i32, i32 (i32, i32*, i64)*)* @smscore_load_firmware_from_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smscore_load_firmware_from_file(%struct.smscore_device_t* %0, i32 %1, i32 (i32, i32*, i64)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smscore_device_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32 (i32, i32*, i64)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.firmware*, align 8
  %12 = alloca i8*, align 8
  store %struct.smscore_device_t* %0, %struct.smscore_device_t** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 (i32, i32*, i64)* %2, i32 (i32, i32*, i64)** %7, align 8
  %13 = load i32, i32* @ENOENT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i8* @smscore_get_fw_filename(%struct.smscore_device_t* %15, i32 %16)
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %115

25:                                               ; preds = %3
  %26 = load i8*, i8** %12, align 8
  %27 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load i32 (i32, i32*, i64)*, i32 (i32, i32*, i64)** %7, align 8
  %29 = icmp ne i32 (i32, i32*, i64)* %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %32 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SMS_DEVICE_FAMILY2, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %115

40:                                               ; preds = %30, %25
  %41 = load i8*, i8** %12, align 8
  %42 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %43 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @request_firmware(%struct.firmware** %11, i8* %41, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i8*, i8** %12, align 8
  %50 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %115

52:                                               ; preds = %40
  %53 = load i8*, i8** %12, align 8
  %54 = load %struct.firmware*, %struct.firmware** %11, align 8
  %55 = getelementptr inbounds %struct.firmware, %struct.firmware* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %53, i64 %56)
  %58 = load %struct.firmware*, %struct.firmware** %11, align 8
  %59 = getelementptr inbounds %struct.firmware, %struct.firmware* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, 4
  %62 = load i32, i32* @SMS_ALLOC_ALIGNMENT, align 4
  %63 = call i32 @ALIGN(i64 %61, i32 %62)
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %66 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %64, %67
  %69 = call i32* @kmalloc(i32 %63, i32 %68)
  store i32* %69, i32** %9, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %52
  %73 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %8, align 4
  br label %109

76:                                               ; preds = %52
  %77 = load i32*, i32** %9, align 8
  %78 = load %struct.firmware*, %struct.firmware** %11, align 8
  %79 = getelementptr inbounds %struct.firmware, %struct.firmware* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.firmware*, %struct.firmware** %11, align 8
  %82 = getelementptr inbounds %struct.firmware, %struct.firmware* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @memcpy(i32* %77, i32 %80, i64 %83)
  %85 = load %struct.firmware*, %struct.firmware** %11, align 8
  %86 = getelementptr inbounds %struct.firmware, %struct.firmware* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %10, align 8
  %88 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %89 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @SMS_DEVICE_FAMILY2, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %76
  %95 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = load i64, i64* %10, align 8
  %98 = call i32 @smscore_load_firmware_family2(%struct.smscore_device_t* %95, i32* %96, i64 %97)
  br label %107

99:                                               ; preds = %76
  %100 = load i32 (i32, i32*, i64)*, i32 (i32, i32*, i64)** %7, align 8
  %101 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %102 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %9, align 8
  %105 = load i64, i64* %10, align 8
  %106 = call i32 %100(i32 %103, i32* %104, i64 %105)
  br label %107

107:                                              ; preds = %99, %94
  %108 = phi i32 [ %98, %94 ], [ %106, %99 ]
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %107, %72
  %110 = load i32*, i32** %9, align 8
  %111 = call i32 @kfree(i32* %110)
  %112 = load %struct.firmware*, %struct.firmware** %11, align 8
  %113 = call i32 @release_firmware(%struct.firmware* %112)
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %109, %48, %37, %20
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i8* @smscore_get_fw_filename(%struct.smscore_device_t*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @pr_debug(i8*, i8*, ...) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @smscore_load_firmware_family2(%struct.smscore_device_t*, i32*, i64) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
