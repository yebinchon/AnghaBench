; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_show_remote_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_show_remote_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }
%struct.device = type { i32 }
%struct.hid_device = type { i32 }
%struct.wacom = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.kobj_attribute*, i8*, i32)* @wacom_show_remote_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_show_remote_mode(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.kobj_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.hid_device*, align 8
  %11 = alloca %struct.wacom*, align 8
  %12 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.kobject*, %struct.kobject** %5, align 8
  %14 = getelementptr inbounds %struct.kobject, %struct.kobject* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.device* @kobj_to_dev(i32 %15)
  store %struct.device* %16, %struct.device** %9, align 8
  %17 = load %struct.device*, %struct.device** %9, align 8
  %18 = call %struct.hid_device* @to_hid_device(%struct.device* %17)
  store %struct.hid_device* %18, %struct.hid_device** %10, align 8
  %19 = load %struct.hid_device*, %struct.hid_device** %10, align 8
  %20 = call %struct.wacom* @hid_get_drvdata(%struct.hid_device* %19)
  store %struct.wacom* %20, %struct.wacom** %11, align 8
  %21 = load %struct.wacom*, %struct.wacom** %11, align 8
  %22 = getelementptr inbounds %struct.wacom, %struct.wacom* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 3
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %12, align 4
  br label %36

35:                                               ; preds = %4
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ -1, %35 ]
  %38 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %37)
  ret i32 %38
}

declare dso_local %struct.device* @kobj_to_dev(i32) #1

declare dso_local %struct.hid_device* @to_hid_device(%struct.device*) #1

declare dso_local %struct.wacom* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
