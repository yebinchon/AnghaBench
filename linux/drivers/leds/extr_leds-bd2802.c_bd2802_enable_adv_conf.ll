; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-bd2802.c_bd2802_enable_adv_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-bd2802.c_bd2802_enable_adv_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.bd2802_led = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@bd2802_addr_attributes = common dso_local global %struct.TYPE_9__** null, align 8
@.str = private unnamed_addr constant [23 x i8] c"failed: sysfs file %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bd2802_led*)* @bd2802_enable_adv_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bd2802_enable_adv_conf(%struct.bd2802_led* %0) #0 {
  %2 = alloca %struct.bd2802_led*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bd2802_led* %0, %struct.bd2802_led** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %38, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @bd2802_addr_attributes, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.TYPE_9__** %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %41

10:                                               ; preds = %5
  %11 = load %struct.bd2802_led*, %struct.bd2802_led** %2, align 8
  %12 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %11, i32 0, i32 1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @bd2802_addr_attributes, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %15, i64 %17
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = call i32 @device_create_file(i32* %14, %struct.TYPE_9__* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %10
  %24 = load %struct.bd2802_led*, %struct.bd2802_led** %2, align 8
  %25 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @bd2802_addr_attributes, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %28, i64 %30
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %51

37:                                               ; preds = %10
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %5

41:                                               ; preds = %5
  %42 = load %struct.bd2802_led*, %struct.bd2802_led** %2, align 8
  %43 = call i64 @bd2802_is_all_off(%struct.bd2802_led* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.bd2802_led*, %struct.bd2802_led** %2, align 8
  %47 = call i32 @bd2802_reset_cancel(%struct.bd2802_led* %46)
  br label %48

48:                                               ; preds = %45, %41
  %49 = load %struct.bd2802_led*, %struct.bd2802_led** %2, align 8
  %50 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  br label %71

51:                                               ; preds = %23
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %68, %51
  %55 = load i32, i32* %3, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %54
  %58 = load %struct.bd2802_led*, %struct.bd2802_led** %2, align 8
  %59 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @bd2802_addr_attributes, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %62, i64 %64
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = call i32 @device_remove_file(i32* %61, %struct.TYPE_9__* %66)
  br label %68

68:                                               ; preds = %57
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %3, align 4
  br label %54

71:                                               ; preds = %48, %54
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_9__**) #1

declare dso_local i32 @device_create_file(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i64 @bd2802_is_all_off(%struct.bd2802_led*) #1

declare dso_local i32 @bd2802_reset_cancel(%struct.bd2802_led*) #1

declare dso_local i32 @device_remove_file(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
