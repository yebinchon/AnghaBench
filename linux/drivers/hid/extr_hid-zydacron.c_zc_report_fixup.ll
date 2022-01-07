; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-zydacron.c_zc_report_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-zydacron.c_zc_report_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"fixing up zydacron remote control report descriptor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.hid_device*, i32*, i32*)* @zc_report_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @zc_report_fixup(%struct.hid_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* %7, align 4
  %9 = icmp uge i32 %8, 253
  br i1 %9, label %10, label %55

10:                                               ; preds = %3
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 150
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 188
  br i1 %14, label %15, label %55

15:                                               ; preds = %10
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 151
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 255
  br i1 %19, label %20, label %55

20:                                               ; preds = %15
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 202
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 188
  br i1 %24, label %25, label %55

25:                                               ; preds = %20
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 203
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 255
  br i1 %29, label %30, label %55

30:                                               ; preds = %25
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 225
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 188
  br i1 %34, label %35, label %55

35:                                               ; preds = %30
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 226
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 255
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %42 = call i32 @hid_info(%struct.hid_device* %41, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 225
  store i32 12, i32* %44, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 202
  store i32 12, i32* %46, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 150
  store i32 12, i32* %48, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 226
  store i32 0, i32* %50, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 203
  store i32 0, i32* %52, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 151
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %40, %35, %30, %25, %20, %15, %10, %3
  %56 = load i32*, i32** %5, align 8
  ret i32* %56
}

declare dso_local i32 @hid_info(%struct.hid_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
