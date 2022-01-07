; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elecom.c_elecom_report_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elecom.c_elecom_report_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Fixing up Elecom BM084 report descriptor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.hid_device*, i32*, i32*)* @elecom_report_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @elecom_report_fixup(%struct.hid_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %8 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %42 [
    i32 135, label %10
    i32 129, label %30
    i32 130, label %30
    i32 128, label %30
    i32 133, label %36
    i32 134, label %36
    i32 131, label %36
    i32 132, label %36
  ]

10:                                               ; preds = %3
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %11, align 4
  %13 = icmp uge i32 %12, 48
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 46
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 5
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 47
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 12
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %26 = call i32 @hid_info(%struct.hid_device* %25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 47
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %24, %19, %14, %10
  br label %42

30:                                               ; preds = %3, %3, %3
  %31 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mouse_button_fixup(%struct.hid_device* %31, i32* %32, i32 %34, i32 6)
  br label %42

36:                                               ; preds = %3, %3, %3, %3
  %37 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mouse_button_fixup(%struct.hid_device* %37, i32* %38, i32 %40, i32 8)
  br label %42

42:                                               ; preds = %3, %36, %30, %29
  %43 = load i32*, i32** %5, align 8
  ret i32* %43
}

declare dso_local i32 @hid_info(%struct.hid_device*, i8*) #1

declare dso_local i32 @mouse_button_fixup(%struct.hid_device*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
