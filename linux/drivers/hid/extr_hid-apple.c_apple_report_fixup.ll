; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-apple.c_apple_report_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-apple.c_apple_report_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.apple_sc = type { i32 }

@APPLE_RDESC_JIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"fixing up MacBook JIS keyboard report descriptor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.hid_device*, i32*, i32*)* @apple_report_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @apple_report_fixup(%struct.hid_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.apple_sc*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %9 = call %struct.apple_sc* @hid_get_drvdata(%struct.hid_device* %8)
  store %struct.apple_sc* %9, %struct.apple_sc** %7, align 8
  %10 = load %struct.apple_sc*, %struct.apple_sc** %7, align 8
  %11 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @APPLE_RDESC_JIS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp uge i32 %18, 60
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 53
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 101
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 59
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 101
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %32 = call i32 @hid_info(%struct.hid_device* %31, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 59
  store i32 231, i32* %34, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 53
  store i32 231, i32* %36, align 4
  br label %37

37:                                               ; preds = %30, %25, %20, %16, %3
  %38 = load i32*, i32** %5, align 8
  ret i32* %38
}

declare dso_local %struct.apple_sc* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_info(%struct.hid_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
