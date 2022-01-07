; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-gpio-mm.c_gpiomm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-gpio-mm.c_gpiomm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.gpiomm_gpio = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@base = common dso_local global i64* null, align 8
@GPIOMM_EXTENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Unable to lock port addresses (0x%X-0x%X)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@GPIOMM_NGPIO = common dso_local global i32 0, align 4
@gpiomm_names = common dso_local global i32 0, align 4
@gpiomm_gpio_get_direction = common dso_local global i32 0, align 4
@gpiomm_gpio_direction_input = common dso_local global i32 0, align 4
@gpiomm_gpio_direction_output = common dso_local global i32 0, align 4
@gpiomm_gpio_get = common dso_local global i32 0, align 4
@gpiomm_gpio_get_multiple = common dso_local global i32 0, align 4
@gpiomm_gpio_set = common dso_local global i32 0, align 4
@gpiomm_gpio_set_multiple = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"GPIO registering failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @gpiomm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpiomm_probe(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpiomm_gpio*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call i8* @dev_name(%struct.device* %9)
  store i8* %10, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.gpiomm_gpio* @devm_kzalloc(%struct.device* %11, i32 80, i32 %12)
  store %struct.gpiomm_gpio* %13, %struct.gpiomm_gpio** %6, align 8
  %14 = load %struct.gpiomm_gpio*, %struct.gpiomm_gpio** %6, align 8
  %15 = icmp ne %struct.gpiomm_gpio* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %178

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load i64*, i64** @base, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @GPIOMM_EXTENT, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @devm_request_region(%struct.device* %20, i64 %25, i64 %26, i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %19
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load i64*, i64** @base, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i64*, i64** @base, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @GPIOMM_EXTENT, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %31, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %37, i64 %44)
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %178

