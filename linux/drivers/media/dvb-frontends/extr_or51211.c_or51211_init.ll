; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_or51211.c_or51211_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_or51211.c_or51211_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.or51211_state* }
%struct.or51211_state = type { i32, %struct.or51211_config* }
%struct.or51211_config = type { i32 (%struct.dvb_frontend.0*, %struct.firmware**, i32)*, i32 }
%struct.dvb_frontend.0 = type opaque
%struct.firmware = type opaque
%struct.firmware.1 = type { i32 }

@__const.or51211_init.get_ver_buf = private unnamed_addr constant [5 x i8] c"\04\000\00\00", align 1
@.str = private unnamed_addr constant [37 x i8] c"Waiting for firmware upload (%s)...\0A\00", align 1
@OR51211_DEFAULT_FIRMWARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Got Hotplug firmware\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"No firmware uploaded (timeout or file not found?)\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Writing firmware to device failed!\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Firmware upload complete.\0A\00", align 1
@cmd_buf = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"Load DVR Error 5\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Load DVR Error A\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Load DVR Error B\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Load DVR Error C\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Load DVR Error D\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Load DVR Error 6 - %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Load DVR Error 7 - %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"read_fwbits %10ph\0A\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"ver TU%02x%02x%02x VSB mode %02x Status %02x\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Load DVR Error 8\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Load DVR Error 9\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @or51211_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @or51211_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.or51211_state*, align 8
  %5 = alloca %struct.or51211_config*, align 8
  %6 = alloca %struct.firmware.1*, align 8
  %7 = alloca [5 x i8], align 1
  %8 = alloca [14 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.or51211_state*, %struct.or51211_state** %12, align 8
  store %struct.or51211_state* %13, %struct.or51211_state** %4, align 8
  %14 = load %struct.or51211_state*, %struct.or51211_state** %4, align 8
  %15 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %14, i32 0, i32 1
  %16 = load %struct.or51211_config*, %struct.or51211_config** %15, align 8
  store %struct.or51211_config* %16, %struct.or51211_config** %5, align 8
  %17 = bitcast [5 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.or51211_init.get_ver_buf, i32 0, i32 0), i64 5, i1 false)
  %18 = load %struct.or51211_state*, %struct.or51211_state** %4, align 8
  %19 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %242, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @OR51211_DEFAULT_FIRMWARE, align 4
  %24 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.or51211_config*, %struct.or51211_config** %5, align 8
  %26 = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %25, i32 0, i32 0
  %27 = load i32 (%struct.dvb_frontend.0*, %struct.firmware**, i32)*, i32 (%struct.dvb_frontend.0*, %struct.firmware**, i32)** %26, align 8
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %29 = bitcast %struct.dvb_frontend* %28 to %struct.dvb_frontend.0*
  %30 = bitcast %struct.firmware.1** %6 to %struct.firmware**
  %31 = load i32, i32* @OR51211_DEFAULT_FIRMWARE, align 4
  %32 = call i32 %27(%struct.dvb_frontend.0* %29, %struct.firmware** %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %22
  %37 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %2, align 4
  br label %243

39:                                               ; preds = %22
  %40 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %41 = load %struct.firmware.1*, %struct.firmware.1** %6, align 8
  %42 = call i32 @or51211_load_firmware(%struct.dvb_frontend* %40, %struct.firmware.1* %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.firmware.1*, %struct.firmware.1** %6, align 8
  %44 = call i32 @release_firmware(%struct.firmware.1* %43)
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %2, align 4
  br label %243

50:                                               ; preds = %39
  %51 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %52 = load %struct.or51211_state*, %struct.or51211_state** %4, align 8
  %53 = load %struct.or51211_state*, %struct.or51211_state** %4, align 8
  %54 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %53, i32 0, i32 1
  %55 = load %struct.or51211_config*, %struct.or51211_config** %54, align 8
  %56 = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** @cmd_buf, align 8
  %59 = call i64 @i2c_writebytes(%struct.or51211_state* %52, i32 %57, i8* %58, i32 3)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %243

63:                                               ; preds = %50
  %64 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 0
  store i8 4, i8* %64, align 1
  %65 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 1
  store i8 0, i8* %65, align 1
  %66 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 2
  store i8 3, i8* %66, align 1
  %67 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 3
  store i8 0, i8* %67, align 1
  %68 = call i32 @msleep(i32 30)
  %69 = load %struct.or51211_state*, %struct.or51211_state** %4, align 8
  %70 = load %struct.or51211_state*, %struct.or51211_state** %4, align 8
  %71 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %70, i32 0, i32 1
  %72 = load %struct.or51211_config*, %struct.or51211_config** %71, align 8
  %73 = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 0
  %76 = call i64 @i2c_writebytes(%struct.or51211_state* %69, i32 %74, i8* %75, i32 3)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %63
  %79 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %243

80:                                               ; preds = %63
  %81 = call i32 @msleep(i32 3)
  %82 = load %struct.or51211_state*, %struct.or51211_state** %4, align 8
  %83 = load %struct.or51211_state*, %struct.or51211_state** %4, align 8
  %84 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %83, i32 0, i32 1
  %85 = load %struct.or51211_config*, %struct.or51211_config** %84, align 8
  %86 = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 10
  %89 = call i64 @i2c_readbytes(%struct.or51211_state* %82, i32 %87, i8* %88, i32 2)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %80
  %92 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %243

93:                                               ; preds = %80
  %94 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 0
  store i8 4, i8* %94, align 1
  %95 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 1
  store i8 0, i8* %95, align 1
  %96 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 2
  store i8 1, i8* %96, align 1
  %97 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 3
  store i8 0, i8* %97, align 1
  %98 = call i32 @msleep(i32 20)
  %99 = load %struct.or51211_state*, %struct.or51211_state** %4, align 8
  %100 = load %struct.or51211_state*, %struct.or51211_state** %4, align 8
  %101 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %100, i32 0, i32 1
  %102 = load %struct.or51211_config*, %struct.or51211_config** %101, align 8
  %103 = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 0
  %106 = call i64 @i2c_writebytes(%struct.or51211_state* %99, i32 %104, i8* %105, i32 3)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %93
  %109 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %243

110:                                              ; preds = %93
  %111 = call i32 @msleep(i32 3)
  %112 = load %struct.or51211_state*, %struct.or51211_state** %4, align 8
  %113 = load %struct.or51211_state*, %struct.or51211_state** %4, align 8
  %114 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %113, i32 0, i32 1
  %115 = load %struct.or51211_config*, %struct.or51211_config** %114, align 8
  %116 = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 12
  %119 = call i64 @i2c_readbytes(%struct.or51211_state* %112, i32 %117, i8* %118, i32 2)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %110
  %122 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %243

123:                                              ; preds = %110
  store i32 0, i32* %10, align 4
  br label %124

124:                                              ; preds = %131, %123
  %125 = load i32, i32* %10, align 4
  %126 = icmp slt i32 %125, 8
  br i1 %126, label %127, label %134

127:                                              ; preds = %124
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 %129
  store i8 -19, i8* %130, align 1
  br label %131

131:                                              ; preds = %127
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %124

134:                                              ; preds = %124
  store i32 0, i32* %10, align 4
  br label %135

135:                                              ; preds = %188, %134
  %136 = load i32, i32* %10, align 4
  %137 = icmp slt i32 %136, 5
  br i1 %137, label %138, label %191

138:                                              ; preds = %135
  %139 = call i32 @msleep(i32 30)
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, 1
  %142 = trunc i32 %141 to i8
  %143 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 4
  store i8 %142, i8* %143, align 1
  %144 = load %struct.or51211_state*, %struct.or51211_state** %4, align 8
  %145 = load %struct.or51211_state*, %struct.or51211_state** %4, align 8
  %146 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %145, i32 0, i32 1
  %147 = load %struct.or51211_config*, %struct.or51211_config** %146, align 8
  %148 = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %151 = call i64 @i2c_writebytes(%struct.or51211_state* %144, i32 %149, i8* %150, i32 5)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %138
  %154 = load i32, i32* %10, align 4
  %155 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %154)
  store i32 -1, i32* %2, align 4
  br label %243

156:                                              ; preds = %138
  %157 = call i32 @msleep(i32 3)
  %158 = load %struct.or51211_state*, %struct.or51211_state** %4, align 8
  %159 = load %struct.or51211_state*, %struct.or51211_state** %4, align 8
  %160 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %159, i32 0, i32 1
  %161 = load %struct.or51211_config*, %struct.or51211_config** %160, align 8
  %162 = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %10, align 4
  %165 = mul nsw i32 %164, 2
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 %166
  %168 = call i64 @i2c_readbytes(%struct.or51211_state* %158, i32 %163, i8* %167, i32 2)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %156
  %171 = load i32, i32* %10, align 4
  %172 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %171)
  store i32 -1, i32* %2, align 4
  br label %243

