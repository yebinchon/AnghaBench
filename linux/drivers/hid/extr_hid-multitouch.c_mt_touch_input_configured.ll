; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_touch_input_configured.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_touch_input_configured.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { %struct.input_dev* }
%struct.input_dev = type { i32, i32 }
%struct.mt_application = type { i32, i32, i32, i32 }
%struct.mt_device = type { i32, i64, i64, %struct.mt_class }
%struct.mt_class = type { i64 }

@MT_DEFAULT_MAXCONTACT = common dso_local global i64 0, align 8
@INPUT_MT_POINTER = common dso_local global i32 0, align 4
@MT_QUIRK_NOT_SEEN_MEANS_UP = common dso_local global i32 0, align 4
@INPUT_MT_DROP_UNUSED = common dso_local global i32 0, align 4
@INPUT_PROP_BUTTONPAD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.mt_application*)* @mt_touch_input_configured to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt_touch_input_configured(%struct.hid_device* %0, %struct.hid_input* %1, %struct.mt_application* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca %struct.hid_input*, align 8
  %7 = alloca %struct.mt_application*, align 8
  %8 = alloca %struct.mt_device*, align 8
  %9 = alloca %struct.mt_class*, align 8
  %10 = alloca %struct.input_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store %struct.hid_input* %1, %struct.hid_input** %6, align 8
  store %struct.mt_application* %2, %struct.mt_application** %7, align 8
  %12 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %13 = call %struct.mt_device* @hid_get_drvdata(%struct.hid_device* %12)
  store %struct.mt_device* %13, %struct.mt_device** %8, align 8
  %14 = load %struct.mt_device*, %struct.mt_device** %8, align 8
  %15 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %14, i32 0, i32 3
  store %struct.mt_class* %15, %struct.mt_class** %9, align 8
  %16 = load %struct.hid_input*, %struct.hid_input** %6, align 8
  %17 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %16, i32 0, i32 0
  %18 = load %struct.input_dev*, %struct.input_dev** %17, align 8
  store %struct.input_dev* %18, %struct.input_dev** %10, align 8
  %19 = load %struct.mt_device*, %struct.mt_device** %8, align 8
  %20 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load i64, i64* @MT_DEFAULT_MAXCONTACT, align 8
  %25 = load %struct.mt_device*, %struct.mt_device** %8, align 8
  %26 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %23, %3
  %28 = load %struct.mt_device*, %struct.mt_device** %8, align 8
  %29 = load %struct.mt_application*, %struct.mt_application** %7, align 8
  %30 = call i32 @mt_post_parse(%struct.mt_device* %28, %struct.mt_application* %29)
  %31 = load %struct.mt_device*, %struct.mt_device** %8, align 8
  %32 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load %struct.mt_device*, %struct.mt_device** %8, align 8
  %37 = load %struct.mt_application*, %struct.mt_application** %7, align 8
  %38 = call i32 @mt_post_parse_default_settings(%struct.mt_device* %36, %struct.mt_application* %37)
  br label %39

39:                                               ; preds = %35, %27
  %40 = load %struct.mt_class*, %struct.mt_class** %9, align 8
  %41 = getelementptr inbounds %struct.mt_class, %struct.mt_class* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32, i32* @INPUT_MT_POINTER, align 4
  %46 = load %struct.mt_application*, %struct.mt_application** %7, align 8
  %47 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %44, %39
  %51 = load %struct.mt_application*, %struct.mt_application** %7, align 8
  %52 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MT_QUIRK_NOT_SEEN_MEANS_UP, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load i32, i32* @INPUT_MT_DROP_UNUSED, align 4
  %59 = load %struct.mt_application*, %struct.mt_application** %7, align 8
  %60 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %50
  %64 = load %struct.mt_application*, %struct.mt_application** %7, align 8
  %65 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @INPUT_MT_POINTER, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = load %struct.mt_application*, %struct.mt_application** %7, align 8
  %72 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.mt_device*, %struct.mt_device** %8, align 8
  %77 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  br label %78

78:                                               ; preds = %75, %70, %63
  %79 = load %struct.mt_device*, %struct.mt_device** %8, align 8
  %80 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i32, i32* @INPUT_PROP_BUTTONPAD, align 4
  %85 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %86 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @__set_bit(i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %83, %78
  %90 = load %struct.hid_input*, %struct.hid_input** %6, align 8
  %91 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %90, i32 0, i32 0
  %92 = load %struct.input_dev*, %struct.input_dev** %91, align 8
  %93 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %92, i32 0, i32 0
  %94 = load %struct.mt_device*, %struct.mt_device** %8, align 8
  %95 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @BITS_TO_LONGS(i64 %96)
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call i32 @devm_kcalloc(i32* %93, i32 %97, i32 8, i32 %98)
  %100 = load %struct.mt_application*, %struct.mt_application** %7, align 8
  %101 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load %struct.mt_application*, %struct.mt_application** %7, align 8
  %103 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %89
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %125

109:                                              ; preds = %89
  %110 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %111 = load %struct.mt_device*, %struct.mt_device** %8, align 8
  %112 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.mt_application*, %struct.mt_application** %7, align 8
  %115 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @input_mt_init_slots(%struct.input_dev* %110, i64 %113, i32 %116)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %109
  %121 = load i32, i32* %11, align 4
  store i32 %121, i32* %4, align 4
  br label %125

122:                                              ; preds = %109
  %123 = load %struct.mt_application*, %struct.mt_application** %7, align 8
  %124 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %123, i32 0, i32 0
  store i32 0, i32* %124, align 4
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %122, %120, %106
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local %struct.mt_device* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @mt_post_parse(%struct.mt_device*, %struct.mt_application*) #1

declare dso_local i32 @mt_post_parse_default_settings(%struct.mt_device*, %struct.mt_application*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i64) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
