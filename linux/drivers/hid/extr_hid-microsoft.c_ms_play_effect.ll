; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-microsoft.c_ms_play_effect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-microsoft.c_ms_play_effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.ff_effect = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.hid_device = type { i32 }
%struct.ms_data = type { i32, i32, i32 }

@FF_RUMBLE = common dso_local global i64 0, align 8
@U16_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i8*, %struct.ff_effect*)* @ms_play_effect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_play_effect(%struct.input_dev* %0, i8* %1, %struct.ff_effect* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ff_effect*, align 8
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.ms_data*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ff_effect* %2, %struct.ff_effect** %7, align 8
  %10 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %11 = call %struct.hid_device* @input_get_drvdata(%struct.input_dev* %10)
  store %struct.hid_device* %11, %struct.hid_device** %8, align 8
  %12 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %13 = call %struct.ms_data* @hid_get_drvdata(%struct.hid_device* %12)
  store %struct.ms_data* %13, %struct.ms_data** %9, align 8
  %14 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %15 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FF_RUMBLE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %46

20:                                               ; preds = %3
  %21 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %22 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = mul nsw i32 %26, 100
  %28 = load i32, i32* @U16_MAX, align 4
  %29 = sdiv i32 %27, %28
  %30 = load %struct.ms_data*, %struct.ms_data** %9, align 8
  %31 = getelementptr inbounds %struct.ms_data, %struct.ms_data* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %33 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = mul nsw i32 %37, 100
  %39 = load i32, i32* @U16_MAX, align 4
  %40 = sdiv i32 %38, %39
  %41 = load %struct.ms_data*, %struct.ms_data** %9, align 8
  %42 = getelementptr inbounds %struct.ms_data, %struct.ms_data* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ms_data*, %struct.ms_data** %9, align 8
  %44 = getelementptr inbounds %struct.ms_data, %struct.ms_data* %43, i32 0, i32 2
  %45 = call i32 @schedule_work(i32* %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %20, %19
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.hid_device* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local %struct.ms_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
