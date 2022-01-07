; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_led_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_led_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.max77693_dev = type { i32 }
%struct.max77693_led_device = type { i32, i64, %struct.max77693_sub_led*, i32, i32, %struct.platform_device* }
%struct.max77693_sub_led = type { i32, i32 }
%struct.device_node = type { i32 }
%struct.max77693_led_config_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MODE_FLASH_MASK = common dso_local global i32 0, align 4
@FLED1 = common dso_local global i64 0, align 8
@FLED2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max77693_led_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_led_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.max77693_dev*, align 8
  %6 = alloca %struct.max77693_led_device*, align 8
  %7 = alloca %struct.max77693_sub_led*, align 8
  %8 = alloca [2 x %struct.device_node*], align 16
  %9 = alloca %struct.max77693_led_config_data, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.max77693_dev* @dev_get_drvdata(i32 %17)
  store %struct.max77693_dev* %18, %struct.max77693_dev** %5, align 8
  %19 = bitcast [2 x %struct.device_node*]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 16, i1 false)
  %20 = bitcast %struct.max77693_led_config_data* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 4, i1 false)
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.max77693_led_device* @devm_kzalloc(%struct.device* %21, i32 40, i32 %22)
  store %struct.max77693_led_device* %23, %struct.max77693_led_device** %6, align 8
  %24 = load %struct.max77693_led_device*, %struct.max77693_led_device** %6, align 8
  %25 = icmp ne %struct.max77693_led_device* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %159

