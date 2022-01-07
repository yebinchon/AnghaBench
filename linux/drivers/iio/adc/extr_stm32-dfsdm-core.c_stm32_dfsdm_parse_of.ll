; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-core.c_stm32_dfsdm_parse_of.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-core.c_stm32_dfsdm_parse_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.dfsdm_priv = type { i64, %struct.TYPE_6__, i32*, i32* }
%struct.TYPE_6__ = type { i64, i32*, i32 }
%struct.resource = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to get memory resource\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"dfsdm\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to get clock (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"spi-max-frequency\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"spi-max-frequency not achievable\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"SPI clock not accurate\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"%ld = %d * %d + %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.dfsdm_priv*)* @stm32_dfsdm_parse_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_dfsdm_parse_of(%struct.platform_device* %0, %struct.dfsdm_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.dfsdm_priv*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.dfsdm_priv* %1, %struct.dfsdm_priv** %5, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %6, align 8
  %17 = load %struct.device_node*, %struct.device_node** %6, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %179

22:                                               ; preds = %2
  %23 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %24 = load i32, i32* @IORESOURCE_MEM, align 4
  %25 = call %struct.resource* @platform_get_resource(%struct.platform_device* %23, i32 %24, i32 0)
  store %struct.resource* %25, %struct.resource** %7, align 8
  %26 = load %struct.resource*, %struct.resource** %7, align 8
  %27 = icmp ne %struct.resource* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %179

