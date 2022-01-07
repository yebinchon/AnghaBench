; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/extr_cypress_firmware.c_cypress_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/extr_cypress_firmware.c_cypress_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.firmware = type { i32 }
%struct.hexline = type { i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cypress = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"%s: CPU stop failed=%d\0A\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"%s: error while transferring firmware (transferred size=%d, block size=%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%s: CPU start failed=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cypress_load_firmware(%struct.usb_device* %0, %struct.firmware* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hexline*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store %struct.firmware* %1, %struct.firmware** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.hexline* @kmalloc(i32 16, i32 %11)
  store %struct.hexline* %12, %struct.hexline** %8, align 8
  %13 = load %struct.hexline*, %struct.hexline** %8, align 8
  %14 = icmp ne %struct.hexline* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %122

18:                                               ; preds = %3
  %19 = load %struct.hexline*, %struct.hexline** %8, align 8
  %20 = getelementptr inbounds %struct.hexline, %struct.hexline* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cypress, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.hexline*, %struct.hexline** %8, align 8
  %31 = getelementptr inbounds %struct.hexline, %struct.hexline* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @usb_cypress_writemem(%struct.usb_device* %23, i32 %29, i32* %32, i32 1)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %44

36:                                               ; preds = %18
  %37 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %38 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %37, i32 0, i32 0
  %39 = load i32, i32* @KBUILD_MODNAME, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 (i32*, i8*, i32, i32, ...) @dev_err(i32* %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %9, align 4
  br label %118

44:                                               ; preds = %18
  br label %45

45:                                               ; preds = %90, %44
  %46 = load %struct.firmware*, %struct.firmware** %6, align 8
  %47 = load %struct.hexline*, %struct.hexline** %8, align 8
  %48 = call i32 @cypress_get_hexline(%struct.firmware* %46, %struct.hexline* %47, i32* %10)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %118

52:                                               ; preds = %45
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %91

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %59 = load %struct.hexline*, %struct.hexline** %8, align 8
  %60 = getelementptr inbounds %struct.hexline, %struct.hexline* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.hexline*, %struct.hexline** %8, align 8
  %63 = getelementptr inbounds %struct.hexline, %struct.hexline* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.hexline*, %struct.hexline** %8, align 8
  %66 = getelementptr inbounds %struct.hexline, %struct.hexline* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @usb_cypress_writemem(%struct.usb_device* %58, i32 %61, i32* %64, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %57
  br label %118

72:                                               ; preds = %57
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.hexline*, %struct.hexline** %8, align 8
  %75 = getelementptr inbounds %struct.hexline, %struct.hexline* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %73, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %72
  %79 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %80 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %79, i32 0, i32 0
  %81 = load i32, i32* @KBUILD_MODNAME, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.hexline*, %struct.hexline** %8, align 8
  %84 = getelementptr inbounds %struct.hexline, %struct.hexline* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i32*, i8*, i32, i32, ...) @dev_err(i32* %80, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %82, i32 %85)
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %9, align 4
  br label %118

89:                                               ; preds = %72
  br label %90

90:                                               ; preds = %89
  br label %45

91:                                               ; preds = %55
  %92 = load %struct.hexline*, %struct.hexline** %8, align 8
  %93 = getelementptr inbounds %struct.hexline, %struct.hexline* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 0, i32* %95, align 4
  %96 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cypress, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.hexline*, %struct.hexline** %8, align 8
  %104 = getelementptr inbounds %struct.hexline, %struct.hexline* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @usb_cypress_writemem(%struct.usb_device* %96, i32 %102, i32* %105, i32 1)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 1
  br i1 %108, label %109, label %117

109:                                              ; preds = %91
  %110 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %111 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %110, i32 0, i32 0
  %112 = load i32, i32* @KBUILD_MODNAME, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 (i32*, i8*, i32, i32, ...) @dev_err(i32* %111, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %112, i32 %113)
  %115 = load i32, i32* @EIO, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %9, align 4
  br label %118

117:                                              ; preds = %91
  store i32 0, i32* %9, align 4
  br label %118

118:                                              ; preds = %117, %109, %78, %71, %51, %36
  %119 = load %struct.hexline*, %struct.hexline** %8, align 8
  %120 = call i32 @kfree(%struct.hexline* %119)
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %118, %15
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.hexline* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_cypress_writemem(%struct.usb_device*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @cypress_get_hexline(%struct.firmware*, %struct.hexline*, i32*) #1

declare dso_local i32 @kfree(%struct.hexline*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
