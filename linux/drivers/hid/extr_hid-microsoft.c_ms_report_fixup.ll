; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-microsoft.c_ms_report_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-microsoft.c_ms_report_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.ms_data = type { i64 }

@MS_RDESC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [68 x i8] c"fixing up Microsoft Wireless Receiver Model 1028 report descriptor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.hid_device*, i32*, i32*)* @ms_report_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ms_report_fixup(%struct.hid_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ms_data*, align 8
  %8 = alloca i64, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %10 = call %struct.ms_data* @hid_get_drvdata(%struct.hid_device* %9)
  store %struct.ms_data* %10, %struct.ms_data** %7, align 8
  %11 = load %struct.ms_data*, %struct.ms_data** %7, align 8
  %12 = getelementptr inbounds %struct.ms_data, %struct.ms_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @MS_RDESC, align 8
  %16 = and i64 %14, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %3
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 571
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 557
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 25
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 559
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 41
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %34 = call i32 @hid_info(%struct.hid_device* %33, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 557
  store i32 53, i32* %36, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 559
  store i32 69, i32* %38, align 4
  br label %39

39:                                               ; preds = %32, %27, %22, %18, %3
  %40 = load i32*, i32** %5, align 8
  ret i32* %40
}

declare dso_local %struct.ms_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_info(%struct.hid_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
