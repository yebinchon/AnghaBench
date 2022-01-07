; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-f7188x.c_f7188x_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-f7188x.c_f7188x_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.f7188x_sio = type { i32 }
%struct.f7188x_gpio_data = type { i32, %struct.f7188x_gpio_bank*, %struct.f7188x_sio* }
%struct.f7188x_gpio_bank = type { %struct.TYPE_2__, %struct.f7188x_gpio_data* }
%struct.TYPE_2__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@f71869_gpio_bank = common dso_local global i8* null, align 8
@f71869a_gpio_bank = common dso_local global i8* null, align 8
@f71882_gpio_bank = common dso_local global i8* null, align 8
@f71889a_gpio_bank = common dso_local global i8* null, align 8
@f71889_gpio_bank = common dso_local global i8* null, align 8
@f81866_gpio_bank = common dso_local global i8* null, align 8
@f81804_gpio_bank = common dso_local global i8* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to register gpiochip %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @f7188x_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f7188x_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.f7188x_sio*, align 8
  %7 = alloca %struct.f7188x_gpio_data*, align 8
  %8 = alloca %struct.f7188x_gpio_bank*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.f7188x_sio* @dev_get_platdata(i32* %10)
  store %struct.f7188x_sio* %11, %struct.f7188x_sio** %6, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.f7188x_gpio_data* @devm_kzalloc(i32* %13, i32 24, i32 %14)
  store %struct.f7188x_gpio_data* %15, %struct.f7188x_gpio_data** %7, align 8
  %16 = load %struct.f7188x_gpio_data*, %struct.f7188x_gpio_data** %7, align 8
  %17 = icmp ne %struct.f7188x_gpio_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %146

21:                                               ; preds = %1
  %22 = load %struct.f7188x_sio*, %struct.f7188x_sio** %6, align 8
  %23 = getelementptr inbounds %struct.f7188x_sio, %struct.f7188x_sio* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %95 [
    i32 134, label %25
    i32 133, label %35
    i32 132, label %45
    i32 131, label %55
    i32 130, label %65
    i32 128, label %75
    i32 129, label %85
  ]