29:                                               ; preds = %1
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load %struct.max77693_led_device*, %struct.max77693_led_device** %6, align 8
  %32 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %31, i32 0, i32 5
  store %struct.platform_device* %30, %struct.platform_device** %32, align 8
  %33 = load %struct.max77693_dev*, %struct.max77693_dev** %5, align 8
  %34 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.max77693_led_device*, %struct.max77693_led_device** %6, align 8
  %37 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @MODE_FLASH_MASK, align 4
  %39 = load %struct.max77693_led_device*, %struct.max77693_led_device** %6, align 8
  %40 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.max77693_led_device*, %struct.max77693_led_device** %6, align 8
  %42 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %41, i32 0, i32 2
  %43 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %42, align 8
  store %struct.max77693_sub_led* %43, %struct.max77693_sub_led** %7, align 8
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = load %struct.max77693_led_device*, %struct.max77693_led_device** %6, align 8
  %46 = call i32 @platform_set_drvdata(%struct.platform_device* %44, %struct.max77693_led_device* %45)
  %47 = load %struct.max77693_led_device*, %struct.max77693_led_device** %6, align 8
  %48 = getelementptr inbounds [2 x %struct.device_node*], [2 x %struct.device_node*]* %8, i64 0, i64 0
  %49 = call i32 @max77693_led_get_configuration(%struct.max77693_led_device* %47, %struct.max77693_led_config_data* %9, %struct.device_node** %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %29
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %2, align 4
  br label %159

54:                                               ; preds = %29
  %55 = load %struct.max77693_led_device*, %struct.max77693_led_device** %6, align 8
  %56 = call i32 @max77693_setup(%struct.max77693_led_device* %55, %struct.max77693_led_config_data* %9)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %2, align 4
  br label %159

61:                                               ; preds = %54
  %62 = load %struct.max77693_led_device*, %struct.max77693_led_device** %6, align 8
  %63 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %62, i32 0, i32 0
  %64 = call i32 @mutex_init(i32* %63)
  %65 = load %struct.max77693_led_device*, %struct.max77693_led_device** %6, align 8
  %66 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %61
  %70 = load %struct.max77693_led_device*, %struct.max77693_led_device** %6, align 8
  %71 = load i64, i64* @FLED1, align 8
  %72 = call i64 @max77693_fled_used(%struct.max77693_led_device* %70, i64 %71)
  %73 = icmp ne i64 %72, 0
  br label %74

74:                                               ; preds = %69, %61
  %75 = phi i1 [ true, %61 ], [ %73, %69 ]
  %76 = zext i1 %75 to i32
  %77 = load i64, i64* @FLED1, align 8
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %77
  store i32 %76, i32* %78, align 4
  %79 = load %struct.max77693_led_device*, %struct.max77693_led_device** %6, align 8
  %80 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %74
  %84 = load %struct.max77693_led_device*, %struct.max77693_led_device** %6, align 8
  %85 = load i64, i64* @FLED2, align 8
  %86 = call i64 @max77693_fled_used(%struct.max77693_led_device* %84, i64 %85)
  %87 = icmp ne i64 %86, 0
  br label %88

88:                                               ; preds = %83, %74
  %89 = phi i1 [ false, %74 ], [ %87, %83 ]
  %90 = zext i1 %89 to i32
  %91 = load i64, i64* @FLED2, align 8
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %91
  store i32 %90, i32* %92, align 4
  %93 = load i64, i64* @FLED1, align 8
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %132, %88
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* @FLED2, align 8
  %99 = icmp ule i64 %97, %98
  br i1 %99, label %100, label %135

100:                                              ; preds = %95
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  br label %132

107:                                              ; preds = %100
  %108 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %7, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %108, i64 %110
  %112 = call i32 @max77693_init_fled_cdev(%struct.max77693_sub_led* %111, %struct.max77693_led_config_data* %9)
  %113 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %7, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %113, i64 %115
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [2 x %struct.device_node*], [2 x %struct.device_node*]* %8, i64 0, i64 %118
  %120 = load %struct.device_node*, %struct.device_node** %119, align 8
  %121 = call i32 @max77693_register_led(%struct.max77693_sub_led* %116, %struct.max77693_led_config_data* %9, %struct.device_node* %120)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %107
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = load i64, i64* @FLED2, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %136

130:                                              ; preds = %124
  br label %154

131:                                              ; preds = %107
  br label %132

132:                                              ; preds = %131, %106
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %95

135:                                              ; preds = %95
  store i32 0, i32* %2, align 4
  br label %159

136:                                              ; preds = %129
  %137 = load i64, i64* @FLED1, align 8
  %138 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %136
  br label %154

142:                                              ; preds = %136
  %143 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %7, align 8
  %144 = load i64, i64* @FLED1, align 8
  %145 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %143, i64 %144
  %146 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @v4l2_flash_release(i32 %147)
  %149 = load %struct.max77693_sub_led*, %struct.max77693_sub_led** %7, align 8
  %150 = load i64, i64* @FLED1, align 8
  %151 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %149, i64 %150
  %152 = getelementptr inbounds %struct.max77693_sub_led, %struct.max77693_sub_led* %151, i32 0, i32 0
  %153 = call i32 @led_classdev_flash_unregister(i32* %152)
  br label %154

154:                                              ; preds = %142, %141, %130
  %155 = load %struct.max77693_led_device*, %struct.max77693_led_device** %6, align 8
  %156 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %155, i32 0, i32 0
  %157 = call i32 @mutex_destroy(i32* %156)
  %158 = load i32, i32* %12, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %154, %135, %59, %52, %26
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.max77693_dev* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.max77693_led_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.max77693_led_device*) #1

declare dso_local i32 @max77693_led_get_configuration(%struct.max77693_led_device*, %struct.max77693_led_config_data*, %struct.device_node**) #1

declare dso_local i32 @max77693_setup(%struct.max77693_led_device*, %struct.max77693_led_config_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @max77693_fled_used(%struct.max77693_led_device*, i64) #1

declare dso_local i32 @max77693_init_fled_cdev(%struct.max77693_sub_led*, %struct.max77693_led_config_data*) #1

declare dso_local i32 @max77693_register_led(%struct.max77693_sub_led*, %struct.max77693_led_config_data*, %struct.device_node*) #1

declare dso_local i32 @v4l2_flash_release(i32) #1

declare dso_local i32 @led_classdev_flash_unregister(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
