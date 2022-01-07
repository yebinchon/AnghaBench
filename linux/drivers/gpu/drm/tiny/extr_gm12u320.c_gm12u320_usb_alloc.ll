; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_gm12u320.c_gm12u320_usb_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_gm12u320.c_gm12u320_usb_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gm12u320_device = type { i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@CMD_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GM12U320_BLOCK_COUNT = common dso_local global i32 0, align 4
@DATA_LAST_BLOCK_SIZE = common dso_local global i32 0, align 4
@data_last_block_header = common dso_local global i8* null, align 8
@DATA_BLOCK_SIZE = common dso_local global i32 0, align 4
@data_block_header = common dso_local global i8* null, align 8
@DATA_BLOCK_HEADER_SIZE = common dso_local global i32 0, align 4
@DATA_BLOCK_FOOTER_SIZE = common dso_local global i32 0, align 4
@data_block_footer = common dso_local global i8* null, align 8
@DRIVER_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gm12u320_device*)* @gm12u320_usb_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gm12u320_usb_alloc(%struct.gm12u320_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gm12u320_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.gm12u320_device* %0, %struct.gm12u320_device** %3, align 8
  %7 = load i32, i32* @CMD_SIZE, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i32 @kmalloc(i32 %7, i32 %8)
  %10 = load %struct.gm12u320_device*, %struct.gm12u320_device** %3, align 8
  %11 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load %struct.gm12u320_device*, %struct.gm12u320_device** %3, align 8
  %13 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %99

19:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %81, %19
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @GM12U320_BLOCK_COUNT, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %84

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @GM12U320_BLOCK_COUNT, align 4
  %27 = sub nsw i32 %26, 1
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @DATA_LAST_BLOCK_SIZE, align 4
  store i32 %30, i32* %5, align 4
  %31 = load i8*, i8** @data_last_block_header, align 8
  store i8* %31, i8** %6, align 8
  br label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @DATA_BLOCK_SIZE, align 4
  store i32 %33, i32* %5, align 4
  %34 = load i8*, i8** @data_block_header, align 8
  store i8* %34, i8** %6, align 8
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32 @kzalloc(i32 %36, i32 %37)
  %39 = load %struct.gm12u320_device*, %struct.gm12u320_device** %3, align 8
  %40 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %38, i32* %44, align 4
  %45 = load %struct.gm12u320_device*, %struct.gm12u320_device** %3, align 8
  %46 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %35
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %99

56:                                               ; preds = %35
  %57 = load %struct.gm12u320_device*, %struct.gm12u320_device** %3, align 8
  %58 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* @DATA_BLOCK_HEADER_SIZE, align 4
  %66 = call i32 @memcpy(i32 %63, i8* %64, i32 %65)
  %67 = load %struct.gm12u320_device*, %struct.gm12u320_device** %3, align 8
  %68 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @DATA_BLOCK_FOOTER_SIZE, align 4
  %76 = sub nsw i32 %74, %75
  %77 = add nsw i32 %73, %76
  %78 = load i8*, i8** @data_block_footer, align 8
  %79 = load i32, i32* @DATA_BLOCK_FOOTER_SIZE, align 4
  %80 = call i32 @memcpy(i32 %77, i8* %78, i32 %79)
  br label %81

81:                                               ; preds = %56
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %20

84:                                               ; preds = %20
  %85 = load i32, i32* @DRIVER_NAME, align 4
  %86 = call i32 @create_singlethread_workqueue(i32 %85)
  %87 = load %struct.gm12u320_device*, %struct.gm12u320_device** %3, align 8
  %88 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load %struct.gm12u320_device*, %struct.gm12u320_device** %3, align 8
  %91 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %84
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %99

98:                                               ; preds = %84
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %95, %53, %16
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @create_singlethread_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
