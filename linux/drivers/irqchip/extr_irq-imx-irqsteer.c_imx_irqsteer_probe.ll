; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-imx-irqsteer.c_imx_irqsteer_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-imx-irqsteer.c_imx_irqsteer_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.irqsteer_data = type { i32, i32, i32, i64, i32*, i32, i64, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to initialize reg\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to get ipg clk: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"fsl,num-irqs\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"fsl,channel\00", align 1
@CONFIG_PM_SLEEP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"failed to enable ipg clk: %d\0A\00", align 1
@CHANCTRL = common dso_local global i64 0, align 8
@imx_irqsteer_domain_ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"failed to create IRQ domain\0A\00", align 1
@CHAN_MAX_OUTPUT_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@imx_irqsteer_irq_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_irqsteer_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_irqsteer_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.irqsteer_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @devm_kzalloc(%struct.TYPE_4__* %14, i32 64, i32 %15)
  %17 = bitcast i8* %16 to %struct.irqsteer_data*
  store %struct.irqsteer_data* %17, %struct.irqsteer_data** %5, align 8
  %18 = load %struct.irqsteer_data*, %struct.irqsteer_data** %5, align 8
  %19 = icmp ne %struct.irqsteer_data* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %229

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %24, i32 0)
  %26 = load %struct.irqsteer_data*, %struct.irqsteer_data** %5, align 8
  %27 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %26, i32 0, i32 6
  store i64 %25, i64* %27, align 8
  %28 = load %struct.irqsteer_data*, %struct.irqsteer_data** %5, align 8
  %29 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @IS_ERR(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %23
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.irqsteer_data*, %struct.irqsteer_data** %5, align 8
  %38 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @PTR_ERR(i64 %39)
  store i32 %40, i32* %2, align 4
  br label %229

41:                                               ; preds = %23
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i64 @devm_clk_get(%struct.TYPE_4__* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.irqsteer_data*, %struct.irqsteer_data** %5, align 8
  %46 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %45, i32 0, i32 3
  store i64 %44, i64* %46, align 8
  %47 = load %struct.irqsteer_data*, %struct.irqsteer_data** %5, align 8
  %48 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @IS_ERR(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %41
  %53 = load %struct.irqsteer_data*, %struct.irqsteer_data** %5, align 8
  %54 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @PTR_ERR(i64 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @EPROBE_DEFER, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load i32, i32* %8, align 4
  %65 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %61, %52
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %2, align 4
  br label %229

68:                                               ; preds = %41
  %69 = load %struct.irqsteer_data*, %struct.irqsteer_data** %5, align 8
  %70 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %69, i32 0, i32 8
  %71 = call i32 @raw_spin_lock_init(i32* %70)
  %72 = load %struct.device_node*, %struct.device_node** %4, align 8
  %73 = call i32 @of_property_read_u32(%struct.device_node* %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %6)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %2, align 4
  br label %229

78:                                               ; preds = %68
  %79 = load %struct.device_node*, %struct.device_node** %4, align 8
  %80 = load %struct.irqsteer_data*, %struct.irqsteer_data** %5, align 8
  %81 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %80, i32 0, i32 0
  %82 = call i32 @of_property_read_u32(%struct.device_node* %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %2, align 4
  br label %229

87:                                               ; preds = %78
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @DIV_ROUND_UP(i32 %88, i32 64)
  %90 = load %struct.irqsteer_data*, %struct.irqsteer_data** %5, align 8
  %91 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %6, align 4
  %93 = sdiv i32 %92, 32
  %94 = load %struct.irqsteer_data*, %struct.irqsteer_data** %5, align 8
  %95 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @CONFIG_PM_SLEEP, align 4
  %97 = call i64 @IS_ENABLED(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %120

99:                                               ; preds = %87
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = load %struct.irqsteer_data*, %struct.irqsteer_data** %5, align 8
  %103 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = mul i64 4, %105
  %107 = trunc i64 %106 to i32
  %108 = load i32, i32* @GFP_KERNEL, align 4
  %109 = call i8* @devm_kzalloc(%struct.TYPE_4__* %101, i32 %107, i32 %108)
  %110 = load %struct.irqsteer_data*, %struct.irqsteer_data** %5, align 8
  %111 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %110, i32 0, i32 7
  store i8* %109, i8** %111, align 8
  %112 = load %struct.irqsteer_data*, %struct.irqsteer_data** %5, align 8
  %113 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %112, i32 0, i32 7
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %99
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %229

119:                                              ; preds = %99
  br label %120

120:                                              ; preds = %119, %87
  %121 = load %struct.irqsteer_data*, %struct.irqsteer_data** %5, align 8
  %122 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @clk_prepare_enable(i64 %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %120
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = load i32, i32* %8, align 4
  %131 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %129, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %2, align 4
  br label %229

133:                                              ; preds = %120
  %134 = load %struct.irqsteer_data*, %struct.irqsteer_data** %5, align 8
  %135 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @BIT(i32 %136)
  %138 = load %struct.irqsteer_data*, %struct.irqsteer_data** %5, align 8
  %139 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %138, i32 0, i32 6
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @CHANCTRL, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @writel_relaxed(i32 %137, i64 %142)
  %144 = load %struct.device_node*, %struct.device_node** %4, align 8
  %145 = load %struct.irqsteer_data*, %struct.irqsteer_data** %5, align 8
  %146 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = mul nsw i32 %147, 32
  %149 = load %struct.irqsteer_data*, %struct.irqsteer_data** %5, align 8
  %150 = call i32 @irq_domain_add_linear(%struct.device_node* %144, i32 %148, i32* @imx_irqsteer_domain_ops, %struct.irqsteer_data* %149)
  %151 = load %struct.irqsteer_data*, %struct.irqsteer_data** %5, align 8
  %152 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %151, i32 0, i32 5
  store i32 %150, i32* %152, align 8
  %153 = load %struct.irqsteer_data*, %struct.irqsteer_data** %5, align 8
  %154 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %133
  %158 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 0
  %160 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %159, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %161 = load i32, i32* @ENOMEM, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %8, align 4
  br label %223

163:                                              ; preds = %133
  %164 = load %struct.irqsteer_data*, %struct.irqsteer_data** %5, align 8
  %165 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load %struct.irqsteer_data*, %struct.irqsteer_data** %5, align 8
  %170 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @CHAN_MAX_OUTPUT_INT, align 4
  %173 = icmp sgt i32 %171, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %168, %163
  %175 = load i32, i32* @EINVAL, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %8, align 4
  br label %223

177:                                              ; preds = %168
  store i32 0, i32* %7, align 4
  br label %178

178:                                              ; preds = %216, %177
  %179 = load i32, i32* %7, align 4
  %180 = load %struct.irqsteer_data*, %struct.irqsteer_data** %5, align 8
  %181 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = icmp slt i32 %179, %182
  br i1 %183, label %184, label %219

184:                                              ; preds = %178
  %185 = load %struct.device_node*, %struct.device_node** %4, align 8
  %186 = load i32, i32* %7, align 4
  %187 = call i32 @irq_of_parse_and_map(%struct.device_node* %185, i32 %186)
  %188 = load %struct.irqsteer_data*, %struct.irqsteer_data** %5, align 8
  %189 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %188, i32 0, i32 4
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %7, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  store i32 %187, i32* %193, align 4
  %194 = load %struct.irqsteer_data*, %struct.irqsteer_data** %5, align 8
  %195 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %194, i32 0, i32 4
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %184
  %203 = load i32, i32* @EINVAL, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %8, align 4
  br label %223

205:                                              ; preds = %184
  %206 = load %struct.irqsteer_data*, %struct.irqsteer_data** %5, align 8
  %207 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %206, i32 0, i32 4
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %7, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @imx_irqsteer_irq_handler, align 4
  %214 = load %struct.irqsteer_data*, %struct.irqsteer_data** %5, align 8
  %215 = call i32 @irq_set_chained_handler_and_data(i32 %212, i32 %213, %struct.irqsteer_data* %214)
  br label %216

216:                                              ; preds = %205
  %217 = load i32, i32* %7, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %7, align 4
  br label %178

219:                                              ; preds = %178
  %220 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %221 = load %struct.irqsteer_data*, %struct.irqsteer_data** %5, align 8
  %222 = call i32 @platform_set_drvdata(%struct.platform_device* %220, %struct.irqsteer_data* %221)
  store i32 0, i32* %2, align 4
  br label %229

223:                                              ; preds = %202, %174, %157
  %224 = load %struct.irqsteer_data*, %struct.irqsteer_data** %5, align 8
  %225 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = call i32 @clk_disable_unprepare(i64 %226)
  %228 = load i32, i32* %8, align 4
  store i32 %228, i32* %2, align 4
  br label %229

229:                                              ; preds = %223, %219, %127, %116, %85, %76, %66, %33, %20
  %230 = load i32, i32* %2, align 4
  ret i32 %230
}

declare dso_local i8* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @devm_clk_get(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @irq_domain_add_linear(%struct.device_node*, i32, i32*, %struct.irqsteer_data*) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.irqsteer_data*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.irqsteer_data*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
