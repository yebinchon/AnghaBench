; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-reg.c_i2c_mux_reg_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-reg.c_i2c_mux_reg_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.i2c_mux_core = type { %struct.TYPE_3__*, i32, %struct.regmux* }
%struct.TYPE_3__ = type { i32 }
%struct.regmux = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32*, i64, i64, i32 }
%struct.i2c_adapter = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Error parsing device tree\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Register not set, using platform resource\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid register size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@i2c_mux_reg_select = common dso_local global i32 0, align 4
@i2c_mux_reg_deselect = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"%d port mux on %s adapter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @i2c_mux_reg_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_mux_reg_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.i2c_mux_core*, align 8
  %5 = alloca %struct.regmux*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.regmux* @devm_kzalloc(i32* %13, i32 56, i32 %14)
  store %struct.regmux* %15, %struct.regmux** %5, align 8
  %16 = load %struct.regmux*, %struct.regmux** %5, align 8
  %17 = icmp ne %struct.regmux* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %236

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call i64 @dev_get_platdata(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.regmux*, %struct.regmux** %5, align 8
  %28 = getelementptr inbounds %struct.regmux, %struct.regmux* %27, i32 0, i32 0
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i64 @dev_get_platdata(i32* %30)
  %32 = call i32 @memcpy(%struct.TYPE_4__* %28, i64 %31, i32 56)
  br label %52

33:                                               ; preds = %21
  %34 = load %struct.regmux*, %struct.regmux** %5, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = call i32 @i2c_mux_reg_probe_dt(%struct.regmux* %34, %struct.platform_device* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @EPROBE_DEFER, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %2, align 4
  br label %236

43:                                               ; preds = %33
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %2, align 4
  br label %236

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %26
  %53 = load %struct.regmux*, %struct.regmux** %5, align 8
  %54 = getelementptr inbounds %struct.regmux, %struct.regmux* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.i2c_adapter* @i2c_get_adapter(i32 %56)
  store %struct.i2c_adapter* %57, %struct.i2c_adapter** %6, align 8
  %58 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %59 = icmp ne %struct.i2c_adapter* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %52
  %61 = load i32, i32* @EPROBE_DEFER, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %236

63:                                               ; preds = %52
  %64 = load %struct.regmux*, %struct.regmux** %5, align 8
  %65 = getelementptr inbounds %struct.regmux, %struct.regmux* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %101, label %69

69:                                               ; preds = %63
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = call i32 @dev_info(i32* %71, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = load i32, i32* @IORESOURCE_MEM, align 4
  %75 = call %struct.resource* @platform_get_resource(%struct.platform_device* %73, i32 %74, i32 0)
  store %struct.resource* %75, %struct.resource** %7, align 8
  %76 = load %struct.resource*, %struct.resource** %7, align 8
  %77 = call i32 @resource_size(%struct.resource* %76)
  %78 = load %struct.regmux*, %struct.regmux** %5, align 8
  %79 = getelementptr inbounds %struct.regmux, %struct.regmux* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = load %struct.resource*, %struct.resource** %7, align 8
  %84 = call i64 @devm_ioremap_resource(i32* %82, %struct.resource* %83)
  %85 = load %struct.regmux*, %struct.regmux** %5, align 8
  %86 = getelementptr inbounds %struct.regmux, %struct.regmux* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 6
  store i64 %84, i64* %87, align 8
  %88 = load %struct.regmux*, %struct.regmux** %5, align 8
  %89 = getelementptr inbounds %struct.regmux, %struct.regmux* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 6
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @IS_ERR(i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %69
  %95 = load %struct.regmux*, %struct.regmux** %5, align 8
  %96 = getelementptr inbounds %struct.regmux, %struct.regmux* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 6
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @PTR_ERR(i64 %98)
  store i32 %99, i32* %10, align 4
  br label %232

100:                                              ; preds = %69
  br label %101

101:                                              ; preds = %100, %63
  %102 = load %struct.regmux*, %struct.regmux** %5, align 8
  %103 = getelementptr inbounds %struct.regmux, %struct.regmux* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 4
  br i1 %106, label %107, label %125

107:                                              ; preds = %101
  %108 = load %struct.regmux*, %struct.regmux** %5, align 8
  %109 = getelementptr inbounds %struct.regmux, %struct.regmux* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 2
  br i1 %112, label %113, label %125

113:                                              ; preds = %107
  %114 = load %struct.regmux*, %struct.regmux** %5, align 8
  %115 = getelementptr inbounds %struct.regmux, %struct.regmux* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 1
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = call i32 @dev_err(i32* %121, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %10, align 4
  br label %232

125:                                              ; preds = %113, %107, %101
  %126 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = load %struct.regmux*, %struct.regmux** %5, align 8
  %130 = getelementptr inbounds %struct.regmux, %struct.regmux* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @i2c_mux_reg_select, align 4
  %134 = call %struct.i2c_mux_core* @i2c_mux_alloc(%struct.i2c_adapter* %126, i32* %128, i32 %132, i32 0, i32 0, i32 %133, i32* null)
  store %struct.i2c_mux_core* %134, %struct.i2c_mux_core** %4, align 8
  %135 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %4, align 8
  %136 = icmp ne %struct.i2c_mux_core* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %125
  %138 = load i32, i32* @ENOMEM, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %10, align 4
  br label %232

140:                                              ; preds = %125
  %141 = load %struct.regmux*, %struct.regmux** %5, align 8
  %142 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %4, align 8
  %143 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %142, i32 0, i32 2
  store %struct.regmux* %141, %struct.regmux** %143, align 8
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %4, align 8
  %146 = call i32 @platform_set_drvdata(%struct.platform_device* %144, %struct.i2c_mux_core* %145)
  %147 = load %struct.regmux*, %struct.regmux** %5, align 8
  %148 = getelementptr inbounds %struct.regmux, %struct.regmux* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %140
  %153 = load i32, i32* @i2c_mux_reg_deselect, align 4
  %154 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %4, align 8
  %155 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 8
  br label %156

156:                                              ; preds = %152, %140
  store i32 0, i32* %9, align 4
  br label %157

157:                                              ; preds = %213, %156
  %158 = load i32, i32* %9, align 4
  %159 = load %struct.regmux*, %struct.regmux** %5, align 8
  %160 = getelementptr inbounds %struct.regmux, %struct.regmux* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp slt i32 %158, %162
  br i1 %163, label %164, label %216

164:                                              ; preds = %157
  %165 = load %struct.regmux*, %struct.regmux** %5, align 8
  %166 = getelementptr inbounds %struct.regmux, %struct.regmux* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %164
  %171 = load %struct.regmux*, %struct.regmux** %5, align 8
  %172 = getelementptr inbounds %struct.regmux, %struct.regmux* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %9, align 4
  %176 = add nsw i32 %174, %175
  br label %178

177:                                              ; preds = %164
  br label %178

178:                                              ; preds = %177, %170
  %179 = phi i32 [ %176, %170 ], [ 0, %177 ]
  store i32 %179, i32* %11, align 4
  %180 = load %struct.regmux*, %struct.regmux** %5, align 8
  %181 = getelementptr inbounds %struct.regmux, %struct.regmux* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 3
  %183 = load i32*, i32** %182, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %194

185:                                              ; preds = %178
  %186 = load %struct.regmux*, %struct.regmux** %5, align 8
  %187 = getelementptr inbounds %struct.regmux, %struct.regmux* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 3
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  br label %195

194:                                              ; preds = %178
  br label %195

195:                                              ; preds = %194, %185
  %196 = phi i32 [ %193, %185 ], [ 0, %194 ]
  store i32 %196, i32* %8, align 4
  %197 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %4, align 8
  %198 = load i32, i32* %11, align 4
  %199 = load %struct.regmux*, %struct.regmux** %5, align 8
  %200 = getelementptr inbounds %struct.regmux, %struct.regmux* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 4
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %8, align 4
  %208 = call i32 @i2c_mux_add_adapter(%struct.i2c_mux_core* %197, i32 %198, i32 %206, i32 %207)
  store i32 %208, i32* %10, align 4
  %209 = load i32, i32* %10, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %195
  br label %229

212:                                              ; preds = %195
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %9, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %9, align 4
  br label %157

216:                                              ; preds = %157
  %217 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %218 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %217, i32 0, i32 0
  %219 = load %struct.regmux*, %struct.regmux** %5, align 8
  %220 = getelementptr inbounds %struct.regmux, %struct.regmux* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %4, align 8
  %224 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %223, i32 0, i32 0
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @dev_dbg(i32* %218, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %222, i32 %227)
  store i32 0, i32* %2, align 4
  br label %236

229:                                              ; preds = %211
  %230 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %4, align 8
  %231 = call i32 @i2c_mux_del_adapters(%struct.i2c_mux_core* %230)
  br label %232

232:                                              ; preds = %229, %137, %119, %94
  %233 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %234 = call i32 @i2c_put_adapter(%struct.i2c_adapter* %233)
  %235 = load i32, i32* %10, align 4
  store i32 %235, i32* %2, align 4
  br label %236

236:                                              ; preds = %232, %216, %60, %46, %41, %18
  %237 = load i32, i32* %2, align 4
  ret i32 %237
}

declare dso_local %struct.regmux* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i64 @dev_get_platdata(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, i64, i32) #1

declare dso_local i32 @i2c_mux_reg_probe_dt(%struct.regmux*, %struct.platform_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.i2c_adapter* @i2c_get_adapter(i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i64 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local %struct.i2c_mux_core* @i2c_mux_alloc(%struct.i2c_adapter*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.i2c_mux_core*) #1

declare dso_local i32 @i2c_mux_add_adapter(%struct.i2c_mux_core*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @i2c_mux_del_adapters(%struct.i2c_mux_core*) #1

declare dso_local i32 @i2c_put_adapter(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
