; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiiproto_req_leds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiiproto_req_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@WIIPROTO_FLAGS_LEDS = common dso_local global i32 0, align 4
@WIIPROTO_REQ_LED = common dso_local global i32 0, align 4
@WIIPROTO_FLAG_LED1 = common dso_local global i32 0, align 4
@WIIPROTO_FLAG_LED2 = common dso_local global i32 0, align 4
@WIIPROTO_FLAG_LED3 = common dso_local global i32 0, align 4
@WIIPROTO_FLAG_LED4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wiiproto_req_leds(%struct.wiimote_data* %0, i32 %1) #0 {
  %3 = alloca %struct.wiimote_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  store %struct.wiimote_data* %0, %struct.wiimote_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @WIIPROTO_FLAGS_LEDS, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, %6
  store i32 %8, i32* %4, align 4
  %9 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %10 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @WIIPROTO_FLAGS_LEDS, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %76

18:                                               ; preds = %2
  %19 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %20 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @WIIPROTO_FLAGS_LEDS, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %29 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @WIIPROTO_REQ_LED, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @WIIPROTO_FLAG_LED1, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %18
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, 16
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %38, %18
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @WIIPROTO_FLAG_LED2, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, 32
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @WIIPROTO_FLAG_LED3, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, 64
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @WIIPROTO_FLAG_LED4, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, 128
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %65, %60
  %70 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %72 = call i32 @wiiproto_keep_rumble(%struct.wiimote_data* %70, i32* %71)
  %73 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %75 = call i32 @wiimote_queue(%struct.wiimote_data* %73, i32* %74, i32 8)
  br label %76

76:                                               ; preds = %69, %17
  ret void
}

declare dso_local i32 @wiiproto_keep_rumble(%struct.wiimote_data*, i32*) #1

declare dso_local i32 @wiimote_queue(%struct.wiimote_data*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
