; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg.c_lg_ultrax_remote_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg.c_lg_ultrax_remote_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_input = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hid_usage = type { i32 }

@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@HID_UP_LOGIVENDOR = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i32 0, align 4
@HID_USAGE = common dso_local global i32 0, align 4
@KEY_AGAIN = common dso_local global i32 0, align 4
@KEY_HOME = common dso_local global i32 0, align 4
@KEY_SHUFFLE = common dso_local global i32 0, align 4
@KEY_TV = common dso_local global i32 0, align 4
@KEY_MENU = common dso_local global i32 0, align 4
@KEY_AUDIO = common dso_local global i32 0, align 4
@KEY_TEXT = common dso_local global i32 0, align 4
@KEY_LAST = common dso_local global i32 0, align 4
@KEY_MP3 = common dso_local global i32 0, align 4
@KEY_DVD = common dso_local global i32 0, align 4
@KEY_MEDIA = common dso_local global i32 0, align 4
@KEY_VIDEO = common dso_local global i32 0, align 4
@KEY_ANGLE = common dso_local global i32 0, align 4
@KEY_LANGUAGE = common dso_local global i32 0, align 4
@KEY_SUBTITLE = common dso_local global i32 0, align 4
@KEY_RED = common dso_local global i32 0, align 4
@KEY_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_input*, %struct.hid_usage*, i64**, i32*)* @lg_ultrax_remote_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lg_ultrax_remote_mapping(%struct.hid_input* %0, %struct.hid_usage* %1, i64** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_input*, align 8
  %7 = alloca %struct.hid_usage*, align 8
  %8 = alloca i64**, align 8
  %9 = alloca i32*, align 8
  store %struct.hid_input* %0, %struct.hid_input** %6, align 8
  store %struct.hid_usage* %1, %struct.hid_usage** %7, align 8
  store i64** %2, i64*** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %11 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @HID_USAGE_PAGE, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @HID_UP_LOGIVENDOR, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %84

18:                                               ; preds = %4
  %19 = load i32, i32* @EV_REP, align 4
  %20 = load %struct.hid_input*, %struct.hid_input** %6, align 8
  %21 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @set_bit(i32 %19, i32 %24)
  %26 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %27 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @HID_USAGE, align 4
  %30 = and i32 %28, %29
  switch i32 %30, label %82 [
    i32 4, label %31
    i32 13, label %34
    i32 36, label %37
    i32 37, label %40
    i32 38, label %43
    i32 49, label %46
    i32 50, label %49
    i32 51, label %52
    i32 71, label %55
    i32 72, label %58
    i32 73, label %61
    i32 74, label %64
    i32 75, label %67
    i32 76, label %70
    i32 77, label %73
    i32 81, label %76
    i32 82, label %79
  ]

31:                                               ; preds = %18
  %32 = load i32, i32* @KEY_AGAIN, align 4
  %33 = call i32 @lg_map_key_clear(i32 %32)
  br label %83

34:                                               ; preds = %18
  %35 = load i32, i32* @KEY_HOME, align 4
  %36 = call i32 @lg_map_key_clear(i32 %35)
  br label %83

37:                                               ; preds = %18
  %38 = load i32, i32* @KEY_SHUFFLE, align 4
  %39 = call i32 @lg_map_key_clear(i32 %38)
  br label %83

40:                                               ; preds = %18
  %41 = load i32, i32* @KEY_TV, align 4
  %42 = call i32 @lg_map_key_clear(i32 %41)
  br label %83

43:                                               ; preds = %18
  %44 = load i32, i32* @KEY_MENU, align 4
  %45 = call i32 @lg_map_key_clear(i32 %44)
  br label %83

46:                                               ; preds = %18
  %47 = load i32, i32* @KEY_AUDIO, align 4
  %48 = call i32 @lg_map_key_clear(i32 %47)
  br label %83

49:                                               ; preds = %18
  %50 = load i32, i32* @KEY_TEXT, align 4
  %51 = call i32 @lg_map_key_clear(i32 %50)
  br label %83

52:                                               ; preds = %18
  %53 = load i32, i32* @KEY_LAST, align 4
  %54 = call i32 @lg_map_key_clear(i32 %53)
  br label %83

55:                                               ; preds = %18
  %56 = load i32, i32* @KEY_MP3, align 4
  %57 = call i32 @lg_map_key_clear(i32 %56)
  br label %83

58:                                               ; preds = %18
  %59 = load i32, i32* @KEY_DVD, align 4
  %60 = call i32 @lg_map_key_clear(i32 %59)
  br label %83

61:                                               ; preds = %18
  %62 = load i32, i32* @KEY_MEDIA, align 4
  %63 = call i32 @lg_map_key_clear(i32 %62)
  br label %83

64:                                               ; preds = %18
  %65 = load i32, i32* @KEY_VIDEO, align 4
  %66 = call i32 @lg_map_key_clear(i32 %65)
  br label %83

67:                                               ; preds = %18
  %68 = load i32, i32* @KEY_ANGLE, align 4
  %69 = call i32 @lg_map_key_clear(i32 %68)
  br label %83

70:                                               ; preds = %18
  %71 = load i32, i32* @KEY_LANGUAGE, align 4
  %72 = call i32 @lg_map_key_clear(i32 %71)
  br label %83

73:                                               ; preds = %18
  %74 = load i32, i32* @KEY_SUBTITLE, align 4
  %75 = call i32 @lg_map_key_clear(i32 %74)
  br label %83

76:                                               ; preds = %18
  %77 = load i32, i32* @KEY_RED, align 4
  %78 = call i32 @lg_map_key_clear(i32 %77)
  br label %83

79:                                               ; preds = %18
  %80 = load i32, i32* @KEY_CLOSE, align 4
  %81 = call i32 @lg_map_key_clear(i32 %80)
  br label %83

82:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %84

83:                                               ; preds = %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40, %37, %34, %31
  store i32 1, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %82, %17
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @lg_map_key_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
