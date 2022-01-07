; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_bcm5974.c_bcm5974_wellspring_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_bcm5974.c_bcm5974_wellspring_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm5974 = type { %struct.TYPE_2__*, i32, %struct.bcm5974_config }
%struct.TYPE_2__ = type { i32 }
%struct.bcm5974_config = type { i64, i32, i64, i8, i8, i32, i32 }

@TYPE3 = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BCM5974_WELLSPRING_MODE_READ_REQUEST_ID = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"could not read from device\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@BCM5974_WELLSPRING_MODE_WRITE_REQUEST_ID = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"could not write to device\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"bcm5974: switched to %s mode.\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"wellspring\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm5974*, i32)* @bcm5974_wellspring_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm5974_wellspring_mode(%struct.bcm5974* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm5974*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcm5974_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.bcm5974* %0, %struct.bcm5974** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.bcm5974*, %struct.bcm5974** %4, align 8
  %11 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %10, i32 0, i32 2
  store %struct.bcm5974_config* %11, %struct.bcm5974_config** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.bcm5974_config*, %struct.bcm5974_config** %6, align 8
  %13 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TYPE3, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %140

18:                                               ; preds = %2
  %19 = load %struct.bcm5974_config*, %struct.bcm5974_config** %6, align 8
  %20 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kmalloc(i32 %21, i32 %22)
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %18
  %27 = load %struct.bcm5974*, %struct.bcm5974** %4, align 8
  %28 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %136

34:                                               ; preds = %18
  %35 = load %struct.bcm5974*, %struct.bcm5974** %4, align 8
  %36 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.bcm5974*, %struct.bcm5974** %4, align 8
  %39 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @usb_rcvctrlpipe(i32 %40, i32 0)
  %42 = load i32, i32* @BCM5974_WELLSPRING_MODE_READ_REQUEST_ID, align 4
  %43 = load i32, i32* @USB_DIR_IN, align 4
  %44 = load i32, i32* @USB_TYPE_CLASS, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.bcm5974_config*, %struct.bcm5974_config** %6, align 8
  %49 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.bcm5974_config*, %struct.bcm5974_config** %6, align 8
  %52 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %9, align 8
  %55 = load %struct.bcm5974_config*, %struct.bcm5974_config** %6, align 8
  %56 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @usb_control_msg(i32 %37, i32 %41, i32 %42, i32 %47, i32 %50, i32 %53, i8* %54, i32 %57, i32 5000)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.bcm5974_config*, %struct.bcm5974_config** %6, align 8
  %61 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %59, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %34
  %65 = load %struct.bcm5974*, %struct.bcm5974** %4, align 8
  %66 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %136

72:                                               ; preds = %34
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load %struct.bcm5974_config*, %struct.bcm5974_config** %6, align 8
  %77 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %76, i32 0, i32 3
  %78 = load i8, i8* %77, align 8
  %79 = sext i8 %78 to i32
  br label %85

80:                                               ; preds = %72
  %81 = load %struct.bcm5974_config*, %struct.bcm5974_config** %6, align 8
  %82 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %81, i32 0, i32 4
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i32 [ %79, %75 ], [ %84, %80 ]
  %87 = trunc i32 %86 to i8
  %88 = load i8*, i8** %9, align 8
  %89 = load %struct.bcm5974_config*, %struct.bcm5974_config** %6, align 8
  %90 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  store i8 %87, i8* %92, align 1
  %93 = load %struct.bcm5974*, %struct.bcm5974** %4, align 8
  %94 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.bcm5974*, %struct.bcm5974** %4, align 8
  %97 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @usb_sndctrlpipe(i32 %98, i32 0)
  %100 = load i32, i32* @BCM5974_WELLSPRING_MODE_WRITE_REQUEST_ID, align 4
  %101 = load i32, i32* @USB_DIR_OUT, align 4
  %102 = load i32, i32* @USB_TYPE_CLASS, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %105 = or i32 %103, %104
  %106 = load %struct.bcm5974_config*, %struct.bcm5974_config** %6, align 8
  %107 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.bcm5974_config*, %struct.bcm5974_config** %6, align 8
  %110 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = load i8*, i8** %9, align 8
  %113 = load %struct.bcm5974_config*, %struct.bcm5974_config** %6, align 8
  %114 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @usb_control_msg(i32 %95, i32 %99, i32 %100, i32 %105, i32 %108, i32 %111, i8* %112, i32 %115, i32 5000)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.bcm5974_config*, %struct.bcm5974_config** %6, align 8
  %119 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %117, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %85
  %123 = load %struct.bcm5974*, %struct.bcm5974** %4, align 8
  %124 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %123, i32 0, i32 0
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = call i32 @dev_err(i32* %126, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %128 = load i32, i32* @EIO, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %7, align 4
  br label %136

130:                                              ; preds = %85
  %131 = load i32, i32* %5, align 4
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %135 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %134)
  br label %136

136:                                              ; preds = %130, %122, %64, %26
  %137 = load i8*, i8** %9, align 8
  %138 = call i32 @kfree(i8* %137)
  %139 = load i32, i32* %7, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %136, %17
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @dprintk(i32, i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
