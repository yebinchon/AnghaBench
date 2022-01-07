; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_match_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_match_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpp_report = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64* }
%struct.TYPE_3__ = type { i64 }

@HIDPP_ERROR = common dso_local global i64 0, align 8
@HIDPP20_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidpp_report*, %struct.hidpp_report*)* @hidpp_match_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpp_match_error(%struct.hidpp_report* %0, %struct.hidpp_report* %1) #0 {
  %3 = alloca %struct.hidpp_report*, align 8
  %4 = alloca %struct.hidpp_report*, align 8
  store %struct.hidpp_report* %0, %struct.hidpp_report** %3, align 8
  store %struct.hidpp_report* %1, %struct.hidpp_report** %4, align 8
  %5 = load %struct.hidpp_report*, %struct.hidpp_report** %4, align 8
  %6 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @HIDPP_ERROR, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load %struct.hidpp_report*, %struct.hidpp_report** %4, align 8
  %13 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @HIDPP20_ERROR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %11, %2
  %19 = load %struct.hidpp_report*, %struct.hidpp_report** %4, align 8
  %20 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.hidpp_report*, %struct.hidpp_report** %3, align 8
  %24 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %22, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %18
  %29 = load %struct.hidpp_report*, %struct.hidpp_report** %4, align 8
  %30 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.hidpp_report*, %struct.hidpp_report** %3, align 8
  %36 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %34, %38
  br label %40

40:                                               ; preds = %28, %18, %11
  %41 = phi i1 [ false, %18 ], [ false, %11 ], [ %39, %28 ]
  %42 = zext i1 %41 to i32
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