173:                                              ; preds = %156
  %174 = load i32, i32* %10, align 4
  %175 = mul nsw i32 %174, 2
  %176 = add nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = load i32, i32* %10, align 4
  %182 = add nsw i32 %181, 1
  %183 = icmp ne i32 %180, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %173
  %185 = load i32, i32* %10, align 4
  %186 = add nsw i32 %185, -1
  store i32 %186, i32* %10, align 4
  br label %187

187:                                              ; preds = %184, %173
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %10, align 4
  br label %135

191:                                              ; preds = %135
  %192 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 0
  %193 = call i32 @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8* %192)
  %194 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 2
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 4
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 6
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 12
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 10
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0), i32 %196, i32 %199, i32 %202, i32 %205, i32 %208)
  %210 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 0
  store i8 4, i8* %210, align 1
  %211 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 1
  store i8 0, i8* %211, align 1
  %212 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 2
  store i8 3, i8* %212, align 1
  %213 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 3
  store i8 0, i8* %213, align 1
  %214 = call i32 @msleep(i32 20)
  %215 = load %struct.or51211_state*, %struct.or51211_state** %4, align 8
  %216 = load %struct.or51211_state*, %struct.or51211_state** %4, align 8
  %217 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %216, i32 0, i32 1
  %218 = load %struct.or51211_config*, %struct.or51211_config** %217, align 8
  %219 = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 0
  %222 = call i64 @i2c_writebytes(%struct.or51211_state* %215, i32 %220, i8* %221, i32 3)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %191
  %225 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %243

