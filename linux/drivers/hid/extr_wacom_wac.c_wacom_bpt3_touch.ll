; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_bpt3_touch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_bpt3_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { i8*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom_wac*)* @wacom_bpt3_touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_bpt3_touch(%struct.wacom_wac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wacom_wac*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wacom_wac* %0, %struct.wacom_wac** %3, align 8
  %10 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %11 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 7
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp ne i32 %21, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %88

24:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %65, %24
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %68

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 8, %30
  %32 = add nsw i32 %31, 2
  store i32 %32, i32* %8, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp sge i32 %39, 2
  br i1 %40, label %41, label %53

41:                                               ; preds = %29
  %42 = load i32, i32* %9, align 4
  %43 = icmp sle i32 %42, 17
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = call i32 @wacom_bpt3_touch_msg(%struct.wacom_wac* %45, i8* %49)
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %64

53:                                               ; preds = %41, %29
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, 128
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = call i32 @wacom_bpt3_button_msg(%struct.wacom_wac* %57, i8* %61)
  br label %63

63:                                               ; preds = %56, %53
  br label %64

64:                                               ; preds = %63, %44
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %25

68:                                               ; preds = %25
  %69 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %70 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %68
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %78 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @input_mt_sync_frame(i64 %79)
  %81 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %82 = call i32 @wacom_wac_finger_count_touches(%struct.wacom_wac* %81)
  %83 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %84 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32 %82, i32* %86, align 4
  br label %87

87:                                               ; preds = %76, %73, %68
  store i32 1, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %23
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @wacom_bpt3_touch_msg(%struct.wacom_wac*, i8*) #1

declare dso_local i32 @wacom_bpt3_button_msg(%struct.wacom_wac*, i8*) #1

declare dso_local i32 @input_mt_sync_frame(i64) #1

declare dso_local i32 @wacom_wac_finger_count_touches(%struct.wacom_wac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
