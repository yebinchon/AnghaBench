; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_get_cdc_union_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_get_cdc_union_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_cdc_union_desc = type { i64, i64, i64 }
%struct.usb_interface = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i64 }

@.str = private unnamed_addr constant [25 x i8] c"Missing descriptor data\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Zero length descriptor\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Too large descriptor\0A\00", align 1
@USB_DT_CS_INTERFACE = common dso_local global i64 0, align 8
@USB_CDC_UNION_TYPE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"Found union header\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Union descriptor too short (%d vs %zd)\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Missing CDC union descriptor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_cdc_union_desc* (%struct.usb_interface*)* @ims_pcu_get_cdc_union_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_cdc_union_desc* @ims_pcu_get_cdc_union_desc(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_cdc_union_desc*, align 8
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.usb_cdc_union_desc*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %8 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %4, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %13 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %5, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %21 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %20, i32 0, i32 0
  %22 = call i32 (i32*, i8*, ...) @dev_err(i32* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store %struct.usb_cdc_union_desc* null, %struct.usb_cdc_union_desc** %2, align 8
  br label %90

23:                                               ; preds = %1
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %28 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %27, i32 0, i32 0
  %29 = call i32 (i32*, i8*, ...) @dev_err(i32* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store %struct.usb_cdc_union_desc* null, %struct.usb_cdc_union_desc** %2, align 8
  br label %90

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %75, %30
  %32 = load i64, i64* %5, align 8
  %33 = icmp uge i64 %32, 24
  br i1 %33, label %34, label %86

34:                                               ; preds = %31
  %35 = load i8*, i8** %4, align 8
  %36 = bitcast i8* %35 to %struct.usb_cdc_union_desc*
  store %struct.usb_cdc_union_desc* %36, %struct.usb_cdc_union_desc** %6, align 8
  %37 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %6, align 8
  %38 = getelementptr inbounds %struct.usb_cdc_union_desc, %struct.usb_cdc_union_desc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %44 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %43, i32 0, i32 0
  %45 = call i32 (i32*, i8*, ...) @dev_err(i32* %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store %struct.usb_cdc_union_desc* null, %struct.usb_cdc_union_desc** %2, align 8
  br label %90

46:                                               ; preds = %34
  %47 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %6, align 8
  %48 = getelementptr inbounds %struct.usb_cdc_union_desc, %struct.usb_cdc_union_desc* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @USB_DT_CS_INTERFACE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %46
  %53 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %6, align 8
  %54 = getelementptr inbounds %struct.usb_cdc_union_desc, %struct.usb_cdc_union_desc* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @USB_CDC_UNION_TYPE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %52
  %59 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %60 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %59, i32 0, i32 0
  %61 = call i32 @dev_dbg(i32* %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %62 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %6, align 8
  %63 = getelementptr inbounds %struct.usb_cdc_union_desc, %struct.usb_cdc_union_desc* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp uge i64 %64, 24
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %6, align 8
  store %struct.usb_cdc_union_desc* %67, %struct.usb_cdc_union_desc** %2, align 8
  br label %90

68:                                               ; preds = %58
  %69 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %70 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %69, i32 0, i32 0
  %71 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %6, align 8
  %72 = getelementptr inbounds %struct.usb_cdc_union_desc, %struct.usb_cdc_union_desc* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (i32*, i8*, ...) @dev_err(i32* %70, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i64 %73, i64 24)
  store %struct.usb_cdc_union_desc* null, %struct.usb_cdc_union_desc** %2, align 8
  br label %90

75:                                               ; preds = %52, %46
  %76 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %6, align 8
  %77 = getelementptr inbounds %struct.usb_cdc_union_desc, %struct.usb_cdc_union_desc* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %5, align 8
  %80 = sub i64 %79, %78
  store i64 %80, i64* %5, align 8
  %81 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %6, align 8
  %82 = getelementptr inbounds %struct.usb_cdc_union_desc, %struct.usb_cdc_union_desc* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = getelementptr i8, i8* %84, i64 %83
  store i8* %85, i8** %4, align 8
  br label %31

86:                                               ; preds = %31
  %87 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %88 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %87, i32 0, i32 0
  %89 = call i32 (i32*, i8*, ...) @dev_err(i32* %88, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  store %struct.usb_cdc_union_desc* null, %struct.usb_cdc_union_desc** %2, align 8
  br label %90

90:                                               ; preds = %86, %68, %66, %42, %26, %19
  %91 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %2, align 8
  ret %struct.usb_cdc_union_desc* %91
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
