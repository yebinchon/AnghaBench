; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-saitek.c_saitek_report_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-saitek.c_saitek_report_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.saitek_sc = type { i32 }

@SAITEK_FIX_PS1000 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Fixing up Saitek PS1000 report descriptor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.hid_device*, i32*, i32*)* @saitek_report_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @saitek_report_fixup(%struct.hid_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.saitek_sc*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %9 = call %struct.saitek_sc* @hid_get_drvdata(%struct.hid_device* %8)
  store %struct.saitek_sc* %9, %struct.saitek_sc** %7, align 8
  %10 = load %struct.saitek_sc*, %struct.saitek_sc** %7, align 8
  %11 = getelementptr inbounds %struct.saitek_sc, %struct.saitek_sc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SAITEK_FIX_PS1000, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %61

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 137
  br i1 %19, label %20, label %61

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 20
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 9
  br i1 %24, label %25, label %61

25:                                               ; preds = %20
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 21
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 51
  br i1 %29, label %30, label %61

30:                                               ; preds = %25
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 94
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 129
  br i1 %34, label %35, label %61

35:                                               ; preds = %30
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 95
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %40, label %61

40:                                               ; preds = %35
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 110
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 129
  br i1 %44, label %45, label %61

45:                                               ; preds = %40
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 111
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %52 = call i32 @hid_info(%struct.hid_device* %51, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 20
  store i32 21, i32* %54, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 21
  store i32 0, i32* %56, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 95
  store i32 2, i32* %58, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 111
  store i32 2, i32* %60, align 4
  br label %61

61:                                               ; preds = %50, %45, %40, %35, %30, %25, %20, %16, %3
  %62 = load i32*, i32** %5, align 8
  ret i32* %62
}

declare dso_local %struct.saitek_sc* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_info(%struct.hid_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
