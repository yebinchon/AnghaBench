; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-appleir.c_appleir_raw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-appleir.c_appleir_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_report = type { i32 }
%struct.appleir = type { i32, i32, i32, i32, i32* }

@appleir_raw_event.keydown = internal constant [3 x i32] [i32 37, i32 135, i32 238], align 4
@appleir_raw_event.keyrepeat = internal constant [1 x i32] [i32 38], align 4
@appleir_raw_event.flatbattery = internal constant [3 x i32] [i32 37, i32 135, i32 224], align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_report*, i32*, i32)* @appleir_raw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @appleir_raw_event(%struct.hid_device* %0, %struct.hid_report* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca %struct.hid_report*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.appleir*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store %struct.hid_report* %1, %struct.hid_report** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %13 = call %struct.appleir* @hid_get_drvdata(%struct.hid_device* %12)
  store %struct.appleir* %13, %struct.appleir** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 5
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %119

17:                                               ; preds = %4
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @memcmp(i32* %18, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @appleir_raw_event.keydown, i64 0, i64 0), i32 12)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %90, label %21

21:                                               ; preds = %17
  %22 = load %struct.appleir*, %struct.appleir** %9, align 8
  %23 = getelementptr inbounds %struct.appleir, %struct.appleir* %22, i32 0, i32 3
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.appleir*, %struct.appleir** %9, align 8
  %27 = getelementptr inbounds %struct.appleir, %struct.appleir* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %32 = load %struct.appleir*, %struct.appleir** %9, align 8
  %33 = load %struct.appleir*, %struct.appleir** %9, align 8
  %34 = getelementptr inbounds %struct.appleir, %struct.appleir* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @key_up(%struct.hid_device* %31, %struct.appleir* %32, i32 %35)
  br label %37

37:                                               ; preds = %30, %21
  %38 = load %struct.appleir*, %struct.appleir** %9, align 8
  %39 = getelementptr inbounds %struct.appleir, %struct.appleir* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.appleir*, %struct.appleir** %9, align 8
  %44 = getelementptr inbounds %struct.appleir, %struct.appleir* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %11, align 4
  br label %51

46:                                               ; preds = %37
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @get_key(i32 %49)
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %46, %42
  %52 = load i32, i32* %11, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %80

54:                                               ; preds = %51
  %55 = load %struct.appleir*, %struct.appleir** %9, align 8
  %56 = getelementptr inbounds %struct.appleir, %struct.appleir* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.appleir*, %struct.appleir** %9, align 8
  %63 = getelementptr inbounds %struct.appleir, %struct.appleir* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %65 = load %struct.appleir*, %struct.appleir** %9, align 8
  %66 = load %struct.appleir*, %struct.appleir** %9, align 8
  %67 = getelementptr inbounds %struct.appleir, %struct.appleir* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @key_down(%struct.hid_device* %64, %struct.appleir* %65, i32 %68)
  %70 = load %struct.appleir*, %struct.appleir** %9, align 8
  %71 = getelementptr inbounds %struct.appleir, %struct.appleir* %70, i32 0, i32 1
  %72 = load i64, i64* @jiffies, align 8
  %73 = load i32, i32* @HZ, align 4
  %74 = sdiv i32 %73, 8
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %72, %75
  %77 = call i32 @mod_timer(i32* %71, i64 %76)
  %78 = load %struct.appleir*, %struct.appleir** %9, align 8
  %79 = getelementptr inbounds %struct.appleir, %struct.appleir* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  br label %85

80:                                               ; preds = %51
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 0, %81
  %83 = load %struct.appleir*, %struct.appleir** %9, align 8
  %84 = getelementptr inbounds %struct.appleir, %struct.appleir* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %80, %54
  %86 = load %struct.appleir*, %struct.appleir** %9, align 8
  %87 = getelementptr inbounds %struct.appleir, %struct.appleir* %86, i32 0, i32 3
  %88 = load i64, i64* %10, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  br label %119

90:                                               ; preds = %17
  %91 = load %struct.appleir*, %struct.appleir** %9, align 8
  %92 = getelementptr inbounds %struct.appleir, %struct.appleir* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = call i32 @memcmp(i32* %93, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @appleir_raw_event.keyrepeat, i64 0, i64 0), i32 4)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %111, label %96

96:                                               ; preds = %90
  %97 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %98 = load %struct.appleir*, %struct.appleir** %9, align 8
  %99 = load %struct.appleir*, %struct.appleir** %9, align 8
  %100 = getelementptr inbounds %struct.appleir, %struct.appleir* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @key_down(%struct.hid_device* %97, %struct.appleir* %98, i32 %101)
  %103 = load %struct.appleir*, %struct.appleir** %9, align 8
  %104 = getelementptr inbounds %struct.appleir, %struct.appleir* %103, i32 0, i32 1
  %105 = load i64, i64* @jiffies, align 8
  %106 = load i32, i32* @HZ, align 4
  %107 = sdiv i32 %106, 8
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %105, %108
  %110 = call i32 @mod_timer(i32* %104, i64 %109)
  br label %119

111:                                              ; preds = %90
  %112 = load i32*, i32** %7, align 8
  %113 = call i32 @memcmp(i32* %112, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @appleir_raw_event.flatbattery, i64 0, i64 0), i32 12)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = load %struct.appleir*, %struct.appleir** %9, align 8
  %117 = call i32 @battery_flat(%struct.appleir* %116)
  br label %118

118:                                              ; preds = %115, %111
  br label %119

119:                                              ; preds = %118, %96, %85, %16
  ret i32 0
}

declare dso_local %struct.appleir* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @key_up(%struct.hid_device*, %struct.appleir*, i32) #1

declare dso_local i32 @get_key(i32) #1

declare dso_local i32 @key_down(%struct.hid_device*, %struct.appleir*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @battery_flat(%struct.appleir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