226:                                              ; preds = %191
  %227 = call i32 @msleep(i32 20)
  %228 = load %struct.or51211_state*, %struct.or51211_state** %4, align 8
  %229 = load %struct.or51211_state*, %struct.or51211_state** %4, align 8
  %230 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %229, i32 0, i32 1
  %231 = load %struct.or51211_config*, %struct.or51211_config** %230, align 8
  %232 = getelementptr inbounds %struct.or51211_config, %struct.or51211_config* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 8
  %235 = call i64 @i2c_readbytes(%struct.or51211_state* %228, i32 %233, i8* %234, i32 2)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %226
  %238 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %243

239:                                              ; preds = %226
  %240 = load %struct.or51211_state*, %struct.or51211_state** %4, align 8
  %241 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %240, i32 0, i32 0
  store i32 1, i32* %241, align 8
  br label %242

242:                                              ; preds = %239, %1
  store i32 0, i32* %2, align 4
  br label %243

243:                                              ; preds = %242, %237, %224, %170, %153, %121, %108, %91, %78, %61, %47, %36
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pr_info(i8*, ...) #2

declare dso_local i32 @pr_warn(i8*, ...) #2

declare dso_local i32 @or51211_load_firmware(%struct.dvb_frontend*, %struct.firmware.1*) #2

declare dso_local i32 @release_firmware(%struct.firmware.1*) #2

declare dso_local i64 @i2c_writebytes(%struct.or51211_state*, i32, i8*, i32) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i64 @i2c_readbytes(%struct.or51211_state*, i32, i8*, i32) #2

declare dso_local i32 @dprintk(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
