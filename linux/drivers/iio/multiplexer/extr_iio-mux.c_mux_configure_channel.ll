; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/multiplexer/extr_iio-mux.c_mux_configure_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/multiplexer/extr_iio-mux.c_mux_configure_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mux = type { %struct.TYPE_6__*, %struct.TYPE_7__*, i32, %struct.iio_chan_spec*, %struct.mux_child* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.iio_chan_spec* }
%struct.iio_chan_spec = type { i32, i8*, %struct.TYPE_6__*, i64, i32, i32, i32, i32 }
%struct.mux_child = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64* }

@.str = private unnamed_addr constant [35 x i8] c"failed to get parent channel type\0A\00", align 1
@IIO_CHAN_INFO_RAW = common dso_local global i32 0, align 4
@IIO_CHAN_INFO_SCALE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"too many channels\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to get ext_info '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"too large ext_info '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.mux*, i64, i8*, i32)* @mux_configure_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mux_configure_channel(%struct.device* %0, %struct.mux* %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.mux*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mux_child*, align 8
  %13 = alloca %struct.iio_chan_spec*, align 8
  %14 = alloca %struct.iio_chan_spec*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.mux* %1, %struct.mux** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.mux*, %struct.mux** %8, align 8
  %20 = getelementptr inbounds %struct.mux, %struct.mux* %19, i32 0, i32 4
  %21 = load %struct.mux_child*, %struct.mux_child** %20, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.mux_child, %struct.mux_child* %21, i64 %23
  store %struct.mux_child* %24, %struct.mux_child** %12, align 8
  %25 = load %struct.mux*, %struct.mux** %8, align 8
  %26 = getelementptr inbounds %struct.mux, %struct.mux* %25, i32 0, i32 3
  %27 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %27, i64 %29
  store %struct.iio_chan_spec* %30, %struct.iio_chan_spec** %13, align 8
  %31 = load %struct.mux*, %struct.mux** %8, align 8
  %32 = getelementptr inbounds %struct.mux, %struct.mux* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %34, align 8
  store %struct.iio_chan_spec* %35, %struct.iio_chan_spec** %14, align 8
  store i8* null, i8** %15, align 8
  %36 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %13, align 8
  %37 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %14, align 8
  %39 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %13, align 8
  %42 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %13, align 8
  %45 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.mux*, %struct.mux** %8, align 8
  %47 = getelementptr inbounds %struct.mux, %struct.mux* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %13, align 8
  %50 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %49, i32 0, i32 2
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** %50, align 8
  %51 = load %struct.mux*, %struct.mux** %8, align 8
  %52 = getelementptr inbounds %struct.mux, %struct.mux* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %13, align 8
  %55 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %54, i32 0, i32 6
  %56 = call i32 @iio_get_channel_type(%struct.TYPE_7__* %53, i32* %55)
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %18, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %5
  %60 = load %struct.device*, %struct.device** %7, align 8
  %61 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* %18, align 4
  store i32 %62, i32* %6, align 4
  br label %282

