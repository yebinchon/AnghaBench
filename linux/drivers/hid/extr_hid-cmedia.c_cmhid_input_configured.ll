; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cmedia.c_cmhid_input_configured.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cmedia.c_cmhid_input_configured.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { %struct.input_dev* }
%struct.input_dev = type { i32* }
%struct.cmhid = type { %struct.input_dev*, i32 }

@jack_switch_types = common dso_local global i32* null, align 8
@EV_SW = common dso_local global i32 0, align 4
@CM6533_JD_TYPE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*)* @cmhid_input_configured to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmhid_input_configured(%struct.hid_device* %0, %struct.hid_input* %1) #0 {
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.hid_input*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.cmhid*, align 8
  %7 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  store %struct.hid_input* %1, %struct.hid_input** %4, align 8
  %8 = load %struct.hid_input*, %struct.hid_input** %4, align 8
  %9 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %8, i32 0, i32 0
  %10 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  store %struct.input_dev* %10, %struct.input_dev** %5, align 8
  %11 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %12 = call %struct.cmhid* @hid_get_drvdata(%struct.hid_device* %11)
  store %struct.cmhid* %12, %struct.cmhid** %6, align 8
  %13 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %14 = load %struct.cmhid*, %struct.cmhid** %6, align 8
  %15 = getelementptr inbounds %struct.cmhid, %struct.cmhid* %14, i32 0, i32 0
  store %struct.input_dev* %13, %struct.input_dev** %15, align 8
  %16 = load %struct.cmhid*, %struct.cmhid** %6, align 8
  %17 = getelementptr inbounds %struct.cmhid, %struct.cmhid* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32*, i32** @jack_switch_types, align 8
  %20 = call i32 @memcpy(i32 %18, i32* %19, i32 4)
  %21 = load i32, i32* @EV_SW, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %24 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %22, i32* %26, align 4
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %42, %2
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @CM6533_JD_TYPE_COUNT, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load %struct.cmhid*, %struct.cmhid** %6, align 8
  %33 = getelementptr inbounds %struct.cmhid, %struct.cmhid* %32, i32 0, i32 0
  %34 = load %struct.input_dev*, %struct.input_dev** %33, align 8
  %35 = load i32, i32* @EV_SW, align 4
  %36 = load i32*, i32** @jack_switch_types, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @input_set_capability(%struct.input_dev* %34, i32 %35, i32 %40)
  br label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %27

45:                                               ; preds = %27
  ret i32 0
}

declare dso_local %struct.cmhid* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
