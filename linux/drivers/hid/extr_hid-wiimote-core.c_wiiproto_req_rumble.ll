; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiiproto_req_rumble.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiiproto_req_rumble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@WIIPROTO_FLAG_RUMBLE = common dso_local global i32 0, align 4
@WIIPROTO_REQ_RUMBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wiiproto_req_rumble(%struct.wiimote_data* %0, i32 %1) #0 {
  %3 = alloca %struct.wiimote_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  store %struct.wiimote_data* %0, %struct.wiimote_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %13 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @WIIPROTO_FLAG_RUMBLE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = icmp eq i32 %11, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %52

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32, i32* @WIIPROTO_FLAG_RUMBLE, align 4
  %29 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %30 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %28
  store i32 %33, i32* %31, align 4
  br label %42

34:                                               ; preds = %24
  %35 = load i32, i32* @WIIPROTO_FLAG_RUMBLE, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %38 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %36
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %34, %27
  %43 = load i32, i32* @WIIPROTO_REQ_RUMBLE, align 4
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 0, i32* %45, align 4
  %46 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %48 = call i32 @wiiproto_keep_rumble(%struct.wiimote_data* %46, i32* %47)
  %49 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %51 = call i32 @wiimote_queue(%struct.wiimote_data* %49, i32* %50, i32 8)
  br label %52

52:                                               ; preds = %42, %23
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