25:                                               ; preds = %21
  %26 = load i8*, i8** @f71869_gpio_bank, align 8
  %27 = call i8* @ARRAY_SIZE(i8* %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.f7188x_gpio_data*, %struct.f7188x_gpio_data** %7, align 8
  %30 = getelementptr inbounds %struct.f7188x_gpio_data, %struct.f7188x_gpio_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i8*, i8** @f71869_gpio_bank, align 8
  %32 = bitcast i8* %31 to %struct.f7188x_gpio_bank*
  %33 = load %struct.f7188x_gpio_data*, %struct.f7188x_gpio_data** %7, align 8
  %34 = getelementptr inbounds %struct.f7188x_gpio_data, %struct.f7188x_gpio_data* %33, i32 0, i32 1
  store %struct.f7188x_gpio_bank* %32, %struct.f7188x_gpio_bank** %34, align 8
  br label %98

35:                                               ; preds = %21
  %36 = load i8*, i8** @f71869a_gpio_bank, align 8
  %37 = call i8* @ARRAY_SIZE(i8* %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.f7188x_gpio_data*, %struct.f7188x_gpio_data** %7, align 8
  %40 = getelementptr inbounds %struct.f7188x_gpio_data, %struct.f7188x_gpio_data* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i8*, i8** @f71869a_gpio_bank, align 8
  %42 = bitcast i8* %41 to %struct.f7188x_gpio_bank*
  %43 = load %struct.f7188x_gpio_data*, %struct.f7188x_gpio_data** %7, align 8
  %44 = getelementptr inbounds %struct.f7188x_gpio_data, %struct.f7188x_gpio_data* %43, i32 0, i32 1
  store %struct.f7188x_gpio_bank* %42, %struct.f7188x_gpio_bank** %44, align 8
  br label %98

45:                                               ; preds = %21
  %46 = load i8*, i8** @f71882_gpio_bank, align 8
  %47 = call i8* @ARRAY_SIZE(i8* %46)
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.f7188x_gpio_data*, %struct.f7188x_gpio_data** %7, align 8
  %50 = getelementptr inbounds %struct.f7188x_gpio_data, %struct.f7188x_gpio_data* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i8*, i8** @f71882_gpio_bank, align 8
  %52 = bitcast i8* %51 to %struct.f7188x_gpio_bank*
  %53 = load %struct.f7188x_gpio_data*, %struct.f7188x_gpio_data** %7, align 8
  %54 = getelementptr inbounds %struct.f7188x_gpio_data, %struct.f7188x_gpio_data* %53, i32 0, i32 1
  store %struct.f7188x_gpio_bank* %52, %struct.f7188x_gpio_bank** %54, align 8
  br label %98

55:                                               ; preds = %21
  %56 = load i8*, i8** @f71889a_gpio_bank, align 8
  %57 = call i8* @ARRAY_SIZE(i8* %56)
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.f7188x_gpio_data*, %struct.f7188x_gpio_data** %7, align 8
  %60 = getelementptr inbounds %struct.f7188x_gpio_data, %struct.f7188x_gpio_data* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i8*, i8** @f71889a_gpio_bank, align 8
  %62 = bitcast i8* %61 to %struct.f7188x_gpio_bank*
  %63 = load %struct.f7188x_gpio_data*, %struct.f7188x_gpio_data** %7, align 8
  %64 = getelementptr inbounds %struct.f7188x_gpio_data, %struct.f7188x_gpio_data* %63, i32 0, i32 1
  store %struct.f7188x_gpio_bank* %62, %struct.f7188x_gpio_bank** %64, align 8
  br label %98

65:                                               ; preds = %21
  %66 = load i8*, i8** @f71889_gpio_bank, align 8
  %67 = call i8* @ARRAY_SIZE(i8* %66)
  %68 = ptrtoint i8* %67 to i32
  %69 = load %struct.f7188x_gpio_data*, %struct.f7188x_gpio_data** %7, align 8
  %70 = getelementptr inbounds %struct.f7188x_gpio_data, %struct.f7188x_gpio_data* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i8*, i8** @f71889_gpio_bank, align 8
  %72 = bitcast i8* %71 to %struct.f7188x_gpio_bank*
  %73 = load %struct.f7188x_gpio_data*, %struct.f7188x_gpio_data** %7, align 8
  %74 = getelementptr inbounds %struct.f7188x_gpio_data, %struct.f7188x_gpio_data* %73, i32 0, i32 1
  store %struct.f7188x_gpio_bank* %72, %struct.f7188x_gpio_bank** %74, align 8
  br label %98

75:                                               ; preds = %21
  %76 = load i8*, i8** @f81866_gpio_bank, align 8
  %77 = call i8* @ARRAY_SIZE(i8* %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.f7188x_gpio_data*, %struct.f7188x_gpio_data** %7, align 8
  %80 = getelementptr inbounds %struct.f7188x_gpio_data, %struct.f7188x_gpio_data* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i8*, i8** @f81866_gpio_bank, align 8
  %82 = bitcast i8* %81 to %struct.f7188x_gpio_bank*
  %83 = load %struct.f7188x_gpio_data*, %struct.f7188x_gpio_data** %7, align 8
  %84 = getelementptr inbounds %struct.f7188x_gpio_data, %struct.f7188x_gpio_data* %83, i32 0, i32 1
  store %struct.f7188x_gpio_bank* %82, %struct.f7188x_gpio_bank** %84, align 8
  br label %98

85:                                               ; preds = %21
  %86 = load i8*, i8** @f81804_gpio_bank, align 8
  %87 = call i8* @ARRAY_SIZE(i8* %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.f7188x_gpio_data*, %struct.f7188x_gpio_data** %7, align 8
  %90 = getelementptr inbounds %struct.f7188x_gpio_data, %struct.f7188x_gpio_data* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load i8*, i8** @f81804_gpio_bank, align 8
  %92 = bitcast i8* %91 to %struct.f7188x_gpio_bank*
  %93 = load %struct.f7188x_gpio_data*, %struct.f7188x_gpio_data** %7, align 8
  %94 = getelementptr inbounds %struct.f7188x_gpio_data, %struct.f7188x_gpio_data* %93, i32 0, i32 1
  store %struct.f7188x_gpio_bank* %92, %struct.f7188x_gpio_bank** %94, align 8
  br label %98

95:                                               ; preds = %21
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %146

98:                                               ; preds = %85, %75, %65, %55, %45, %35, %25
  %99 = load %struct.f7188x_sio*, %struct.f7188x_sio** %6, align 8
  %100 = load %struct.f7188x_gpio_data*, %struct.f7188x_gpio_data** %7, align 8
  %101 = getelementptr inbounds %struct.f7188x_gpio_data, %struct.f7188x_gpio_data* %100, i32 0, i32 2
  store %struct.f7188x_sio* %99, %struct.f7188x_sio** %101, align 8
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = load %struct.f7188x_gpio_data*, %struct.f7188x_gpio_data** %7, align 8
  %104 = call i32 @platform_set_drvdata(%struct.platform_device* %102, %struct.f7188x_gpio_data* %103)
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %142, %98
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.f7188x_gpio_data*, %struct.f7188x_gpio_data** %7, align 8
  %108 = getelementptr inbounds %struct.f7188x_gpio_data, %struct.f7188x_gpio_data* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %145

111:                                              ; preds = %105
  %112 = load %struct.f7188x_gpio_data*, %struct.f7188x_gpio_data** %7, align 8
  %113 = getelementptr inbounds %struct.f7188x_gpio_data, %struct.f7188x_gpio_data* %112, i32 0, i32 1
  %114 = load %struct.f7188x_gpio_bank*, %struct.f7188x_gpio_bank** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.f7188x_gpio_bank, %struct.f7188x_gpio_bank* %114, i64 %116
  store %struct.f7188x_gpio_bank* %117, %struct.f7188x_gpio_bank** %8, align 8
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = load %struct.f7188x_gpio_bank*, %struct.f7188x_gpio_bank** %8, align 8
  %121 = getelementptr inbounds %struct.f7188x_gpio_bank, %struct.f7188x_gpio_bank* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  store i32* %119, i32** %122, align 8
  %123 = load %struct.f7188x_gpio_data*, %struct.f7188x_gpio_data** %7, align 8
  %124 = load %struct.f7188x_gpio_bank*, %struct.f7188x_gpio_bank** %8, align 8
  %125 = getelementptr inbounds %struct.f7188x_gpio_bank, %struct.f7188x_gpio_bank* %124, i32 0, i32 1
  store %struct.f7188x_gpio_data* %123, %struct.f7188x_gpio_data** %125, align 8
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 0
  %128 = load %struct.f7188x_gpio_bank*, %struct.f7188x_gpio_bank** %8, align 8
  %129 = getelementptr inbounds %struct.f7188x_gpio_bank, %struct.f7188x_gpio_bank* %128, i32 0, i32 0
  %130 = load %struct.f7188x_gpio_bank*, %struct.f7188x_gpio_bank** %8, align 8
  %131 = call i32 @devm_gpiochip_add_data(i32* %127, %struct.TYPE_2__* %129, %struct.f7188x_gpio_bank* %130)
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %4, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %111
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 0
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @dev_err(i32* %136, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %137, i32 %138)
  %140 = load i32, i32* %4, align 4
  store i32 %140, i32* %2, align 4
  br label %146

141:                                              ; preds = %111
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %5, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %5, align 4
  br label %105

145:                                              ; preds = %105
  store i32 0, i32* %2, align 4
  br label %146

146:                                              ; preds = %145, %134, %95, %18
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.f7188x_sio* @dev_get_platdata(i32*) #1

declare dso_local %struct.f7188x_gpio_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.f7188x_gpio_data*) #1

declare dso_local i32 @devm_gpiochip_add_data(i32*, %struct.TYPE_2__*, %struct.f7188x_gpio_bank*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
