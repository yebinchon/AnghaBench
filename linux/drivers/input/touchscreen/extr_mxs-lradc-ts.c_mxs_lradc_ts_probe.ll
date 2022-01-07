; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mxs-lradc-ts.c_mxs_lradc_ts_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mxs-lradc-ts.c_mxs_lradc_ts_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mxs_lradc = type { i32 }
%struct.mxs_lradc_ts = type { i32, i32, i32, i32, %struct.device*, i32, %struct.mxs_lradc* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"fsl,lradc-touchscreen-wires\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"fsl,ave-ctrl\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid sample count (%u)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"fsl,ave-delay\00", align 1
@LRADC_DELAY_DELAY_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Invalid sample delay (%u)\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"fsl,settling\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Invalid settling delay (%u)\0A\00", align 1
@mxs_lradc_ts_irq_names = common dso_local global i32* null, align 8
@mxs_lradc_ts_handle_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mxs_lradc_ts_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_lradc_ts_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.mxs_lradc*, align 8
  %7 = alloca %struct.mxs_lradc_ts*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %4, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.device_node*, %struct.device_node** %19, align 8
  store %struct.device_node* %20, %struct.device_node** %5, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = call %struct.mxs_lradc* @dev_get_drvdata(%struct.TYPE_2__* %23)
  store %struct.mxs_lradc* %24, %struct.mxs_lradc** %6, align 8
  store i32 0, i32* %12, align 4
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.mxs_lradc_ts* @devm_kzalloc(%struct.device* %25, i32 40, i32 %26)
  store %struct.mxs_lradc_ts* %27, %struct.mxs_lradc_ts** %7, align 8
  %28 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %7, align 8
  %29 = icmp ne %struct.mxs_lradc_ts* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %202

33:                                               ; preds = %1
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %7, align 8
  %36 = call i32 @platform_set_drvdata(%struct.platform_device* %34, %struct.mxs_lradc_ts* %35)
  %37 = load %struct.mxs_lradc*, %struct.mxs_lradc** %6, align 8
  %38 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %7, align 8
  %39 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %38, i32 0, i32 6
  store %struct.mxs_lradc* %37, %struct.mxs_lradc** %39, align 8
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %7, align 8
  %42 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %41, i32 0, i32 4
  store %struct.device* %40, %struct.device** %42, align 8
  %43 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %7, align 8
  %44 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %43, i32 0, i32 5
  %45 = call i32 @spin_lock_init(i32* %44)
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %46, i32 0)
  %48 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %7, align 8
  %49 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %7, align 8
  %51 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @IS_ERR(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %33
  %56 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %7, align 8
  %57 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @PTR_ERR(i32 %58)
  store i32 %59, i32* %2, align 4
  br label %202

60:                                               ; preds = %33
  %61 = load %struct.device_node*, %struct.device_node** %5, align 8
  %62 = call i32 @of_property_read_u32(%struct.device_node* %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %12)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %2, align 4
  br label %202

67:                                               ; preds = %60
  %68 = load %struct.device_node*, %struct.device_node** %5, align 8
  %69 = call i32 @of_property_read_u32(%struct.device_node* %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %7, align 8
  %73 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %72, i32 0, i32 0
  store i32 4, i32* %73, align 8
  br label %93

74:                                               ; preds = %67
  %75 = load i32, i32* %13, align 4
  %76 = icmp sge i32 %75, 1
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load i32, i32* %13, align 4
  %79 = icmp sle i32 %78, 32
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %7, align 8
  %83 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %92

84:                                               ; preds = %77, %74
  %85 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %7, align 8
  %86 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %85, i32 0, i32 4
  %87 = load %struct.device*, %struct.device** %86, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @dev_err(%struct.device* %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %202

92:                                               ; preds = %80
  br label %93

93:                                               ; preds = %92, %71
  %94 = load %struct.device_node*, %struct.device_node** %5, align 8
  %95 = call i32 @of_property_read_u32(%struct.device_node* %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* %13)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %7, align 8
  %99 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %98, i32 0, i32 1
  store i32 2, i32* %99, align 4
  br label %121

100:                                              ; preds = %93
  %101 = load i32, i32* %13, align 4
  %102 = icmp sge i32 %101, 2
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* @LRADC_DELAY_DELAY_MASK, align 4
  %106 = add nsw i32 %105, 1
  %107 = icmp sle i32 %104, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load i32, i32* %13, align 4
  %110 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %7, align 8
  %111 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  br label %120

112:                                              ; preds = %103, %100
  %113 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %7, align 8
  %114 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %113, i32 0, i32 4
  %115 = load %struct.device*, %struct.device** %114, align 8
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @dev_err(%struct.device* %115, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  br label %202

120:                                              ; preds = %108
  br label %121

121:                                              ; preds = %120, %97
  %122 = load %struct.device_node*, %struct.device_node** %5, align 8
  %123 = call i32 @of_property_read_u32(%struct.device_node* %122, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32* %13)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %7, align 8
  %127 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %126, i32 0, i32 2
  store i32 10, i32* %127, align 8
  br label %148

128:                                              ; preds = %121
  %129 = load i32, i32* %13, align 4
  %130 = icmp sge i32 %129, 1
  br i1 %130, label %131, label %139

131:                                              ; preds = %128
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* @LRADC_DELAY_DELAY_MASK, align 4
  %134 = icmp sle i32 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load i32, i32* %13, align 4
  %137 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %7, align 8
  %138 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  br label %147

139:                                              ; preds = %131, %128
  %140 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %7, align 8
  %141 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %140, i32 0, i32 4
  %142 = load %struct.device*, %struct.device** %141, align 8
  %143 = load i32, i32* %13, align 4
  %144 = call i32 @dev_err(%struct.device* %142, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %2, align 4
  br label %202

147:                                              ; preds = %135
  br label %148

148:                                              ; preds = %147, %125
  %149 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %7, align 8
  %150 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @stmp_reset_block(i32 %151)
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %8, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %148
  %156 = load i32, i32* %8, align 4
  store i32 %156, i32* %2, align 4
  br label %202

157:                                              ; preds = %148
  %158 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %7, align 8
  %159 = call i32 @mxs_lradc_ts_hw_init(%struct.mxs_lradc_ts* %158)
  store i32 0, i32* %11, align 4
  br label %160

160:                                              ; preds = %196, %157
  %161 = load i32, i32* %11, align 4
  %162 = icmp slt i32 %161, 3
  br i1 %162, label %163, label %199

163:                                              ; preds = %160
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = load i32*, i32** @mxs_lradc_ts_irq_names, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @platform_get_irq_byname(%struct.platform_device* %164, i32 %169)
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %163
  %174 = load i32, i32* %9, align 4
  store i32 %174, i32* %2, align 4
  br label %202

175:                                              ; preds = %163
  %176 = load %struct.device_node*, %struct.device_node** %5, align 8
  %177 = load i32, i32* %9, align 4
  %178 = call i32 @irq_of_parse_and_map(%struct.device_node* %176, i32 %177)
  store i32 %178, i32* %10, align 4
  %179 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %7, align 8
  %180 = call i32 @mxs_lradc_ts_stop(%struct.mxs_lradc_ts* %179)
  %181 = load %struct.device*, %struct.device** %4, align 8
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* @mxs_lradc_ts_handle_irq, align 4
  %184 = load i32*, i32** @mxs_lradc_ts_irq_names, align 8
  %185 = load i32, i32* %11, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %7, align 8
  %190 = call i32 @devm_request_irq(%struct.device* %181, i32 %182, i32 %183, i32 0, i32 %188, %struct.mxs_lradc_ts* %189)
  store i32 %190, i32* %8, align 4
  %191 = load i32, i32* %8, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %175
  %194 = load i32, i32* %8, align 4
  store i32 %194, i32* %2, align 4
  br label %202

195:                                              ; preds = %175
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %11, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %11, align 4
  br label %160

199:                                              ; preds = %160
  %200 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %7, align 8
  %201 = call i32 @mxs_lradc_ts_register(%struct.mxs_lradc_ts* %200)
  store i32 %201, i32* %2, align 4
  br label %202

202:                                              ; preds = %199, %193, %173, %155, %139, %112, %84, %65, %55, %30
  %203 = load i32, i32* %2, align 4
  ret i32 %203
}

declare dso_local %struct.mxs_lradc* @dev_get_drvdata(%struct.TYPE_2__*) #1

declare dso_local %struct.mxs_lradc_ts* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mxs_lradc_ts*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @stmp_reset_block(i32) #1

declare dso_local i32 @mxs_lradc_ts_hw_init(%struct.mxs_lradc_ts*) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i32) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @mxs_lradc_ts_stop(%struct.mxs_lradc_ts*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.mxs_lradc_ts*) #1

declare dso_local i32 @mxs_lradc_ts_register(%struct.mxs_lradc_ts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
