; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-syscon.c_syscon_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-syscon.c_syscon_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i64 }
%struct.syscon_gpio_priv = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.device* }
%struct.TYPE_3__ = type { i32, i64, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"gpio,syscon-dev\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"can't read the data register offset!\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"can't read the dir register offset!\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@syscon_gpio_get = common dso_local global i32 0, align 4
@GPIO_SYSCON_FEAT_IN = common dso_local global i32 0, align 4
@syscon_gpio_dir_in = common dso_local global i32 0, align 4
@GPIO_SYSCON_FEAT_OUT = common dso_local global i32 0, align 4
@syscon_gpio_set = common dso_local global i32 0, align 4
@syscon_gpio_dir_out = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @syscon_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @syscon_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.syscon_gpio_priv*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %6, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.syscon_gpio_priv* @devm_kzalloc(%struct.device* %13, i32 64, i32 %14)
  store %struct.syscon_gpio_priv* %15, %struct.syscon_gpio_priv** %5, align 8
  %16 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %17 = icmp ne %struct.syscon_gpio_priv* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %196

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call %struct.TYPE_3__* @of_device_get_match_data(%struct.device* %22)
  %24 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %25 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %24, i32 0, i32 3
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %25, align 8
  %26 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %27 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %26, i32 0, i32 3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %21
  %33 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %34 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %33, i32 0, i32 3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @syscon_regmap_lookup_by_compatible(i64 %37)
  %39 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %40 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %42 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @IS_ERR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %32
  %47 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %48 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @PTR_ERR(i32 %49)
  store i32 %50, i32* %2, align 4
  br label %196

51:                                               ; preds = %32
  br label %114

52:                                               ; preds = %21
  %53 = load %struct.device_node*, %struct.device_node** %6, align 8
  %54 = call i32 @syscon_regmap_lookup_by_phandle(%struct.device_node* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %56 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %58 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @IS_ERR(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %52
  %63 = load %struct.device_node*, %struct.device_node** %6, align 8
  %64 = getelementptr inbounds %struct.device_node, %struct.device_node* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.device_node*, %struct.device_node** %6, align 8
  %69 = getelementptr inbounds %struct.device_node, %struct.device_node* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @syscon_node_to_regmap(i64 %70)
  %72 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %73 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %67, %62, %52
  %75 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %76 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @IS_ERR(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %82 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @PTR_ERR(i32 %83)
  store i32 %84, i32* %2, align 4
  br label %196

85:                                               ; preds = %74
  %86 = load %struct.device_node*, %struct.device_node** %6, align 8
  %87 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %88 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %87, i32 0, i32 0
  %89 = call i32 @of_property_read_u32_index(%struct.device_node* %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 1, i32* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load %struct.device*, %struct.device** %4, align 8
  %94 = call i32 @dev_err(%struct.device* %93, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %85
  %96 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %97 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = shl i32 %98, 3
  store i32 %99, i32* %97, align 8
  %100 = load %struct.device_node*, %struct.device_node** %6, align 8
  %101 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %102 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %101, i32 0, i32 1
  %103 = call i32 @of_property_read_u32_index(%struct.device_node* %100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 2, i32* %102)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %95
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = call i32 @dev_dbg(%struct.device* %107, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %95
  %110 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %111 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 3
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %109, %51
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %117 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 8
  store %struct.device* %115, %struct.device** %118, align 8
  %119 = load i32, i32* @THIS_MODULE, align 4
  %120 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %121 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 7
  store i32 %119, i32* %122, align 4
  %123 = load %struct.device*, %struct.device** %4, align 8
  %124 = call i32 @dev_name(%struct.device* %123)
  %125 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %126 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 6
  store i32 %124, i32* %127, align 8
  %128 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %129 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  store i32 -1, i32* %130, align 8
  %131 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %132 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %131, i32 0, i32 3
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %137 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 5
  store i32 %135, i32* %138, align 4
  %139 = load i32, i32* @syscon_gpio_get, align 4
  %140 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %141 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 4
  store i32 %139, i32* %142, align 8
  %143 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %144 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %143, i32 0, i32 3
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @GPIO_SYSCON_FEAT_IN, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %114
  %152 = load i32, i32* @syscon_gpio_dir_in, align 4
  %153 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %154 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 3
  store i32 %152, i32* %155, align 4
  br label %156

156:                                              ; preds = %151, %114
  %157 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %158 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %157, i32 0, i32 3
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @GPIO_SYSCON_FEAT_OUT, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %186

165:                                              ; preds = %156
  %166 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %167 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %166, i32 0, i32 3
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %165
  br label %176

173:                                              ; preds = %165
  %174 = load i32, i32* @syscon_gpio_set, align 4
  %175 = sext i32 %174 to i64
  br label %176

176:                                              ; preds = %173, %172
  %177 = phi i64 [ %170, %172 ], [ %175, %173 ]
  %178 = trunc i64 %177 to i32
  %179 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %180 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 2
  store i32 %178, i32* %181, align 8
  %182 = load i32, i32* @syscon_gpio_dir_out, align 4
  %183 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %184 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  store i32 %182, i32* %185, align 4
  br label %186

186:                                              ; preds = %176, %156
  %187 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %188 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %189 = call i32 @platform_set_drvdata(%struct.platform_device* %187, %struct.syscon_gpio_priv* %188)
  %190 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %191 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %190, i32 0, i32 0
  %192 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %193 = getelementptr inbounds %struct.syscon_gpio_priv, %struct.syscon_gpio_priv* %192, i32 0, i32 2
  %194 = load %struct.syscon_gpio_priv*, %struct.syscon_gpio_priv** %5, align 8
  %195 = call i32 @devm_gpiochip_add_data(%struct.device* %191, %struct.TYPE_4__* %193, %struct.syscon_gpio_priv* %194)
  store i32 %195, i32* %2, align 4
  br label %196

196:                                              ; preds = %186, %80, %46, %18
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local %struct.syscon_gpio_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_3__* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @syscon_regmap_lookup_by_compatible(i64) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i32 @syscon_node_to_regmap(i64) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.syscon_gpio_priv*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.TYPE_4__*, %struct.syscon_gpio_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
