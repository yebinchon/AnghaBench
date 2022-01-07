; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-microsoft.c_ms_ergonomy_kb_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-microsoft.c_ms_ergonomy_kb_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_input = type { %struct.input_dev* }
%struct.input_dev = type { i32, i32 }
%struct.hid_usage = type { i32 }

@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@HID_UP_CONSUMER = common dso_local global i32 0, align 4
@HID_USAGE = common dso_local global i32 0, align 4
@KEY_PROG1 = common dso_local global i32 0, align 4
@KEY_PROG2 = common dso_local global i32 0, align 4
@HID_UP_MSVENDOR = common dso_local global i32 0, align 4
@KEY_CHAT = common dso_local global i32 0, align 4
@KEY_PHONE = common dso_local global i32 0, align 4
@KEY_KPEQUAL = common dso_local global i32 0, align 4
@KEY_KPLEFTPAREN = common dso_local global i32 0, align 4
@KEY_KPRIGHTPAREN = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i32 0, align 4
@KEY_F13 = common dso_local global i32 0, align 4
@KEY_F14 = common dso_local global i32 0, align 4
@KEY_F15 = common dso_local global i32 0, align 4
@KEY_F16 = common dso_local global i32 0, align 4
@KEY_F17 = common dso_local global i32 0, align 4
@KEY_F18 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_input*, %struct.hid_usage*, i64**, i32*)* @ms_ergonomy_kb_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_ergonomy_kb_quirk(%struct.hid_input* %0, %struct.hid_usage* %1, i64** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_input*, align 8
  %7 = alloca %struct.hid_usage*, align 8
  %8 = alloca i64**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.input_dev*, align 8
  store %struct.hid_input* %0, %struct.hid_input** %6, align 8
  store %struct.hid_usage* %1, %struct.hid_usage** %7, align 8
  store i64** %2, i64*** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.hid_input*, %struct.hid_input** %6, align 8
  %12 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %11, i32 0, i32 0
  %13 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  store %struct.input_dev* %13, %struct.input_dev** %10, align 8
  %14 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %15 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HID_USAGE_PAGE, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @HID_UP_CONSUMER, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %4
  %22 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %23 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @HID_USAGE, align 4
  %26 = and i32 %24, %25
  switch i32 %26, label %33 [
    i32 669, label %27
    i32 670, label %30
  ]

27:                                               ; preds = %21
  %28 = load i32, i32* @KEY_PROG1, align 4
  %29 = call i32 @ms_map_key_clear(i32 %28)
  store i32 1, i32* %5, align 4
  br label %112

30:                                               ; preds = %21
  %31 = load i32, i32* @KEY_PROG2, align 4
  %32 = call i32 @ms_map_key_clear(i32 %31)
  store i32 1, i32* %5, align 4
  br label %112

33:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %112

34:                                               ; preds = %4
  %35 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %36 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @HID_USAGE_PAGE, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @HID_UP_MSVENDOR, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %112

43:                                               ; preds = %34
  %44 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %45 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @HID_USAGE, align 4
  %48 = and i32 %46, %47
  switch i32 %48, label %110 [
    i32 64774, label %49
    i32 64775, label %52
    i32 65280, label %55
    i32 65281, label %68
    i32 65282, label %76
    i32 65285, label %77
  ]

49:                                               ; preds = %43
  %50 = load i32, i32* @KEY_CHAT, align 4
  %51 = call i32 @ms_map_key_clear(i32 %50)
  br label %111

52:                                               ; preds = %43
  %53 = load i32, i32* @KEY_PHONE, align 4
  %54 = call i32 @ms_map_key_clear(i32 %53)
  br label %111

55:                                               ; preds = %43
  %56 = load i32, i32* @KEY_KPEQUAL, align 4
  %57 = call i32 @ms_map_key_clear(i32 %56)
  %58 = load i32, i32* @KEY_KPLEFTPAREN, align 4
  %59 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %60 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @set_bit(i32 %58, i32 %61)
  %63 = load i32, i32* @KEY_KPRIGHTPAREN, align 4
  %64 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %65 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @set_bit(i32 %63, i32 %66)
  br label %111

68:                                               ; preds = %43
  %69 = load %struct.hid_input*, %struct.hid_input** %6, align 8
  %70 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %71 = load i64**, i64*** %8, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* @EV_REL, align 4
  %74 = load i32, i32* @REL_WHEEL, align 4
  %75 = call i32 @hid_map_usage_clear(%struct.hid_input* %69, %struct.hid_usage* %70, i64** %71, i32* %72, i32 %73, i32 %74)
  br label %111

76:                                               ; preds = %43
  store i32 -1, i32* %5, align 4
  br label %112

77:                                               ; preds = %43
  %78 = load i32, i32* @EV_REP, align 4
  %79 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %80 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @set_bit(i32 %78, i32 %81)
  %83 = load i32, i32* @KEY_F13, align 4
  %84 = call i32 @ms_map_key_clear(i32 %83)
  %85 = load i32, i32* @KEY_F14, align 4
  %86 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %87 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @set_bit(i32 %85, i32 %88)
  %90 = load i32, i32* @KEY_F15, align 4
  %91 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %92 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @set_bit(i32 %90, i32 %93)
  %95 = load i32, i32* @KEY_F16, align 4
  %96 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %97 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @set_bit(i32 %95, i32 %98)
  %100 = load i32, i32* @KEY_F17, align 4
  %101 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %102 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @set_bit(i32 %100, i32 %103)
  %105 = load i32, i32* @KEY_F18, align 4
  %106 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %107 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @set_bit(i32 %105, i32 %108)
  br label %111

110:                                              ; preds = %43
  store i32 0, i32* %5, align 4
  br label %112

111:                                              ; preds = %77, %68, %55, %52, %49
  store i32 1, i32* %5, align 4
  br label %112

112:                                              ; preds = %111, %110, %76, %42, %33, %30, %27
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @ms_map_key_clear(i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @hid_map_usage_clear(%struct.hid_input*, %struct.hid_usage*, i64**, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