48:                                               ; preds = %19
  %49 = load i8*, i8** %7, align 8
  %50 = load %struct.gpiomm_gpio*, %struct.gpiomm_gpio** %6, align 8
  %51 = getelementptr inbounds %struct.gpiomm_gpio, %struct.gpiomm_gpio* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i8* %49, i8** %52, align 8
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = load %struct.gpiomm_gpio*, %struct.gpiomm_gpio** %6, align 8
  %55 = getelementptr inbounds %struct.gpiomm_gpio, %struct.gpiomm_gpio* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 12
  store %struct.device* %53, %struct.device** %56, align 8
  %57 = load i32, i32* @THIS_MODULE, align 4
  %58 = load %struct.gpiomm_gpio*, %struct.gpiomm_gpio** %6, align 8
  %59 = getelementptr inbounds %struct.gpiomm_gpio, %struct.gpiomm_gpio* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 11
  store i32 %57, i32* %60, align 8
  %61 = load %struct.gpiomm_gpio*, %struct.gpiomm_gpio** %6, align 8
  %62 = getelementptr inbounds %struct.gpiomm_gpio, %struct.gpiomm_gpio* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32 -1, i32* %63, align 8
  %64 = load i32, i32* @GPIOMM_NGPIO, align 4
  %65 = load %struct.gpiomm_gpio*, %struct.gpiomm_gpio** %6, align 8
  %66 = getelementptr inbounds %struct.gpiomm_gpio, %struct.gpiomm_gpio* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 10
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* @gpiomm_names, align 4
  %69 = load %struct.gpiomm_gpio*, %struct.gpiomm_gpio** %6, align 8
  %70 = getelementptr inbounds %struct.gpiomm_gpio, %struct.gpiomm_gpio* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 9
  store i32 %68, i32* %71, align 8
  %72 = load i32, i32* @gpiomm_gpio_get_direction, align 4
  %73 = load %struct.gpiomm_gpio*, %struct.gpiomm_gpio** %6, align 8
  %74 = getelementptr inbounds %struct.gpiomm_gpio, %struct.gpiomm_gpio* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 8
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* @gpiomm_gpio_direction_input, align 4
  %77 = load %struct.gpiomm_gpio*, %struct.gpiomm_gpio** %6, align 8
  %78 = getelementptr inbounds %struct.gpiomm_gpio, %struct.gpiomm_gpio* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 7
  store i32 %76, i32* %79, align 8
  %80 = load i32, i32* @gpiomm_gpio_direction_output, align 4
  %81 = load %struct.gpiomm_gpio*, %struct.gpiomm_gpio** %6, align 8
  %82 = getelementptr inbounds %struct.gpiomm_gpio, %struct.gpiomm_gpio* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 6
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* @gpiomm_gpio_get, align 4
  %85 = load %struct.gpiomm_gpio*, %struct.gpiomm_gpio** %6, align 8
  %86 = getelementptr inbounds %struct.gpiomm_gpio, %struct.gpiomm_gpio* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 5
  store i32 %84, i32* %87, align 8
  %88 = load i32, i32* @gpiomm_gpio_get_multiple, align 4
  %89 = load %struct.gpiomm_gpio*, %struct.gpiomm_gpio** %6, align 8
  %90 = getelementptr inbounds %struct.gpiomm_gpio, %struct.gpiomm_gpio* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 4
  store i32 %88, i32* %91, align 4
  %92 = load i32, i32* @gpiomm_gpio_set, align 4
  %93 = load %struct.gpiomm_gpio*, %struct.gpiomm_gpio** %6, align 8
  %94 = getelementptr inbounds %struct.gpiomm_gpio, %struct.gpiomm_gpio* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 3
  store i32 %92, i32* %95, align 8
  %96 = load i32, i32* @gpiomm_gpio_set_multiple, align 4
  %97 = load %struct.gpiomm_gpio*, %struct.gpiomm_gpio** %6, align 8
  %98 = getelementptr inbounds %struct.gpiomm_gpio, %struct.gpiomm_gpio* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 4
  %100 = load i64*, i64** @base, align 8
  %101 = load i32, i32* %5, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.gpiomm_gpio*, %struct.gpiomm_gpio** %6, align 8
  %106 = getelementptr inbounds %struct.gpiomm_gpio, %struct.gpiomm_gpio* %105, i32 0, i32 2
  store i64 %104, i64* %106, align 8
  %107 = load %struct.gpiomm_gpio*, %struct.gpiomm_gpio** %6, align 8
  %108 = getelementptr inbounds %struct.gpiomm_gpio, %struct.gpiomm_gpio* %107, i32 0, i32 1
  %109 = call i32 @spin_lock_init(i32* %108)
  %110 = load %struct.device*, %struct.device** %4, align 8
  %111 = load %struct.gpiomm_gpio*, %struct.gpiomm_gpio** %6, align 8
  %112 = getelementptr inbounds %struct.gpiomm_gpio, %struct.gpiomm_gpio* %111, i32 0, i32 0
  %113 = load %struct.gpiomm_gpio*, %struct.gpiomm_gpio** %6, align 8
  %114 = call i32 @devm_gpiochip_add_data(%struct.device* %110, %struct.TYPE_2__* %112, %struct.gpiomm_gpio* %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %48
  %118 = load %struct.device*, %struct.device** %4, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %118, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %3, align 4
  br label %178

122:                                              ; preds = %48
  %123 = load i64*, i64** @base, align 8
  %124 = load i32, i32* %5, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, 3
  %129 = call i32 @outb(i32 128, i64 %128)
  %130 = load i64*, i64** @base, align 8
  %131 = load i32, i32* %5, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @outb(i32 0, i64 %134)
  %136 = load i64*, i64** @base, align 8
  %137 = load i32, i32* %5, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %140, 1
  %142 = call i32 @outb(i32 0, i64 %141)
  %143 = load i64*, i64** @base, align 8
  %144 = load i32, i32* %5, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, 2
  %149 = call i32 @outb(i32 0, i64 %148)
  %150 = load i64*, i64** @base, align 8
  %151 = load i32, i32* %5, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, 7
  %156 = call i32 @outb(i32 128, i64 %155)
  %157 = load i64*, i64** @base, align 8
  %158 = load i32, i32* %5, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %161, 4
  %163 = call i32 @outb(i32 0, i64 %162)
  %164 = load i64*, i64** @base, align 8
  %165 = load i32, i32* %5, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %164, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %168, 5
  %170 = call i32 @outb(i32 0, i64 %169)
  %171 = load i64*, i64** @base, align 8
  %172 = load i32, i32* %5, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %175, 6
  %177 = call i32 @outb(i32 0, i64 %176)
  store i32 0, i32* %3, align 4
  br label %178

178:                                              ; preds = %122, %117, %30, %16
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local %struct.gpiomm_gpio* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_request_region(%struct.device*, i64, i64, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.TYPE_2__*, %struct.gpiomm_gpio*) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
