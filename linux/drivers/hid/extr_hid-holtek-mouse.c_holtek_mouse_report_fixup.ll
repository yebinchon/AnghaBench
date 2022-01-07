; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-holtek-mouse.c_holtek_mouse_report_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-holtek-mouse.c_holtek_mouse_report_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.usb_interface = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Fixing up report descriptor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.hid_device*, i32*, i32*)* @holtek_mouse_report_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @holtek_mouse_report_fixup(%struct.hid_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %9 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.usb_interface* @to_usb_interface(i32 %11)
  store %struct.usb_interface* %12, %struct.usb_interface** %7, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %14 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %89

20:                                               ; preds = %3
  %21 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %22 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %88 [
    i32 132, label %24
    i32 130, label %24
    i32 128, label %24
    i32 133, label %56
    i32 131, label %56
    i32 129, label %56
  ]

24:                                               ; preds = %20, %20, %20
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp uge i32 %26, 122
  br i1 %27, label %28, label %55

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 115
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 255
  br i1 %32, label %33, label %55

33:                                               ; preds = %28
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 116
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 127
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 120
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 255
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 121
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 127
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %50 = call i32 @hid_info(%struct.hid_device* %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 121
  store i32 47, i32* %52, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 116
  store i32 47, i32* %54, align 4
  br label %55

55:                                               ; preds = %48, %43, %38, %33, %28, %24
  br label %88

56:                                               ; preds = %20, %20, %20
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp uge i32 %58, 113
  br i1 %59, label %60, label %87

60:                                               ; preds = %56
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 106
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 255
  br i1 %64, label %65, label %87

65:                                               ; preds = %60
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 107
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 127
  br i1 %69, label %70, label %87

70:                                               ; preds = %65
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 111
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 255
  br i1 %74, label %75, label %87

75:                                               ; preds = %70
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 112
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 127
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %82 = call i32 @hid_info(%struct.hid_device* %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 112
  store i32 47, i32* %84, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 107
  store i32 47, i32* %86, align 4
  br label %87

87:                                               ; preds = %80, %75, %70, %65, %60, %56
  br label %88

88:                                               ; preds = %20, %87, %55
  br label %89

89:                                               ; preds = %88, %3
  %90 = load i32*, i32** %5, align 8
  ret i32* %90
}

declare dso_local %struct.usb_interface* @to_usb_interface(i32) #1

declare dso_local i32 @hid_info(%struct.hid_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
