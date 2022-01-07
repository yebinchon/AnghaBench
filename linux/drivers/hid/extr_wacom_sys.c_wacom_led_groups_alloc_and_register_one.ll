; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_led_groups_alloc_and_register_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_led_groups_alloc_and_register_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.wacom = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.device*, %struct.wacom_led* }
%struct.wacom_led = type { i32 }
%struct.TYPE_7__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wacom_led_groups_release_one = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.wacom*, i32, i32, i32)* @wacom_led_groups_alloc_and_register_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_led_groups_alloc_and_register_one(%struct.device* %0, %struct.wacom* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.wacom*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wacom_led*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.wacom* %1, %struct.wacom** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.wacom*, %struct.wacom** %8, align 8
  %17 = getelementptr inbounds %struct.wacom, %struct.wacom* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sge i32 %15, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %10, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21, %5
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %141

27:                                               ; preds = %21
  %28 = load %struct.device*, %struct.device** %7, align 8
  %29 = load %struct.wacom*, %struct.wacom** %8, align 8
  %30 = getelementptr inbounds %struct.wacom, %struct.wacom* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i64 %34
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i32 @devres_open_group(%struct.device* %28, %struct.TYPE_9__* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %141

42:                                               ; preds = %27
  %43 = load %struct.device*, %struct.device** %7, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.wacom_led* @devm_kcalloc(%struct.device* %43, i32 %44, i32 4, i32 %45)
  store %struct.wacom_led* %46, %struct.wacom_led** %12, align 8
  %47 = load %struct.wacom_led*, %struct.wacom_led** %12, align 8
  %48 = icmp ne %struct.wacom_led* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %14, align 4
  br label %130

52:                                               ; preds = %42
  %53 = load %struct.wacom_led*, %struct.wacom_led** %12, align 8
  %54 = load %struct.wacom*, %struct.wacom** %8, align 8
  %55 = getelementptr inbounds %struct.wacom, %struct.wacom* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  store %struct.wacom_led* %53, %struct.wacom_led** %61, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.wacom*, %struct.wacom** %8, align 8
  %64 = getelementptr inbounds %struct.wacom, %struct.wacom* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i32 %62, i32* %70, align 8
  store i32 0, i32* %13, align 4
  br label %71

71:                                               ; preds = %90, %52
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %71
  %76 = load %struct.device*, %struct.device** %7, align 8
  %77 = load %struct.wacom*, %struct.wacom** %8, align 8
  %78 = load %struct.wacom_led*, %struct.wacom_led** %12, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %78, i64 %80
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @wacom_led_register_one(%struct.device* %76, %struct.wacom* %77, %struct.wacom_led* %81, i32 %82, i32 %83, i32 %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %75
  br label %130

89:                                               ; preds = %75
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %71

93:                                               ; preds = %71
  %94 = load %struct.device*, %struct.device** %7, align 8
  %95 = load %struct.wacom*, %struct.wacom** %8, align 8
  %96 = getelementptr inbounds %struct.wacom, %struct.wacom* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  store %struct.device* %94, %struct.device** %102, align 8
  %103 = load %struct.device*, %struct.device** %7, align 8
  %104 = load %struct.wacom*, %struct.wacom** %8, align 8
  %105 = getelementptr inbounds %struct.wacom, %struct.wacom* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i64 %109
  %111 = call i32 @devres_close_group(%struct.device* %103, %struct.TYPE_9__* %110)
  %112 = load %struct.wacom*, %struct.wacom** %8, align 8
  %113 = getelementptr inbounds %struct.wacom, %struct.wacom* %112, i32 0, i32 1
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* @wacom_led_groups_release_one, align 4
  %117 = load %struct.wacom*, %struct.wacom** %8, align 8
  %118 = getelementptr inbounds %struct.wacom, %struct.wacom* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i64 %122
  %124 = call i32 @devm_add_action_or_reset(i32* %115, i32 %116, %struct.TYPE_9__* %123)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %93
  %128 = load i32, i32* %14, align 4
  store i32 %128, i32* %6, align 4
  br label %141

129:                                              ; preds = %93
  store i32 0, i32* %6, align 4
  br label %141

130:                                              ; preds = %88, %49
  %131 = load %struct.device*, %struct.device** %7, align 8
  %132 = load %struct.wacom*, %struct.wacom** %8, align 8
  %133 = getelementptr inbounds %struct.wacom, %struct.wacom* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i64 %137
  %139 = call i32 @devres_release_group(%struct.device* %131, %struct.TYPE_9__* %138)
  %140 = load i32, i32* %14, align 4
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %130, %129, %127, %39, %24
  %142 = load i32, i32* %6, align 4
  ret i32 %142
}

declare dso_local i32 @devres_open_group(%struct.device*, %struct.TYPE_9__*, i32) #1

declare dso_local %struct.wacom_led* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @wacom_led_register_one(%struct.device*, %struct.wacom*, %struct.wacom_led*, i32, i32, i32) #1

declare dso_local i32 @devres_close_group(%struct.device*, %struct.TYPE_9__*) #1

declare dso_local i32 @devm_add_action_or_reset(i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @devres_release_group(%struct.device*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
