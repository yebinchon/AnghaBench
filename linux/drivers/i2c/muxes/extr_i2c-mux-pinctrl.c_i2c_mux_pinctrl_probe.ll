; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-pinctrl.c_i2c_mux_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-pinctrl.c_i2c_mux_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_mux_core = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_mux_pinctrl = type { %struct.i2c_adapter**, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"pinctrl-names\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Cannot parse pinctrl-names: %d\0A\00", align 1
@states = common dso_local global i32 0, align 4
@i2c_mux_pinctrl_select = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Cannot get pinctrl: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Cannot look up pinctrl state %s: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"idle state must be last\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@i2c_mux_pinctrl_deselect = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"mux-locked i2c mux\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @i2c_mux_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_mux_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.i2c_mux_core*, align 8
  %7 = alloca %struct.i2c_mux_pinctrl*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %4, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %5, align 8
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = call i32 @of_property_count_strings(%struct.device_node* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %2, align 4
  br label %216

28:                                               ; preds = %1
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call %struct.i2c_adapter* @i2c_mux_pinctrl_parent_adapter(%struct.device* %29)
  store %struct.i2c_adapter* %30, %struct.i2c_adapter** %8, align 8
  %31 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %32 = call i64 @IS_ERR(%struct.i2c_adapter* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %36 = call i32 @PTR_ERR(%struct.i2c_adapter* %35)
  store i32 %36, i32* %2, align 4
  br label %216

37:                                               ; preds = %28
  %38 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.i2c_mux_pinctrl*, %struct.i2c_mux_pinctrl** %7, align 8
  %42 = load i32, i32* @states, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @struct_size(%struct.i2c_mux_pinctrl* %41, i32 %42, i32 %43)
  %45 = load i32, i32* @i2c_mux_pinctrl_select, align 4
  %46 = call %struct.i2c_mux_core* @i2c_mux_alloc(%struct.i2c_adapter* %38, %struct.device* %39, i32 %40, i32 %44, i32 0, i32 %45, i32* null)
  store %struct.i2c_mux_core* %46, %struct.i2c_mux_core** %6, align 8
  %47 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %6, align 8
  %48 = icmp ne %struct.i2c_mux_core* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %37
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %12, align 4
  br label %212

52:                                               ; preds = %37
  %53 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %6, align 8
  %54 = call %struct.i2c_mux_pinctrl* @i2c_mux_priv(%struct.i2c_mux_core* %53)
  store %struct.i2c_mux_pinctrl* %54, %struct.i2c_mux_pinctrl** %7, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %6, align 8
  %57 = call i32 @platform_set_drvdata(%struct.platform_device* %55, %struct.i2c_mux_core* %56)
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = call %struct.i2c_adapter* @devm_pinctrl_get(%struct.device* %58)
  %60 = load %struct.i2c_mux_pinctrl*, %struct.i2c_mux_pinctrl** %7, align 8
  %61 = getelementptr inbounds %struct.i2c_mux_pinctrl, %struct.i2c_mux_pinctrl* %60, i32 0, i32 1
  store %struct.i2c_adapter* %59, %struct.i2c_adapter** %61, align 8
  %62 = load %struct.i2c_mux_pinctrl*, %struct.i2c_mux_pinctrl** %7, align 8
  %63 = getelementptr inbounds %struct.i2c_mux_pinctrl, %struct.i2c_mux_pinctrl* %62, i32 0, i32 1
  %64 = load %struct.i2c_adapter*, %struct.i2c_adapter** %63, align 8
  %65 = call i64 @IS_ERR(%struct.i2c_adapter* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %52
  %68 = load %struct.i2c_mux_pinctrl*, %struct.i2c_mux_pinctrl** %7, align 8
  %69 = getelementptr inbounds %struct.i2c_mux_pinctrl, %struct.i2c_mux_pinctrl* %68, i32 0, i32 1
  %70 = load %struct.i2c_adapter*, %struct.i2c_adapter** %69, align 8
  %71 = call i32 @PTR_ERR(%struct.i2c_adapter* %70)
  store i32 %71, i32* %12, align 4
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %212

75:                                               ; preds = %52
  store i32 0, i32* %11, align 4
  br label %76

76:                                               ; preds = %143, %75
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %146

80:                                               ; preds = %76
  %81 = load %struct.device_node*, %struct.device_node** %5, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @of_property_read_string_index(%struct.device_node* %81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %82, i8** %13)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.device*, %struct.device** %4, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %87, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  br label %212

90:                                               ; preds = %80
  %91 = load %struct.i2c_mux_pinctrl*, %struct.i2c_mux_pinctrl** %7, align 8
  %92 = getelementptr inbounds %struct.i2c_mux_pinctrl, %struct.i2c_mux_pinctrl* %91, i32 0, i32 1
  %93 = load %struct.i2c_adapter*, %struct.i2c_adapter** %92, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = call %struct.i2c_adapter* @pinctrl_lookup_state(%struct.i2c_adapter* %93, i8* %94)
  %96 = load %struct.i2c_mux_pinctrl*, %struct.i2c_mux_pinctrl** %7, align 8
  %97 = getelementptr inbounds %struct.i2c_mux_pinctrl, %struct.i2c_mux_pinctrl* %96, i32 0, i32 0
  %98 = load %struct.i2c_adapter**, %struct.i2c_adapter*** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.i2c_adapter*, %struct.i2c_adapter** %98, i64 %100
  store %struct.i2c_adapter* %95, %struct.i2c_adapter** %101, align 8
  %102 = load %struct.i2c_mux_pinctrl*, %struct.i2c_mux_pinctrl** %7, align 8
  %103 = getelementptr inbounds %struct.i2c_mux_pinctrl, %struct.i2c_mux_pinctrl* %102, i32 0, i32 0
  %104 = load %struct.i2c_adapter**, %struct.i2c_adapter*** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.i2c_adapter*, %struct.i2c_adapter** %104, i64 %106
  %108 = load %struct.i2c_adapter*, %struct.i2c_adapter** %107, align 8
  %109 = call i64 @IS_ERR(%struct.i2c_adapter* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %90
  %112 = load %struct.i2c_mux_pinctrl*, %struct.i2c_mux_pinctrl** %7, align 8
  %113 = getelementptr inbounds %struct.i2c_mux_pinctrl, %struct.i2c_mux_pinctrl* %112, i32 0, i32 0
  %114 = load %struct.i2c_adapter**, %struct.i2c_adapter*** %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.i2c_adapter*, %struct.i2c_adapter** %114, i64 %116
  %118 = load %struct.i2c_adapter*, %struct.i2c_adapter** %117, align 8
  %119 = call i32 @PTR_ERR(%struct.i2c_adapter* %118)
  store i32 %119, i32* %12, align 4
  %120 = load %struct.device*, %struct.device** %4, align 8
  %121 = load i8*, i8** %13, align 8
  %122 = load i32, i32* %12, align 4
  %123 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %120, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %121, i32 %122)
  br label %212

124:                                              ; preds = %90
  %125 = load i8*, i8** %13, align 8
  %126 = call i64 @strcmp(i8* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  br label %143

129:                                              ; preds = %124
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %10, align 4
  %132 = sub nsw i32 %131, 1
  %133 = icmp ne i32 %130, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load %struct.device*, %struct.device** %4, align 8
  %136 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %135, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %12, align 4
  br label %212

139:                                              ; preds = %129
  %140 = load i32, i32* @i2c_mux_pinctrl_deselect, align 4
  %141 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %6, align 8
  %142 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %139, %128
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %11, align 4
  br label %76

146:                                              ; preds = %76
  %147 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %6, align 8
  %148 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %147, i32 0, i32 2
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = call %struct.i2c_adapter* @i2c_root_adapter(i32* %150)
  store %struct.i2c_adapter* %151, %struct.i2c_adapter** %9, align 8
  %152 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %6, align 8
  %153 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %152, i32 0, i32 0
  store i32 1, i32* %153, align 8
  store i32 0, i32* %11, align 4
  br label %154

154:                                              ; preds = %173, %146
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* %10, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %176

158:                                              ; preds = %154
  %159 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %160 = load %struct.i2c_mux_pinctrl*, %struct.i2c_mux_pinctrl** %7, align 8
  %161 = getelementptr inbounds %struct.i2c_mux_pinctrl, %struct.i2c_mux_pinctrl* %160, i32 0, i32 0
  %162 = load %struct.i2c_adapter**, %struct.i2c_adapter*** %161, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.i2c_adapter*, %struct.i2c_adapter** %162, i64 %164
  %166 = load %struct.i2c_adapter*, %struct.i2c_adapter** %165, align 8
  %167 = call %struct.i2c_adapter* @i2c_mux_pinctrl_root_adapter(%struct.i2c_adapter* %166)
  %168 = icmp ne %struct.i2c_adapter* %159, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %158
  %170 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %6, align 8
  %171 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %170, i32 0, i32 0
  store i32 0, i32* %171, align 8
  br label %176

172:                                              ; preds = %158
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %11, align 4
  br label %154

176:                                              ; preds = %169, %154
  %177 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %6, align 8
  %178 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load %struct.device*, %struct.device** %4, align 8
  %183 = call i32 @dev_info(%struct.device* %182, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %184

184:                                              ; preds = %181, %176
  store i32 0, i32* %11, align 4
  br label %185

185:                                              ; preds = %205, %184
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* %10, align 4
  %188 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %6, align 8
  %189 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  %192 = xor i1 %191, true
  %193 = xor i1 %192, true
  %194 = zext i1 %193 to i32
  %195 = sub nsw i32 %187, %194
  %196 = icmp slt i32 %186, %195
  br i1 %196, label %197, label %208

197:                                              ; preds = %185
  %198 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %6, align 8
  %199 = load i32, i32* %11, align 4
  %200 = call i32 @i2c_mux_add_adapter(%struct.i2c_mux_core* %198, i32 0, i32 %199, i32 0)
  store i32 %200, i32* %12, align 4
  %201 = load i32, i32* %12, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %197
  br label %209

204:                                              ; preds = %197
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %11, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %11, align 4
  br label %185

208:                                              ; preds = %185
  store i32 0, i32* %2, align 4
  br label %216

209:                                              ; preds = %203
  %210 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %6, align 8
  %211 = call i32 @i2c_mux_del_adapters(%struct.i2c_mux_core* %210)
  br label %212

212:                                              ; preds = %209, %134, %111, %86, %67, %49
  %213 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %214 = call i32 @i2c_put_adapter(%struct.i2c_adapter* %213)
  %215 = load i32, i32* %12, align 4
  store i32 %215, i32* %2, align 4
  br label %216

216:                                              ; preds = %212, %208, %34, %23
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

declare dso_local i32 @of_property_count_strings(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.i2c_adapter* @i2c_mux_pinctrl_parent_adapter(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.i2c_adapter*) #1

declare dso_local i32 @PTR_ERR(%struct.i2c_adapter*) #1

declare dso_local %struct.i2c_mux_core* @i2c_mux_alloc(%struct.i2c_adapter*, %struct.device*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @struct_size(%struct.i2c_mux_pinctrl*, i32, i32) #1

declare dso_local %struct.i2c_mux_pinctrl* @i2c_mux_priv(%struct.i2c_mux_core*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.i2c_mux_core*) #1

declare dso_local %struct.i2c_adapter* @devm_pinctrl_get(%struct.device*) #1

declare dso_local i32 @of_property_read_string_index(%struct.device_node*, i8*, i32, i8**) #1

declare dso_local %struct.i2c_adapter* @pinctrl_lookup_state(%struct.i2c_adapter*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.i2c_adapter* @i2c_root_adapter(i32*) #1

declare dso_local %struct.i2c_adapter* @i2c_mux_pinctrl_root_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @i2c_mux_add_adapter(%struct.i2c_mux_core*, i32, i32, i32) #1

declare dso_local i32 @i2c_mux_del_adapters(%struct.i2c_mux_core*) #1

declare dso_local i32 @i2c_put_adapter(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
