; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_update_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_update_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxt_data = type { i64, i64, i64, i64, i64, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.firmware = type { i32, i32 }
%struct.mxt_cfg = type { i64, i64, i64, i64, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MXT_COMMAND_REPORTALL = common dso_local global i32 0, align 4
@MXT_CFG_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unrecognised config file\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%hhx%n\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Bad format\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Family ID mismatch!\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Variant ID mismatch!\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%x%n\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Bad format: failed to parse Info CRC\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Bad format: failed to parse Config CRC\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"CRC zero, attempting to apply config\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Config CRC 0x%06X: OK\0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"Config CRC 0x%06X: does not match file 0x%06X\0A\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"Warning: Info CRC error - device=0x%06X file=0x%06X\0A\00", align 1
@MXT_OBJECT_START = common dso_local global i64 0, align 8
@MXT_INFO_CHECKSUM_SIZE = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [26 x i8] c"Could not find CRC start\0A\00", align 1
@.str.13 = private unnamed_addr constant [61 x i8] c"Config CRC in file inconsistent, calculated=%06X, file=%06X\0A\00", align 1
@MXT_COMMAND_BACKUPNV = common dso_local global i32 0, align 4
@MXT_BACKUP_VALUE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [29 x i8] c"Config successfully updated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxt_data*, %struct.firmware*)* @mxt_update_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxt_update_cfg(%struct.mxt_data* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mxt_data*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.mxt_cfg, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.mxt_data* %0, %struct.mxt_data** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %15 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %16 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %15, i32 0, i32 6
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %6, align 8
  store i64 0, i64* %14, align 8
  %19 = load %struct.firmware*, %struct.firmware** %5, align 8
  %20 = getelementptr inbounds %struct.firmware, %struct.firmware* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.firmware*, %struct.firmware** %5, align 8
  %23 = getelementptr inbounds %struct.firmware, %struct.firmware* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i64 @kmemdup_nul(i32 %21, i32 %24, i32 %25)
  %27 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %7, i32 0, i32 2
  store i64 %26, i64* %27, align 8
  %28 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %7, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %319

34:                                               ; preds = %2
  %35 = load %struct.firmware*, %struct.firmware** %5, align 8
  %36 = getelementptr inbounds %struct.firmware, %struct.firmware* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %7, i32 0, i32 6
  store i32 %37, i32* %38, align 8
  %39 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %40 = load i32, i32* @MXT_COMMAND_REPORTALL, align 4
  %41 = call i32 @mxt_update_crc(%struct.mxt_data* %39, i32 %40, i32 1)
  %42 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %7, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @MXT_CFG_MAGIC, align 4
  %45 = load i32, i32* @MXT_CFG_MAGIC, align 4
  %46 = call i64 @strlen(i32 %45)
  %47 = call i64 @strncmp(i64 %43, i32 %44, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %34
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %314

54:                                               ; preds = %34
  %55 = load i32, i32* @MXT_CFG_MAGIC, align 4
  %56 = call i64 @strlen(i32 %55)
  %57 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %7, i32 0, i32 4
  store i64 %56, i64* %57, align 8
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %87, %54
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp ult i64 %60, 4
  br i1 %61, label %62, label %90

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %7, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %7, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %64, %66
  %68 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %7, i32 0, i32 5
  %69 = bitcast %struct.TYPE_5__* %68 to i8*
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = call i32 (i64, i8*, ...) @sscanf(i64 %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %72, i32* %9)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 1
  br i1 %75, label %76, label %81

76:                                               ; preds = %62
  %77 = load %struct.device*, %struct.device** %6, align 8
  %78 = call i32 @dev_err(%struct.device* %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %8, align 4
  br label %314

81:                                               ; preds = %62
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %7, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, %83
  store i64 %86, i64* %84, align 8
  br label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %58

90:                                               ; preds = %58
  %91 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %7, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %95 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %94, i32 0, i32 5
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %93, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %90
  %101 = load %struct.device*, %struct.device** %6, align 8
  %102 = call i32 @dev_err(%struct.device* %101, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %8, align 4
  br label %314

105:                                              ; preds = %90
  %106 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %7, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %110 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %109, i32 0, i32 5
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %108, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %105
  %116 = load %struct.device*, %struct.device** %6, align 8
  %117 = call i32 @dev_err(%struct.device* %116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %8, align 4
  br label %314

120:                                              ; preds = %105
  %121 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %7, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %7, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %122, %124
  %126 = call i32 (i64, i8*, ...) @sscanf(i64 %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64* %11, i32* %9)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 1
  br i1 %128, label %129, label %134

129:                                              ; preds = %120
  %130 = load %struct.device*, %struct.device** %6, align 8
  %131 = call i32 @dev_err(%struct.device* %130, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %8, align 4
  br label %314

134:                                              ; preds = %120
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %7, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, %136
  store i64 %139, i64* %137, align 8
  %140 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %7, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %7, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %141, %143
  %145 = call i32 (i64, i8*, ...) @sscanf(i64 %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64* %12, i32* %9)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 1
  br i1 %147, label %148, label %153

148:                                              ; preds = %134
  %149 = load %struct.device*, %struct.device** %6, align 8
  %150 = call i32 @dev_err(%struct.device* %149, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %8, align 4
  br label %314

153:                                              ; preds = %134
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %7, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %157, %155
  store i64 %158, i64* %156, align 8
  %159 = load i64, i64* %11, align 8
  %160 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %161 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %159, %162
  br i1 %163, label %164, label %196

164:                                              ; preds = %153
  %165 = load i64, i64* %12, align 8
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %164
  %168 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %169 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %167, %164
  %173 = load %struct.device*, %struct.device** %6, align 8
  %174 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %173, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  br label %195

175:                                              ; preds = %167
  %176 = load i64, i64* %12, align 8
  %177 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %178 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %176, %179
  br i1 %180, label %181, label %187

181:                                              ; preds = %175
  %182 = load %struct.device*, %struct.device** %6, align 8
  %183 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %184 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @dev_dbg(%struct.device* %182, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i64 %185)
  store i32 0, i32* %8, align 4
  br label %314

187:                                              ; preds = %175
  %188 = load %struct.device*, %struct.device** %6, align 8
  %189 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %190 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* %12, align 8
  %193 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %188, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0), i64 %191, i64 %192)
  br label %194

194:                                              ; preds = %187
  br label %195

195:                                              ; preds = %194, %172
  br label %203

196:                                              ; preds = %153
  %197 = load %struct.device*, %struct.device** %6, align 8
  %198 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %199 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* %11, align 8
  %202 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %197, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), i64 %200, i64 %201)
  br label %203

203:                                              ; preds = %196, %195
  %204 = load i64, i64* @MXT_OBJECT_START, align 8
  %205 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %206 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %205, i32 0, i32 5
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = sext i32 %209 to i64
  %211 = mul i64 %210, 4
  %212 = add i64 %204, %211
  %213 = load i64, i64* @MXT_INFO_CHECKSUM_SIZE, align 8
  %214 = add i64 %212, %213
  %215 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %7, i32 0, i32 0
  store i64 %214, i64* %215, align 8
  %216 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %217 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %7, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = sub nsw i64 %218, %220
  %222 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %7, i32 0, i32 1
  store i64 %221, i64* %222, align 8
  %223 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %7, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = load i32, i32* @GFP_KERNEL, align 4
  %226 = call i64 @kzalloc(i64 %224, i32 %225)
  %227 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %7, i32 0, i32 3
  store i64 %226, i64* %227, align 8
  %228 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %7, i32 0, i32 3
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %234, label %231

231:                                              ; preds = %203
  %232 = load i32, i32* @ENOMEM, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %8, align 4
  br label %314

234:                                              ; preds = %203
  %235 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %236 = call i32 @mxt_prepare_cfg_mem(%struct.mxt_data* %235, %struct.mxt_cfg* %7)
  store i32 %236, i32* %8, align 4
  %237 = load i32, i32* %8, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %234
  br label %310

240:                                              ; preds = %234
  %241 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %242 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %240
  %246 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %247 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %246, i32 0, i32 3
  %248 = load i64, i64* %247, align 8
  store i64 %248, i64* %14, align 8
  br label %262

249:                                              ; preds = %240
  %250 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %251 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %250, i32 0, i32 4
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %249
  %255 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %256 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %255, i32 0, i32 4
  %257 = load i64, i64* %256, align 8
  store i64 %257, i64* %14, align 8
  br label %261

258:                                              ; preds = %249
  %259 = load %struct.device*, %struct.device** %6, align 8
  %260 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %259, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  br label %261

261:                                              ; preds = %258, %254
  br label %262

262:                                              ; preds = %261, %245
  %263 = load i64, i64* %14, align 8
  %264 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %7, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = icmp sgt i64 %263, %265
  br i1 %266, label %267, label %289

267:                                              ; preds = %262
  %268 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %7, i32 0, i32 3
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* %14, align 8
  %271 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %7, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = sub nsw i64 %270, %272
  %274 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %7, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = call i64 @mxt_calculate_crc(i64 %269, i64 %273, i64 %275)
  store i64 %276, i64* %13, align 8
  %277 = load i64, i64* %12, align 8
  %278 = icmp sgt i64 %277, 0
  br i1 %278, label %279, label %288

279:                                              ; preds = %267
  %280 = load i64, i64* %12, align 8
  %281 = load i64, i64* %13, align 8
  %282 = icmp ne i64 %280, %281
  br i1 %282, label %283, label %288

283:                                              ; preds = %279
  %284 = load %struct.device*, %struct.device** %6, align 8
  %285 = load i64, i64* %13, align 8
  %286 = load i64, i64* %12, align 8
  %287 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %284, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.13, i64 0, i64 0), i64 %285, i64 %286)
  br label %288

288:                                              ; preds = %283, %279, %267
  br label %289

289:                                              ; preds = %288, %262
  %290 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %291 = call i32 @mxt_upload_cfg_mem(%struct.mxt_data* %290, %struct.mxt_cfg* %7)
  store i32 %291, i32* %8, align 4
  %292 = load i32, i32* %8, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %289
  br label %310

295:                                              ; preds = %289
  %296 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %297 = load i32, i32* @MXT_COMMAND_BACKUPNV, align 4
  %298 = load i32, i32* @MXT_BACKUP_VALUE, align 4
  %299 = call i32 @mxt_update_crc(%struct.mxt_data* %296, i32 %297, i32 %298)
  %300 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %301 = call i32 @mxt_soft_reset(%struct.mxt_data* %300)
  store i32 %301, i32* %8, align 4
  %302 = load i32, i32* %8, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %295
  br label %310

305:                                              ; preds = %295
  %306 = load %struct.device*, %struct.device** %6, align 8
  %307 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %306, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  %308 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %309 = call i32 @mxt_init_t7_power_cfg(%struct.mxt_data* %308)
  br label %310

310:                                              ; preds = %305, %304, %294, %239
  %311 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %7, i32 0, i32 3
  %312 = load i64, i64* %311, align 8
  %313 = call i32 @kfree(i64 %312)
  br label %314

314:                                              ; preds = %310, %231, %181, %148, %129, %115, %100, %76, %49
  %315 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %7, i32 0, i32 2
  %316 = load i64, i64* %315, align 8
  %317 = call i32 @kfree(i64 %316)
  %318 = load i32, i32* %8, align 4
  store i32 %318, i32* %3, align 4
  br label %319

319:                                              ; preds = %314, %31
  %320 = load i32, i32* %3, align 4
  ret i32 %320
}

declare dso_local i64 @kmemdup_nul(i32, i32, i32) #1

declare dso_local i32 @mxt_update_crc(%struct.mxt_data*, i32, i32) #1

declare dso_local i64 @strncmp(i64, i32, i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @sscanf(i64, i8*, ...) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i64 @kzalloc(i64, i32) #1

declare dso_local i32 @mxt_prepare_cfg_mem(%struct.mxt_data*, %struct.mxt_cfg*) #1

declare dso_local i64 @mxt_calculate_crc(i64, i64, i64) #1

declare dso_local i32 @mxt_upload_cfg_mem(%struct.mxt_data*, %struct.mxt_cfg*) #1

declare dso_local i32 @mxt_soft_reset(%struct.mxt_data*) #1

declare dso_local i32 @mxt_init_t7_power_cfg(%struct.mxt_data*) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
