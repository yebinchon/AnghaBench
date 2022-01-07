; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_init_hotplug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_init_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"detect extensions..\0A\00", align 1
@WIIPROTO_FLAG_EXT_ACTIVE = common dso_local global i32 0, align 4
@WIIPROTO_FLAG_MP_ACTIVE = common dso_local global i32 0, align 4
@WIIPROTO_FLAG_NO_MP = common dso_local global i32 0, align 4
@WIIMOTE_EXT_UNKNOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot detect extension; %6phC\0A\00", align 1
@WIIMOTE_EXT_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"detected extension: %s\0A\00", align 1
@wiimote_exttype_names = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"detected extension: Nintendo Wii Motion Plus\0A\00", align 1
@WIIPROTO_FLAG_MP_USED = common dso_local global i32 0, align 4
@WIIPROTO_FLAG_BUILTIN_MP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@WIIPROTO_FLAG_EXT_PLUGGED = common dso_local global i32 0, align 4
@WIIPROTO_FLAG_MP_PLUGGED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"detected extensions: MP: %d EXT: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_data*)* @wiimote_init_hotplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiimote_init_hotplug(%struct.wiimote_data* %0) #0 {
  %2 = alloca %struct.wiimote_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [6 x i64], align 16
  %5 = alloca [6 x i64], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wiimote_data* %0, %struct.wiimote_data** %2, align 8
  %8 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %9 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (i32, i8*, ...) @hid_dbg(i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %13 = call i32 @wiimote_cmd_acquire_noint(%struct.wiimote_data* %12)
  %14 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %15 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = call i32 @spin_lock_irq(i32* %16)
  %18 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %19 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @WIIPROTO_FLAG_EXT_ACTIVE, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %25 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %23
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* @WIIPROTO_FLAG_MP_ACTIVE, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %32 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %30
  store i32 %35, i32* %33, align 8
  %36 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %37 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = call i32 @spin_unlock_irq(i32* %38)
  %40 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %41 = call i32 @wiimote_cmd_init_ext(%struct.wiimote_data* %40)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @WIIPROTO_FLAG_NO_MP, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %53

47:                                               ; preds = %1
  %48 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %49 = call i32 @wiimote_cmd_init_mp(%struct.wiimote_data* %48)
  %50 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %51 = getelementptr inbounds [6 x i64], [6 x i64]* %5, i64 0, i64 0
  %52 = call i32 @wiimote_cmd_read_mp(%struct.wiimote_data* %50, i64* %51)
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %47, %46
  %54 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %55 = getelementptr inbounds [6 x i64], [6 x i64]* %4, i64 0, i64 0
  %56 = call i64 @wiimote_cmd_read_ext(%struct.wiimote_data* %54, i64* %55)
  store i64 %56, i64* %3, align 8
  %57 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %58 = call i32 @wiimote_cmd_release(%struct.wiimote_data* %57)
  %59 = load i64, i64* %3, align 8
  %60 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %61 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %59, %63
  br i1 %64, label %65, label %108

65:                                               ; preds = %53
  %66 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %67 = call i32 @wiimote_ext_unload(%struct.wiimote_data* %66)
  %68 = load i64, i64* %3, align 8
  %69 = load i64, i64* @WIIMOTE_EXT_UNKNOWN, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %73 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds [6 x i64], [6 x i64]* %4, i64 0, i64 0
  %76 = call i32 (i32, i8*, ...) @hid_info(i32 %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64* %75)
  br label %107

77:                                               ; preds = %65
  %78 = load i64, i64* %3, align 8
  %79 = load i64, i64* @WIIMOTE_EXT_NONE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %77
  %82 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %83 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  %85 = call i32 @spin_lock_irq(i32* %84)
  %86 = load i64, i64* @WIIMOTE_EXT_NONE, align 8
  %87 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %88 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  store i64 %86, i64* %89, align 8
  %90 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %91 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 3
  %93 = call i32 @spin_unlock_irq(i32* %92)
  br label %106

94:                                               ; preds = %77
  %95 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %96 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32*, i32** @wiimote_exttype_names, align 8
  %99 = load i64, i64* %3, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32, i8*, ...) @hid_info(i32 %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %104 = load i64, i64* %3, align 8
  %105 = call i32 @wiimote_ext_load(%struct.wiimote_data* %103, i64 %104)
  br label %106

106:                                              ; preds = %94, %81
  br label %107

107:                                              ; preds = %106, %71
  br label %108

108:                                              ; preds = %107, %53
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %108
  %112 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %113 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %111
  %118 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %119 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 (i32, i8*, ...) @hid_info(i32 %120, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %122 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %123 = call i32 @wiimote_mp_load(%struct.wiimote_data* %122)
  br label %124

124:                                              ; preds = %117, %111
  br label %135

125:                                              ; preds = %108
  %126 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %127 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %133 = call i32 @wiimote_mp_unload(%struct.wiimote_data* %132)
  br label %134

134:                                              ; preds = %131, %125
  br label %135

135:                                              ; preds = %134, %124
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @WIIPROTO_FLAG_MP_USED, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %135
  store i32 0, i32* %7, align 4
  br label %141

141:                                              ; preds = %140, %135
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %141
  %145 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %146 = call i32 @wiimote_cmd_acquire_noint(%struct.wiimote_data* %145)
  %147 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %148 = load i64, i64* %3, align 8
  %149 = call i32 @wiimote_cmd_map_mp(%struct.wiimote_data* %147, i64 %148)
  %150 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %151 = call i32 @wiimote_cmd_release(%struct.wiimote_data* %150)
  %152 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %153 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %152, i32 0, i32 2
  %154 = call i32 @del_timer_sync(i32* %153)
  br label %175

155:                                              ; preds = %141
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* @WIIPROTO_FLAG_BUILTIN_MP, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %174, label %160

160:                                              ; preds = %155
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* @WIIPROTO_FLAG_NO_MP, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %174, label %165

165:                                              ; preds = %160
  %166 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %167 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %166, i32 0, i32 2
  %168 = load i64, i64* @jiffies, align 8
  %169 = load i32, i32* @HZ, align 4
  %170 = mul nsw i32 %169, 4
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %168, %171
  %173 = call i32 @mod_timer(i32* %167, i64 %172)
  br label %174

174:                                              ; preds = %165, %160, %155
  br label %175

175:                                              ; preds = %174, %144
  %176 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %177 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 3
  %179 = call i32 @spin_lock_irq(i32* %178)
  %180 = load i32, i32* %7, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %231

182:                                              ; preds = %175
  %183 = load i32, i32* @WIIPROTO_FLAG_MP_ACTIVE, align 4
  %184 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %185 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, %183
  store i32 %188, i32* %186, align 8
  %189 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %190 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @WIIMOTE_EXT_NONE, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %210

195:                                              ; preds = %182
  %196 = load i32, i32* @WIIPROTO_FLAG_EXT_PLUGGED, align 4
  %197 = xor i32 %196, -1
  %198 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %199 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = and i32 %201, %197
  store i32 %202, i32* %200, align 8
  %203 = load i32, i32* @WIIPROTO_FLAG_MP_PLUGGED, align 4
  %204 = xor i32 %203, -1
  %205 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %206 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = and i32 %208, %204
  store i32 %209, i32* %207, align 8
  br label %230

210:                                              ; preds = %182
  %211 = load i32, i32* @WIIPROTO_FLAG_EXT_PLUGGED, align 4
  %212 = xor i32 %211, -1
  %213 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %214 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = and i32 %216, %212
  store i32 %217, i32* %215, align 8
  %218 = load i32, i32* @WIIPROTO_FLAG_MP_PLUGGED, align 4
  %219 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %220 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = or i32 %222, %218
  store i32 %223, i32* %221, align 8
  %224 = load i32, i32* @WIIPROTO_FLAG_EXT_ACTIVE, align 4
  %225 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %226 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = or i32 %228, %224
  store i32 %229, i32* %227, align 8
  br label %230

230:                                              ; preds = %210, %195
  br label %246

231:                                              ; preds = %175
  %232 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %233 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @WIIMOTE_EXT_NONE, align 8
  %237 = icmp ne i64 %235, %236
  br i1 %237, label %238, label %245

238:                                              ; preds = %231
  %239 = load i32, i32* @WIIPROTO_FLAG_EXT_ACTIVE, align 4
  %240 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %241 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = or i32 %243, %239
  store i32 %244, i32* %242, align 8
  br label %245

245:                                              ; preds = %238, %231
  br label %246

246:                                              ; preds = %245, %230
  %247 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %248 = call i32 @wiiproto_req_status(%struct.wiimote_data* %247)
  %249 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %250 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i32 0, i32 3
  %252 = call i32 @spin_unlock_irq(i32* %251)
  %253 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %254 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %257 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %261 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = call i32 (i32, i8*, ...) @hid_dbg(i32 %255, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %259, i64 %263)
  ret void
}

declare dso_local i32 @hid_dbg(i32, i8*, ...) #1

declare dso_local i32 @wiimote_cmd_acquire_noint(%struct.wiimote_data*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wiimote_cmd_init_ext(%struct.wiimote_data*) #1

declare dso_local i32 @wiimote_cmd_init_mp(%struct.wiimote_data*) #1

declare dso_local i32 @wiimote_cmd_read_mp(%struct.wiimote_data*, i64*) #1

declare dso_local i64 @wiimote_cmd_read_ext(%struct.wiimote_data*, i64*) #1

declare dso_local i32 @wiimote_cmd_release(%struct.wiimote_data*) #1

declare dso_local i32 @wiimote_ext_unload(%struct.wiimote_data*) #1

declare dso_local i32 @hid_info(i32, i8*, ...) #1

declare dso_local i32 @wiimote_ext_load(%struct.wiimote_data*, i64) #1

declare dso_local i32 @wiimote_mp_load(%struct.wiimote_data*) #1

declare dso_local i32 @wiimote_mp_unload(%struct.wiimote_data*) #1

declare dso_local i32 @wiimote_cmd_map_mp(%struct.wiimote_data*, i64) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @wiiproto_req_status(%struct.wiimote_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
