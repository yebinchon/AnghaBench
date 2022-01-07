; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tegra-kbc.c_tegra_kbc_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tegra-kbc.c_tegra_kbc_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_kbc = type { i32, i32, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@KBC_MAX_GPIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"nvidia,debounce-delay-ms\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"nvidia,repeat-delay-ms\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"nvidia,needs-ghost-filter\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"wakeup-source\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"nvidia,wakeup-source\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"nvidia,kbc-row-pins\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"property nvidia,kbc-row-pins not found\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"nvidia,kbc-col-pins\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"property nvidia,kbc-col-pins not found\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"Number of rows is more than supported by hardware\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [51 x i8] c"Number of cols is more than supported by hardware\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"linux,keymap\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"property linux,keymap not found\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"keypad rows/columns not properly specified\0A\00", align 1
@PIN_CFG_IGNORE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [36 x i8] c"Rows configurations are not proper\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"Cols configurations are not proper\0A\00", align 1
@PIN_CFG_ROW = common dso_local global i32 0, align 4
@PIN_CFG_COL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_kbc*)* @tegra_kbc_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_kbc_parse_dt(%struct.tegra_kbc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_kbc*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.tegra_kbc* %0, %struct.tegra_kbc** %3, align 8
  %15 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %16 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %15, i32 0, i32 6
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  store %struct.device_node* %19, %struct.device_node** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %20 = load i32, i32* @KBC_MAX_GPIO, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %9, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %24 = load i32, i32* @KBC_MAX_GPIO, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %27 = load %struct.device_node*, %struct.device_node** %4, align 8
  %28 = call i32 @of_property_read_u32(%struct.device_node* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %5)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %33 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %30, %1
  %35 = load %struct.device_node*, %struct.device_node** %4, align 8
  %36 = call i32 @of_property_read_u32(%struct.device_node* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %41 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.device_node*, %struct.device_node** %4, align 8
  %44 = call i64 @of_find_property(%struct.device_node* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %48 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %47, i32 0, i32 2
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %42
  %50 = load %struct.device_node*, %struct.device_node** %4, align 8
  %51 = call i64 @of_property_read_bool(%struct.device_node* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load %struct.device_node*, %struct.device_node** %4, align 8
  %55 = call i64 @of_property_read_bool(%struct.device_node* %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53, %49
  %58 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %59 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %58, i32 0, i32 3
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %53
  %61 = load %struct.device_node*, %struct.device_node** %4, align 8
  %62 = call i32 @of_get_property(%struct.device_node* %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32* %12)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %60
  %65 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %66 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %65, i32 0, i32 6
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = call i32 @dev_err(%struct.TYPE_6__* %67, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %69 = load i32, i32* @ENOENT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %258

71:                                               ; preds = %60
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = udiv i64 %73, 4
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %7, align 4
  %76 = load %struct.device_node*, %struct.device_node** %4, align 8
  %77 = call i32 @of_get_property(%struct.device_node* %76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32* %12)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %71
  %80 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %81 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %80, i32 0, i32 6
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = call i32 @dev_err(%struct.TYPE_6__* %82, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  %84 = load i32, i32* @ENOENT, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %258

86:                                               ; preds = %71
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = udiv i64 %88, 4
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %93 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %92, i32 0, i32 7
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp sgt i32 %91, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %86
  %99 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %100 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %99, i32 0, i32 6
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = call i32 @dev_err(%struct.TYPE_6__* %101, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %258

105:                                              ; preds = %86
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %108 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %107, i32 0, i32 7
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp sgt i32 %106, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %105
  %114 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %115 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %114, i32 0, i32 6
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = call i32 @dev_err(%struct.TYPE_6__* %116, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0))
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %258

120:                                              ; preds = %105
  %121 = load %struct.device_node*, %struct.device_node** %4, align 8
  %122 = call i32 @of_get_property(%struct.device_node* %121, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32* %12)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %131, label %124

124:                                              ; preds = %120
  %125 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %126 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %125, i32 0, i32 6
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = call i32 @dev_err(%struct.TYPE_6__* %127, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  %129 = load i32, i32* @ENOENT, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %258

131:                                              ; preds = %120
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %131
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %138, %139
  %141 = load i32, i32* @KBC_MAX_GPIO, align 4
  %142 = icmp sgt i32 %140, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %137, %134, %131
  %144 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %145 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %144, i32 0, i32 6
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = call i32 @dev_err(%struct.TYPE_6__* %146, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0))
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %258

150:                                              ; preds = %137
  store i32 0, i32* %6, align 4
  br label %151

151:                                              ; preds = %166, %150
  %152 = load i32, i32* %6, align 4
  %153 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %154 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %169

157:                                              ; preds = %151
  %158 = load i32, i32* @PIN_CFG_IGNORE, align 4
  %159 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %160 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %159, i32 0, i32 5
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %160, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  store i32 %158, i32* %165, align 4
  br label %166

166:                                              ; preds = %157
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %6, align 4
  br label %151

169:                                              ; preds = %151
  %170 = load %struct.device_node*, %struct.device_node** %4, align 8
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @of_property_read_u32_array(%struct.device_node* %170, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32* %26, i32 %171)
  store i32 %172, i32* %13, align 4
  %173 = load i32, i32* %13, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %169
  %176 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %177 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %176, i32 0, i32 6
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = call i32 @dev_err(%struct.TYPE_6__* %178, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  %180 = load i32, i32* @EINVAL, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %258

182:                                              ; preds = %169
  %183 = load %struct.device_node*, %struct.device_node** %4, align 8
  %184 = load i32, i32* %8, align 4
  %185 = call i32 @of_property_read_u32_array(%struct.device_node* %183, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32* %23, i32 %184)
  store i32 %185, i32* %13, align 4
  %186 = load i32, i32* %13, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %182
  %189 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %190 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %189, i32 0, i32 6
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = call i32 @dev_err(%struct.TYPE_6__* %191, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0))
  %193 = load i32, i32* @EINVAL, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %258

195:                                              ; preds = %182
  store i32 0, i32* %6, align 4
  br label %196

196:                                              ; preds = %223, %195
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* %7, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %226

200:                                              ; preds = %196
  %201 = load i32, i32* @PIN_CFG_ROW, align 4
  %202 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %203 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %202, i32 0, i32 5
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %203, align 8
  %205 = load i32, i32* %6, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %26, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 1
  store i32 %201, i32* %211, align 4
  %212 = load i32, i32* %6, align 4
  %213 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %214 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %213, i32 0, i32 5
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %214, align 8
  %216 = load i32, i32* %6, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %26, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 0
  store i32 %212, i32* %222, align 4
  br label %223

223:                                              ; preds = %200
  %224 = load i32, i32* %6, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %6, align 4
  br label %196

226:                                              ; preds = %196
  store i32 0, i32* %6, align 4
  br label %227

227:                                              ; preds = %254, %226
  %228 = load i32, i32* %6, align 4
  %229 = load i32, i32* %8, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %257

231:                                              ; preds = %227
  %232 = load i32, i32* @PIN_CFG_COL, align 4
  %233 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %234 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %233, i32 0, i32 5
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %234, align 8
  %236 = load i32, i32* %6, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %23, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 1
  store i32 %232, i32* %242, align 4
  %243 = load i32, i32* %6, align 4
  %244 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %245 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %244, i32 0, i32 5
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %245, align 8
  %247 = load i32, i32* %6, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %23, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 0
  store i32 %243, i32* %253, align 4
  br label %254

254:                                              ; preds = %231
  %255 = load i32, i32* %6, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %6, align 4
  br label %227

257:                                              ; preds = %227
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %258

258:                                              ; preds = %257, %188, %175, %143, %124, %113, %98, %79, %64
  %259 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %259)
  %260 = load i32, i32* %2, align 4
  ret i32 %260
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #2

declare dso_local i64 @of_find_property(%struct.device_node*, i8*, i32*) #2

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #2

declare dso_local i32 @of_get_property(%struct.device_node*, i8*, i32*) #2

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #2

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
