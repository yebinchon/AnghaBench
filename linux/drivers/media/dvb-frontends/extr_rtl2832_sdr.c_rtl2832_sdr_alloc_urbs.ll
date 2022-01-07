; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832_sdr.c_rtl2832_sdr_alloc_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832_sdr.c_rtl2832_sdr_alloc_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl2832_sdr_dev = type { i32, i32*, %struct.TYPE_4__**, i32*, i32, %struct.platform_device* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.platform_device = type { i32 }

@MAX_BULK_BUFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"alloc urb=%d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BULK_BUFFER_SIZE = common dso_local global i32 0, align 4
@rtl2832_sdr_urb_complete = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl2832_sdr_dev*)* @rtl2832_sdr_alloc_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl2832_sdr_alloc_urbs(%struct.rtl2832_sdr_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtl2832_sdr_dev*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtl2832_sdr_dev* %0, %struct.rtl2832_sdr_dev** %3, align 8
  %7 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %8 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %7, i32 0, i32 5
  %9 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  store %struct.platform_device* %9, %struct.platform_device** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %109, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @MAX_BULK_BUFS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %112

14:                                               ; preds = %10
  %15 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @dev_dbg(i32* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.TYPE_4__* @usb_alloc_urb(i32 0, i32 %19)
  %21 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %22 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %23, i64 %25
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %26, align 8
  %27 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %28 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %29, i64 %31
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = icmp ne %struct.TYPE_4__* %33, null
  br i1 %34, label %55, label %35

35:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %49, %35
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %42 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %43, i64 %45
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = call i32 @usb_free_urb(%struct.TYPE_4__* %47)
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %36

52:                                               ; preds = %36
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %113

55:                                               ; preds = %14
  %56 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %57 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %58, i64 %60
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %64 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %67 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @usb_rcvbulkpipe(i32 %68, i32 129)
  %70 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %71 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @BULK_BUFFER_SIZE, align 4
  %78 = load i32, i32* @rtl2832_sdr_urb_complete, align 4
  %79 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %80 = call i32 @usb_fill_bulk_urb(%struct.TYPE_4__* %62, i32 %65, i32 %69, i32 %76, i32 %77, i32 %78, %struct.rtl2832_sdr_dev* %79)
  %81 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %82 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %83 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %84, i64 %86
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  store i32 %81, i32* %89, align 4
  %90 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %91 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %98 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %97, i32 0, i32 2
  %99 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %99, i64 %101
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i32 %96, i32* %104, align 4
  %105 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %106 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %55
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %10

112:                                              ; preds = %10
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %52
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_4__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_4__*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_4__*, i32, i32, i32, i32, i32, %struct.rtl2832_sdr_dev*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
