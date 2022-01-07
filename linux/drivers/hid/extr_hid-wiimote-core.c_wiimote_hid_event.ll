; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_hid_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_hid_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiiproto_handler = type { i32, i64, i32 (%struct.wiimote_data.0*, i64*)* }
%struct.wiimote_data.0 = type opaque
%struct.hid_device = type { i32 }
%struct.hid_report = type { i32 }
%struct.wiimote_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@handlers = common dso_local global %struct.wiiproto_handler* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"Unhandled report %hhu size %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_report*, i64*, i32)* @wiimote_hid_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiimote_hid_event(%struct.hid_device* %0, %struct.hid_report* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_report*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wiimote_data*, align 8
  %11 = alloca %struct.wiiproto_handler*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_report* %1, %struct.hid_report** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %15 = call %struct.wiimote_data* @hid_get_drvdata(%struct.hid_device* %14)
  store %struct.wiimote_data* %15, %struct.wiimote_data** %10, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %87

21:                                               ; preds = %4
  %22 = load %struct.wiimote_data*, %struct.wiimote_data** %10, align 8
  %23 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %13, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %63, %21
  %28 = load %struct.wiiproto_handler*, %struct.wiiproto_handler** @handlers, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.wiiproto_handler, %struct.wiiproto_handler* %28, i64 %30
  %32 = getelementptr inbounds %struct.wiiproto_handler, %struct.wiiproto_handler* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %66

35:                                               ; preds = %27
  %36 = load %struct.wiiproto_handler*, %struct.wiiproto_handler** @handlers, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.wiiproto_handler, %struct.wiiproto_handler* %36, i64 %38
  store %struct.wiiproto_handler* %39, %struct.wiiproto_handler** %11, align 8
  %40 = load %struct.wiiproto_handler*, %struct.wiiproto_handler** %11, align 8
  %41 = getelementptr inbounds %struct.wiiproto_handler, %struct.wiiproto_handler* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %8, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %35
  %48 = load %struct.wiiproto_handler*, %struct.wiiproto_handler** %11, align 8
  %49 = getelementptr inbounds %struct.wiiproto_handler, %struct.wiiproto_handler* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load %struct.wiiproto_handler*, %struct.wiiproto_handler** %11, align 8
  %55 = getelementptr inbounds %struct.wiiproto_handler, %struct.wiiproto_handler* %54, i32 0, i32 2
  %56 = load i32 (%struct.wiimote_data.0*, i64*)*, i32 (%struct.wiimote_data.0*, i64*)** %55, align 8
  %57 = load %struct.wiimote_data*, %struct.wiimote_data** %10, align 8
  %58 = bitcast %struct.wiimote_data* %57 to %struct.wiimote_data.0*
  %59 = load i64*, i64** %8, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 1
  %61 = call i32 %56(%struct.wiimote_data.0* %58, i64* %60)
  br label %66

62:                                               ; preds = %47, %35
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %27

66:                                               ; preds = %53, %27
  %67 = load %struct.wiiproto_handler*, %struct.wiiproto_handler** @handlers, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.wiiproto_handler, %struct.wiiproto_handler* %67, i64 %69
  %71 = getelementptr inbounds %struct.wiiproto_handler, %struct.wiiproto_handler* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %66
  %75 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %76 = load i64*, i64** %8, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @hid_warn(%struct.hid_device* %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %78, i32 %79)
  br label %81

81:                                               ; preds = %74, %66
  %82 = load %struct.wiimote_data*, %struct.wiimote_data** %10, align 8
  %83 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %13, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %81, %18
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.wiimote_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hid_warn(%struct.hid_device*, i8*, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
