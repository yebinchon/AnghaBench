; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_gen5_report_data_header_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_gen5_report_data_header_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32, i32 }

@PIP_RESP_LENGTH_OFFSET = common dso_local global i64 0, align 8
@PIP_RESP_REPORT_ID_OFFSET = common dso_local global i64 0, align 8
@PIP_TOUCH_REPORT_HEAD_SIZE = common dso_local global i32 0, align 4
@PIP_TOUCH_REPORT_MAX_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PIP_BTN_REPORT_HEAD_SIZE = common dso_local global i32 0, align 4
@PIP_BTN_REPORT_MAX_SIZE = common dso_local global i32 0, align 4
@PIP_WAKEUP_EVENT_SIZE = common dso_local global i32 0, align 4
@CYAPA_GEN5 = common dso_local global i32 0, align 4
@CYAPA_STATE_GEN5_APP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*, i32*)* @gen5_report_data_header_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen5_report_data_header_parse(%struct.cyapa* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cyapa*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load i64, i64* @PIP_RESP_LENGTH_OFFSET, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = call i32 @get_unaligned_le16(i32* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i64, i64* @PIP_RESP_REPORT_ID_OFFSET, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %47 [
    i32 129, label %15
    i32 131, label %27
    i32 132, label %27
    i32 130, label %27
    i32 128, label %39
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @PIP_TOUCH_REPORT_HEAD_SIZE, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @PIP_TOUCH_REPORT_MAX_SIZE, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %15
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %57

26:                                               ; preds = %19
  br label %50

27:                                               ; preds = %2, %2, %2
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @PIP_BTN_REPORT_HEAD_SIZE, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @PIP_BTN_REPORT_MAX_SIZE, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %27
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %57

38:                                               ; preds = %31
  br label %50

39:                                               ; preds = %2
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @PIP_WAKEUP_EVENT_SIZE, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %57

46:                                               ; preds = %39
  br label %50

47:                                               ; preds = %2
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %57

50:                                               ; preds = %46, %38, %26
  %51 = load i32, i32* @CYAPA_GEN5, align 4
  %52 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %53 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @CYAPA_STATE_GEN5_APP, align 4
  %55 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %56 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %50, %47, %43, %35, %23
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @get_unaligned_le16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