34:                                               ; preds = %22
  %35 = load %struct.resource*, %struct.resource** %7, align 8
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dfsdm_priv*, %struct.dfsdm_priv** %5, align 8
  %39 = getelementptr inbounds %struct.dfsdm_priv, %struct.dfsdm_priv* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load %struct.resource*, %struct.resource** %7, align 8
  %44 = call i32* @devm_ioremap_resource(%struct.TYPE_7__* %42, %struct.resource* %43)
  %45 = load %struct.dfsdm_priv*, %struct.dfsdm_priv** %5, align 8
  %46 = getelementptr inbounds %struct.dfsdm_priv, %struct.dfsdm_priv* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i32* %44, i32** %47, align 8
  %48 = load %struct.dfsdm_priv*, %struct.dfsdm_priv** %5, align 8
  %49 = getelementptr inbounds %struct.dfsdm_priv, %struct.dfsdm_priv* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i64 @IS_ERR(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %34
  %55 = load %struct.dfsdm_priv*, %struct.dfsdm_priv** %5, align 8
  %56 = getelementptr inbounds %struct.dfsdm_priv, %struct.dfsdm_priv* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @PTR_ERR(i32* %58)
  store i32 %59, i32* %3, align 4
  br label %179

60:                                               ; preds = %34
  %61 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i8* @devm_clk_get(%struct.TYPE_7__* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %64 = bitcast i8* %63 to i32*
  %65 = load %struct.dfsdm_priv*, %struct.dfsdm_priv** %5, align 8
  %66 = getelementptr inbounds %struct.dfsdm_priv, %struct.dfsdm_priv* %65, i32 0, i32 2
  store i32* %64, i32** %66, align 8
  %67 = load %struct.dfsdm_priv*, %struct.dfsdm_priv** %5, align 8
  %68 = getelementptr inbounds %struct.dfsdm_priv, %struct.dfsdm_priv* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = call i64 @IS_ERR(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %60
  %73 = load %struct.dfsdm_priv*, %struct.dfsdm_priv** %5, align 8
  %74 = getelementptr inbounds %struct.dfsdm_priv, %struct.dfsdm_priv* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @PTR_ERR(i32* %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @EPROBE_DEFER, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp ne i32 %77, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %72
  %82 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = load i32, i32* %12, align 4
  %85 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %81, %72
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %3, align 4
  br label %179

88:                                               ; preds = %60
  %89 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i8* @devm_clk_get(%struct.TYPE_7__* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %92 = bitcast i8* %91 to i32*
  %93 = load %struct.dfsdm_priv*, %struct.dfsdm_priv** %5, align 8
  %94 = getelementptr inbounds %struct.dfsdm_priv, %struct.dfsdm_priv* %93, i32 0, i32 3
  store i32* %92, i32** %94, align 8
  %95 = load %struct.dfsdm_priv*, %struct.dfsdm_priv** %5, align 8
  %96 = getelementptr inbounds %struct.dfsdm_priv, %struct.dfsdm_priv* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = call i64 @IS_ERR(i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %88
  %101 = load %struct.dfsdm_priv*, %struct.dfsdm_priv** %5, align 8
  %102 = getelementptr inbounds %struct.dfsdm_priv, %struct.dfsdm_priv* %101, i32 0, i32 3
  store i32* null, i32** %102, align 8
  br label %103

103:                                              ; preds = %100, %88
  %104 = load %struct.dfsdm_priv*, %struct.dfsdm_priv** %5, align 8
  %105 = getelementptr inbounds %struct.dfsdm_priv, %struct.dfsdm_priv* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.dfsdm_priv*, %struct.dfsdm_priv** %5, align 8
  %110 = getelementptr inbounds %struct.dfsdm_priv, %struct.dfsdm_priv* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = call i64 @clk_get_rate(i32* %111)
  store i64 %112, i64* %8, align 8
  br label %118

113:                                              ; preds = %103
  %114 = load %struct.dfsdm_priv*, %struct.dfsdm_priv** %5, align 8
  %115 = getelementptr inbounds %struct.dfsdm_priv, %struct.dfsdm_priv* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = call i64 @clk_get_rate(i32* %116)
  store i64 %117, i64* %8, align 8
  br label %118

118:                                              ; preds = %113, %108
  %119 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load %struct.device_node*, %struct.device_node** %121, align 8
  %123 = call i32 @of_property_read_u32(%struct.device_node* %122, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32* %10)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  store i32 0, i32* %3, align 4
  br label %179

127:                                              ; preds = %118
  %128 = load i64, i64* %8, align 8
  %129 = load i32, i32* %10, align 4
  %130 = call i64 @div_u64_rem(i64 %128, i32 %129, i32* %11)
  store i64 %130, i64* %9, align 8
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load i64, i64* %9, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %9, align 8
  br label %136

136:                                              ; preds = %133, %127
  %137 = load i64, i64* %9, align 8
  %138 = icmp ult i64 %137, 2
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load i64, i64* %9, align 8
  %141 = icmp ugt i64 %140, 256
  br i1 %141, label %142, label %148

142:                                              ; preds = %139, %136
  %143 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %144, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %3, align 4
  br label %179

148:                                              ; preds = %139
  %149 = load i64, i64* %9, align 8
  %150 = sub i64 %149, 1
  %151 = load %struct.dfsdm_priv*, %struct.dfsdm_priv** %5, align 8
  %152 = getelementptr inbounds %struct.dfsdm_priv, %struct.dfsdm_priv* %151, i32 0, i32 0
  store i64 %150, i64* %152, align 8
  %153 = load i64, i64* %8, align 8
  %154 = load %struct.dfsdm_priv*, %struct.dfsdm_priv** %5, align 8
  %155 = getelementptr inbounds %struct.dfsdm_priv, %struct.dfsdm_priv* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = add i64 %156, 1
  %158 = udiv i64 %153, %157
  %159 = load %struct.dfsdm_priv*, %struct.dfsdm_priv** %5, align 8
  %160 = getelementptr inbounds %struct.dfsdm_priv, %struct.dfsdm_priv* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  store i64 %158, i64* %161, align 8
  %162 = load i32, i32* %11, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %178

164:                                              ; preds = %148
  %165 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %166 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %165, i32 0, i32 0
  %167 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_warn(%struct.TYPE_7__* %166, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %168 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %169 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %168, i32 0, i32 0
  %170 = load i64, i64* %8, align 8
  %171 = load i32, i32* %10, align 4
  %172 = load %struct.dfsdm_priv*, %struct.dfsdm_priv** %5, align 8
  %173 = getelementptr inbounds %struct.dfsdm_priv, %struct.dfsdm_priv* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = add i64 %174, 1
  %176 = load i32, i32* %11, align 4
  %177 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_warn(%struct.TYPE_7__* %169, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i64 %170, i32 %171, i64 %175, i32 %176)
  br label %178

178:                                              ; preds = %164, %148
  store i32 0, i32* %3, align 4
  br label %179

179:                                              ; preds = %178, %142, %126, %86, %54, %28, %19
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32* @devm_ioremap_resource(%struct.TYPE_7__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_7__*, i8*) #1

declare dso_local i64 @clk_get_rate(i32*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @div_u64_rem(i64, i32, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_7__*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
