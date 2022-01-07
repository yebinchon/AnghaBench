; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-asus.c_asus_kbd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-asus.c_asus_kbd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }

@FEATURE_KBD_REPORT_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Asus failed to send init command: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @asus_kbd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_kbd_init(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca [16 x i32], align 16
  %4 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %5 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %6 = load i32, i32* @FEATURE_KBD_REPORT_ID, align 4
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds i32, i32* %5, i64 1
  store i32 65, i32* %7, align 4
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  store i32 83, i32* %8, align 4
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  store i32 85, i32* %9, align 4
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 83, i32* %10, align 4
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  store i32 32, i32* %11, align 4
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 84, i32* %12, align 4
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 101, i32* %13, align 4
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 99, i32* %14, align 4
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 104, i32* %15, align 4
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 46, i32* %16, align 4
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 73, i32* %17, align 4
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 110, i32* %18, align 4
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 99, i32* %19, align 4
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 46, i32* %20, align 4
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %24 = call i32 @asus_kbd_set_report(%struct.hid_device* %22, i32* %23, i32 64)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @hid_err(%struct.hid_device* %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %27, %1
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @asus_kbd_set_report(%struct.hid_device*, i32*, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
