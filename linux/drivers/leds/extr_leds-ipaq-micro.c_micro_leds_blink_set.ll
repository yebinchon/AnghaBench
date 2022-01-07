; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ipaq-micro.c_micro_leds_blink_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ipaq-micro.c_micro_leds_blink_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ipaq_micro = type { i32 }
%struct.ipaq_micro_msg = type { i32, i8**, i32 }

@MSG_NOTIFY_LED = common dso_local global i32 0, align 4
@LED_GREEN = common dso_local global i8* null, align 8
@IPAQ_LED_MAX_DUTY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, i64*, i64*)* @micro_leds_blink_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @micro_leds_blink_set(%struct.led_classdev* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.led_classdev*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.ipaq_micro*, align 8
  %9 = alloca %struct.ipaq_micro_msg, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %11 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ipaq_micro* @dev_get_drvdata(i32 %16)
  store %struct.ipaq_micro* %17, %struct.ipaq_micro** %8, align 8
  %18 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %9, i32 0, i32 0
  store i32 4, i32* %18, align 8
  %19 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %9, i32 0, i32 1
  store i8** null, i8*** %19, align 8
  %20 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %9, i32 0, i32 2
  %21 = load i32, i32* @MSG_NOTIFY_LED, align 4
  store i32 %21, i32* %20, align 8
  %22 = load i8*, i8** @LED_GREEN, align 8
  %23 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %9, i32 0, i32 1
  %24 = load i8**, i8*** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  store i8* %22, i8** %25, align 8
  %26 = load i64*, i64** %6, align 8
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IPAQ_LED_MAX_DUTY, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %3
  %31 = load i64*, i64** %7, align 8
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IPAQ_LED_MAX_DUTY, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30, %3
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %89

38:                                               ; preds = %30
  %39 = load i64*, i64** %6, align 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i64*, i64** %7, align 8
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i64*, i64** %6, align 8
  store i64 100, i64* %47, align 8
  %48 = load i64*, i64** %7, align 8
  store i64 100, i64* %48, align 8
  br label %49

49:                                               ; preds = %46, %42, %38
  %50 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %9, i32 0, i32 1
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  store i8* null, i8** %52, align 8
  %53 = load i64*, i64** %6, align 8
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IPAQ_LED_MAX_DUTY, align 8
  %56 = icmp uge i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %9, i32 0, i32 1
  %59 = load i8**, i8*** %58, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 2
  store i8* null, i8** %60, align 8
  br label %69

61:                                               ; preds = %49
  %62 = load i64*, i64** %6, align 8
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @DIV_ROUND_CLOSEST(i64 %63, i32 100)
  %65 = inttoptr i64 %64 to i8*
  %66 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %9, i32 0, i32 1
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 2
  store i8* %65, i8** %68, align 8
  br label %69

69:                                               ; preds = %61, %57
  %70 = load i64*, i64** %7, align 8
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @IPAQ_LED_MAX_DUTY, align 8
  %73 = icmp uge i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %9, i32 0, i32 1
  %76 = load i8**, i8*** %75, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 3
  store i8* null, i8** %77, align 8
  br label %86

78:                                               ; preds = %69
  %79 = load i64*, i64** %7, align 8
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @DIV_ROUND_CLOSEST(i64 %80, i32 100)
  %82 = inttoptr i64 %81 to i8*
  %83 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %9, i32 0, i32 1
  %84 = load i8**, i8*** %83, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 3
  store i8* %82, i8** %85, align 8
  br label %86

86:                                               ; preds = %78, %74
  %87 = load %struct.ipaq_micro*, %struct.ipaq_micro** %8, align 8
  %88 = call i32 @ipaq_micro_tx_msg_sync(%struct.ipaq_micro* %87, %struct.ipaq_micro_msg* %9)
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %86, %35
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.ipaq_micro* @dev_get_drvdata(i32) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @ipaq_micro_tx_msg_sync(%struct.ipaq_micro*, %struct.ipaq_micro_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
