; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_intuos_bt_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_intuos_bt_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@WACOM_PKGLEN_MAX = common dso_local global i32 0, align 4
@batcap_i4 = common dso_local global i32* null, align 8
@WACOM_POWER_SUPPLY_STATUS_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unknown report: %d,%d size:%zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom_wac*, i64)* @wacom_intuos_bt_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_intuos_bt_irq(%struct.wacom_wac* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wacom_wac*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.wacom_wac* %0, %struct.wacom_wac** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load i32, i32* @WACOM_PKGLEN_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  store i32 1, i32* %8, align 4
  %18 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %19 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @memcpy(i8* %17, i32 %20, i64 %21)
  %23 = getelementptr inbounds i8, i8* %17, i64 0
  %24 = load i8, i8* %23, align 16
  %25 = zext i8 %24 to i32
  switch i32 %25, label %84 [
    i32 4, label %26
    i32 3, label %34
  ]

26:                                               ; preds = %2
  %27 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %17, i64 %29
  %31 = call i32 @wacom_intuos_bt_process_data(%struct.wacom_wac* %27, i8* %30)
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 10
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %2, %26
  %35 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %17, i64 %37
  %39 = call i32 @wacom_intuos_bt_process_data(%struct.wacom_wac* %35, i8* %38)
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 10
  store i32 %41, i32* %8, align 4
  %42 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %17, i64 %44
  %46 = call i32 @wacom_intuos_bt_process_data(%struct.wacom_wac* %42, i8* %45)
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 10
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %17, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, 8
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 1, i32 0
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, 16
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 1, i32 0
  store i32 %63, i32* %12, align 4
  %64 = load i32*, i32** @batcap_i4, align 8
  %65 = load i32, i32* %9, align 4
  %66 = and i32 %65, 7
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %10, align 4
  %70 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %71 = load i32, i32* @WACOM_POWER_SUPPLY_STATUS_AUTO, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %34
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br label %79

79:                                               ; preds = %76, %34
  %80 = phi i1 [ true, %34 ], [ %78, %76 ]
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @wacom_notify_battery(%struct.wacom_wac* %70, i32 %71, i32 %72, i32 %73, i32 %81, i32 %82)
  br label %97

84:                                               ; preds = %2
  %85 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %86 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds i8, i8* %17, i64 0
  %92 = load i8, i8* %91, align 16
  %93 = getelementptr inbounds i8, i8* %17, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = load i64, i64* %5, align 8
  %96 = call i32 @dev_dbg(i32 %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8 zeroext %92, i8 zeroext %94, i64 %95)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %98

97:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %98

98:                                               ; preds = %97, %84
  %99 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i32, i64) #2

declare dso_local i32 @wacom_intuos_bt_process_data(%struct.wacom_wac*, i8*) #2

declare dso_local i32 @wacom_notify_battery(%struct.wacom_wac*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @dev_dbg(i32, i8*, i8 zeroext, i8 zeroext, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