63:                                               ; preds = %5
  %64 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %14, align 8
  %65 = load i32, i32* @IIO_CHAN_INFO_RAW, align 4
  %66 = call i64 @iio_channel_has_info(%struct.iio_chan_spec* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load i32, i32* @IIO_CHAN_INFO_RAW, align 4
  %70 = call i32 @BIT(i32 %69)
  %71 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %13, align 8
  %72 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %68, %63
  %76 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %14, align 8
  %77 = load i32, i32* @IIO_CHAN_INFO_SCALE, align 4
  %78 = call i64 @iio_channel_has_info(%struct.iio_chan_spec* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load i32, i32* @IIO_CHAN_INFO_SCALE, align 4
  %82 = call i32 @BIT(i32 %81)
  %83 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %13, align 8
  %84 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %80, %75
  %88 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %14, align 8
  %89 = load i32, i32* @IIO_CHAN_INFO_RAW, align 4
  %90 = call i64 @iio_channel_has_available(%struct.iio_chan_spec* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load i32, i32* @IIO_CHAN_INFO_RAW, align 4
  %94 = call i32 @BIT(i32 %93)
  %95 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %13, align 8
  %96 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %92, %87
  %100 = load i64, i64* %9, align 8
  %101 = load %struct.mux*, %struct.mux** %8, align 8
  %102 = getelementptr inbounds %struct.mux, %struct.mux* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @mux_control_states(i32 %103)
  %105 = icmp sge i64 %100, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = load %struct.device*, %struct.device** %7, align 8
  %108 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %6, align 4
  br label %282

111:                                              ; preds = %99
  %112 = load i64, i64* %9, align 8
  %113 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %13, align 8
  %114 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %113, i32 0, i32 3
  store i64 %112, i64* %114, align 8
  %115 = load %struct.mux*, %struct.mux** %8, align 8
  %116 = getelementptr inbounds %struct.mux, %struct.mux* %115, i32 0, i32 1
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = call i32 @iio_get_channel_ext_info_count(%struct.TYPE_7__* %117)
  store i32 %118, i32* %16, align 4
  %119 = load i32, i32* %16, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %111
  %122 = load %struct.device*, %struct.device** %7, align 8
  %123 = load i32, i32* @PAGE_SIZE, align 4
  %124 = load i32, i32* @GFP_KERNEL, align 4
  %125 = call i8* @devm_kzalloc(%struct.device* %122, i32 %123, i32 %124)
  store i8* %125, i8** %15, align 8
  %126 = load i8*, i8** %15, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %121
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %6, align 4
  br label %282

131:                                              ; preds = %121
  br label %132

132:                                              ; preds = %131, %111
  %133 = load %struct.device*, %struct.device** %7, align 8
  %134 = load i32, i32* %16, align 4
  %135 = load i32, i32* @GFP_KERNEL, align 4
  %136 = call %struct.TYPE_8__* @devm_kcalloc(%struct.device* %133, i32 %134, i32 16, i32 %135)
  %137 = load %struct.mux_child*, %struct.mux_child** %12, align 8
  %138 = getelementptr inbounds %struct.mux_child, %struct.mux_child* %137, i32 0, i32 0
  store %struct.TYPE_8__* %136, %struct.TYPE_8__** %138, align 8
  %139 = load %struct.mux_child*, %struct.mux_child** %12, align 8
  %140 = getelementptr inbounds %struct.mux_child, %struct.mux_child* %139, i32 0, i32 0
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = icmp ne %struct.TYPE_8__* %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %132
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %6, align 4
  br label %282

146:                                              ; preds = %132
  store i32 0, i32* %17, align 4
  br label %147

147:                                              ; preds = %271, %146
  %148 = load i32, i32* %17, align 4
  %149 = load i32, i32* %16, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %274

151:                                              ; preds = %147
  %152 = load %struct.mux_child*, %struct.mux_child** %12, align 8
  %153 = getelementptr inbounds %struct.mux_child, %struct.mux_child* %152, i32 0, i32 0
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = load i32, i32* %17, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  store i32 -1, i32* %158, align 8
  %159 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %14, align 8
  %160 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %159, i32 0, i32 2
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = load i32, i32* %17, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %151
  br label %271

169:                                              ; preds = %151
  %170 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %14, align 8
  %171 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %170, i32 0, i32 2
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = load i32, i32* %17, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %169
  br label %271

180:                                              ; preds = %169
  %181 = load %struct.mux*, %struct.mux** %8, align 8
  %182 = getelementptr inbounds %struct.mux, %struct.mux* %181, i32 0, i32 1
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %182, align 8
  %184 = load %struct.mux*, %struct.mux** %8, align 8
  %185 = getelementptr inbounds %struct.mux, %struct.mux* %184, i32 0, i32 0
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = load i32, i32* %17, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i8*, i8** %15, align 8
  %193 = call i32 @iio_read_channel_ext_info(%struct.TYPE_7__* %183, i32 %191, i8* %192)
  store i32 %193, i32* %18, align 4
  %194 = load i32, i32* %18, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %208

196:                                              ; preds = %180
  %197 = load %struct.device*, %struct.device** %7, align 8
  %198 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %14, align 8
  %199 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %198, i32 0, i32 2
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = load i32, i32* %17, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %197, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %205)
  %207 = load i32, i32* %18, align 4
  store i32 %207, i32* %6, align 4
  br label %282

208:                                              ; preds = %180
  %209 = load i32, i32* %18, align 4
  %210 = load i32, i32* @PAGE_SIZE, align 4
  %211 = icmp sge i32 %209, %210
  br i1 %211, label %212, label %225

212:                                              ; preds = %208
  %213 = load %struct.device*, %struct.device** %7, align 8
  %214 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %14, align 8
  %215 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %214, i32 0, i32 2
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = load i32, i32* %17, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %213, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %221)
  %223 = load i32, i32* @EINVAL, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %6, align 4
  br label %282

225:                                              ; preds = %208
  %226 = load %struct.device*, %struct.device** %7, align 8
  %227 = load i8*, i8** %15, align 8
  %228 = load i32, i32* %18, align 4
  %229 = add nsw i32 %228, 1
  %230 = load i32, i32* @GFP_KERNEL, align 4
  %231 = call i64* @devm_kmemdup(%struct.device* %226, i8* %227, i32 %229, i32 %230)
  %232 = load %struct.mux_child*, %struct.mux_child** %12, align 8
  %233 = getelementptr inbounds %struct.mux_child, %struct.mux_child* %232, i32 0, i32 0
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %233, align 8
  %235 = load i32, i32* %17, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 1
  store i64* %231, i64** %238, align 8
  %239 = load %struct.mux_child*, %struct.mux_child** %12, align 8
  %240 = getelementptr inbounds %struct.mux_child, %struct.mux_child* %239, i32 0, i32 0
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %240, align 8
  %242 = load i32, i32* %17, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 1
  %246 = load i64*, i64** %245, align 8
  %247 = icmp ne i64* %246, null
  br i1 %247, label %251, label %248

248:                                              ; preds = %225
  %249 = load i32, i32* @ENOMEM, align 4
  %250 = sub nsw i32 0, %249
  store i32 %250, i32* %6, align 4
  br label %282

251:                                              ; preds = %225
  %252 = load %struct.mux_child*, %struct.mux_child** %12, align 8
  %253 = getelementptr inbounds %struct.mux_child, %struct.mux_child* %252, i32 0, i32 0
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %253, align 8
  %255 = load i32, i32* %17, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 1
  %259 = load i64*, i64** %258, align 8
  %260 = load i32, i32* %18, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i64, i64* %259, i64 %261
  store i64 0, i64* %262, align 8
  %263 = load i32, i32* %18, align 4
  %264 = load %struct.mux_child*, %struct.mux_child** %12, align 8
  %265 = getelementptr inbounds %struct.mux_child, %struct.mux_child* %264, i32 0, i32 0
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %265, align 8
  %267 = load i32, i32* %17, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 0
  store i32 %263, i32* %270, align 8
  br label %271

271:                                              ; preds = %251, %179, %168
  %272 = load i32, i32* %17, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %17, align 4
  br label %147

274:                                              ; preds = %147
  %275 = load i8*, i8** %15, align 8
  %276 = icmp ne i8* %275, null
  br i1 %276, label %277, label %281

277:                                              ; preds = %274
  %278 = load %struct.device*, %struct.device** %7, align 8
  %279 = load i8*, i8** %15, align 8
  %280 = call i32 @devm_kfree(%struct.device* %278, i8* %279)
  br label %281

281:                                              ; preds = %277, %274
  store i32 0, i32* %6, align 4
  br label %282

282:                                              ; preds = %281, %248, %212, %196, %143, %128, %106, %59
  %283 = load i32, i32* %6, align 4
  ret i32 %283
}

declare dso_local i32 @iio_get_channel_type(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @iio_channel_has_info(%struct.iio_chan_spec*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @iio_channel_has_available(%struct.iio_chan_spec*, i32) #1

declare dso_local i64 @mux_control_states(i32) #1

declare dso_local i32 @iio_get_channel_ext_info_count(%struct.TYPE_7__*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @iio_read_channel_ext_info(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i64* @devm_kmemdup(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @devm_kfree(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
