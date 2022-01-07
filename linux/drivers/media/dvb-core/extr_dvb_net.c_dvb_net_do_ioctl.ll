; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_net.c_dvb_net_do_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_net.c_dvb_net_do_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.dvb_device* }
%struct.dvb_device = type { %struct.TYPE_2__*, %struct.dvb_net* }
%struct.TYPE_2__ = type { i32 }
%struct.dvb_net = type { i32, %struct.net_device**, i32* }
%struct.net_device = type { i32 }
%struct.dvb_net_if = type { i32, i32, i32 }
%struct.dvb_net_priv = type { i32, i32 }
%struct.__dvb_net_if_old = type { i32, i32 }

@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@DVB_NET_DEVICES_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DVB_NET_FEEDTYPE_MPE = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i8*)* @dvb_net_do_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_net_do_ioctl(%struct.file* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dvb_device*, align 8
  %9 = alloca %struct.dvb_net*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dvb_net_if*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca %struct.dvb_net_priv*, align 8
  %15 = alloca %struct.dvb_net_if*, align 8
  %16 = alloca %struct.__dvb_net_if_old*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.net_device*, align 8
  %19 = alloca %struct.dvb_net_priv*, align 8
  %20 = alloca %struct.__dvb_net_if_old*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %21 = load %struct.file*, %struct.file** %5, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 1
  %23 = load %struct.dvb_device*, %struct.dvb_device** %22, align 8
  store %struct.dvb_device* %23, %struct.dvb_device** %8, align 8
  %24 = load %struct.dvb_device*, %struct.dvb_device** %8, align 8
  %25 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %24, i32 0, i32 1
  %26 = load %struct.dvb_net*, %struct.dvb_net** %25, align 8
  store %struct.dvb_net* %26, %struct.dvb_net** %9, align 8
  store i32 0, i32* %10, align 4
  %27 = load %struct.file*, %struct.file** %5, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @O_ACCMODE, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @O_RDONLY, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load i32, i32* @EPERM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %255

37:                                               ; preds = %3
  %38 = load %struct.dvb_net*, %struct.dvb_net** %9, align 8
  %39 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %38, i32 0, i32 0
  %40 = call i64 @mutex_lock_interruptible(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @ERESTARTSYS, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %255

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  switch i32 %46, label %246 [
    i32 132, label %47
    i32 131, label %90
    i32 130, label %135
    i32 129, label %165
    i32 128, label %206
  ]

47:                                               ; preds = %45
  %48 = load i8*, i8** %7, align 8
  %49 = bitcast i8* %48 to %struct.dvb_net_if*
  store %struct.dvb_net_if* %49, %struct.dvb_net_if** %11, align 8
  %50 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %51 = call i32 @capable(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @EPERM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %10, align 4
  br label %250

56:                                               ; preds = %47
  %57 = load %struct.dvb_device*, %struct.dvb_device** %8, align 8
  %58 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @try_module_get(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %56
  %65 = load i32, i32* @EPERM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %10, align 4
  br label %250

67:                                               ; preds = %56
  %68 = load %struct.dvb_net*, %struct.dvb_net** %9, align 8
  %69 = load %struct.dvb_net_if*, %struct.dvb_net_if** %11, align 8
  %70 = getelementptr inbounds %struct.dvb_net_if, %struct.dvb_net_if* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.dvb_net_if*, %struct.dvb_net_if** %11, align 8
  %73 = getelementptr inbounds %struct.dvb_net_if, %struct.dvb_net_if* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dvb_net_add_if(%struct.dvb_net* %68, i32 %71, i32 %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %67
  %79 = load %struct.dvb_device*, %struct.dvb_device** %8, align 8
  %80 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @module_put(i32 %83)
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %10, align 4
  br label %250

86:                                               ; preds = %67
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.dvb_net_if*, %struct.dvb_net_if** %11, align 8
  %89 = getelementptr inbounds %struct.dvb_net_if, %struct.dvb_net_if* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  br label %249

90:                                               ; preds = %45
  %91 = load i8*, i8** %7, align 8
  %92 = bitcast i8* %91 to %struct.dvb_net_if*
  store %struct.dvb_net_if* %92, %struct.dvb_net_if** %15, align 8
  %93 = load %struct.dvb_net_if*, %struct.dvb_net_if** %15, align 8
  %94 = getelementptr inbounds %struct.dvb_net_if, %struct.dvb_net_if* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* @DVB_NET_DEVICES_MAX, align 8
  %98 = icmp uge i64 %96, %97
  br i1 %98, label %110, label %99

99:                                               ; preds = %90
  %100 = load %struct.dvb_net*, %struct.dvb_net** %9, align 8
  %101 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.dvb_net_if*, %struct.dvb_net_if** %15, align 8
  %104 = getelementptr inbounds %struct.dvb_net_if, %struct.dvb_net_if* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %102, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %99, %90
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %10, align 4
  br label %250

113:                                              ; preds = %99
  %114 = load %struct.dvb_net*, %struct.dvb_net** %9, align 8
  %115 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %114, i32 0, i32 1
  %116 = load %struct.net_device**, %struct.net_device*** %115, align 8
  %117 = load %struct.dvb_net_if*, %struct.dvb_net_if** %15, align 8
  %118 = getelementptr inbounds %struct.dvb_net_if, %struct.dvb_net_if* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.net_device*, %struct.net_device** %116, i64 %120
  %122 = load %struct.net_device*, %struct.net_device** %121, align 8
  store %struct.net_device* %122, %struct.net_device** %13, align 8
  %123 = load %struct.net_device*, %struct.net_device** %13, align 8
  %124 = call %struct.dvb_net_priv* @netdev_priv(%struct.net_device* %123)
  store %struct.dvb_net_priv* %124, %struct.dvb_net_priv** %14, align 8
  %125 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %14, align 8
  %126 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.dvb_net_if*, %struct.dvb_net_if** %15, align 8
  %129 = getelementptr inbounds %struct.dvb_net_if, %struct.dvb_net_if* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 4
  %130 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %14, align 8
  %131 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.dvb_net_if*, %struct.dvb_net_if** %15, align 8
  %134 = getelementptr inbounds %struct.dvb_net_if, %struct.dvb_net_if* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  br label %249

135:                                              ; preds = %45
  %136 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %137 = call i32 @capable(i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* @EPERM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %10, align 4
  br label %250

142:                                              ; preds = %135
  %143 = load i8*, i8** %7, align 8
  %144 = ptrtoint i8* %143 to i64
  %145 = load i64, i64* @DVB_NET_DEVICES_MAX, align 8
  %146 = icmp uge i64 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %10, align 4
  br label %250

150:                                              ; preds = %142
  %151 = load %struct.dvb_net*, %struct.dvb_net** %9, align 8
  %152 = load i8*, i8** %7, align 8
  %153 = ptrtoint i8* %152 to i64
  %154 = call i32 @dvb_net_remove_if(%struct.dvb_net* %151, i64 %153)
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %164, label %157

157:                                              ; preds = %150
  %158 = load %struct.dvb_device*, %struct.dvb_device** %8, align 8
  %159 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %158, i32 0, i32 0
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @module_put(i32 %162)
  br label %164

164:                                              ; preds = %157, %150
  br label %249

165:                                              ; preds = %45
  %166 = load i8*, i8** %7, align 8
  %167 = bitcast i8* %166 to %struct.__dvb_net_if_old*
  store %struct.__dvb_net_if_old* %167, %struct.__dvb_net_if_old** %16, align 8
  %168 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %169 = call i32 @capable(i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %165
  %172 = load i32, i32* @EPERM, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %10, align 4
  br label %250

174:                                              ; preds = %165
  %175 = load %struct.dvb_device*, %struct.dvb_device** %8, align 8
  %176 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %175, i32 0, i32 0
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @try_module_get(i32 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %174
  %183 = load i32, i32* @EPERM, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %10, align 4
  br label %250

185:                                              ; preds = %174
  %186 = load %struct.dvb_net*, %struct.dvb_net** %9, align 8
  %187 = load %struct.__dvb_net_if_old*, %struct.__dvb_net_if_old** %16, align 8
  %188 = getelementptr inbounds %struct.__dvb_net_if_old, %struct.__dvb_net_if_old* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @DVB_NET_FEEDTYPE_MPE, align 4
  %191 = call i32 @dvb_net_add_if(%struct.dvb_net* %186, i32 %189, i32 %190)
  store i32 %191, i32* %17, align 4
  %192 = load i32, i32* %17, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %185
  %195 = load %struct.dvb_device*, %struct.dvb_device** %8, align 8
  %196 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %195, i32 0, i32 0
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @module_put(i32 %199)
  %201 = load i32, i32* %17, align 4
  store i32 %201, i32* %10, align 4
  br label %250

202:                                              ; preds = %185
  %203 = load i32, i32* %17, align 4
  %204 = load %struct.__dvb_net_if_old*, %struct.__dvb_net_if_old** %16, align 8
  %205 = getelementptr inbounds %struct.__dvb_net_if_old, %struct.__dvb_net_if_old* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 4
  br label %249

206:                                              ; preds = %45
  %207 = load i8*, i8** %7, align 8
  %208 = bitcast i8* %207 to %struct.__dvb_net_if_old*
  store %struct.__dvb_net_if_old* %208, %struct.__dvb_net_if_old** %20, align 8
  %209 = load %struct.__dvb_net_if_old*, %struct.__dvb_net_if_old** %20, align 8
  %210 = getelementptr inbounds %struct.__dvb_net_if_old, %struct.__dvb_net_if_old* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %211 to i64
  %213 = load i64, i64* @DVB_NET_DEVICES_MAX, align 8
  %214 = icmp uge i64 %212, %213
  br i1 %214, label %226, label %215

215:                                              ; preds = %206
  %216 = load %struct.dvb_net*, %struct.dvb_net** %9, align 8
  %217 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %216, i32 0, i32 2
  %218 = load i32*, i32** %217, align 8
  %219 = load %struct.__dvb_net_if_old*, %struct.__dvb_net_if_old** %20, align 8
  %220 = getelementptr inbounds %struct.__dvb_net_if_old, %struct.__dvb_net_if_old* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %218, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %229, label %226

226:                                              ; preds = %215, %206
  %227 = load i32, i32* @EINVAL, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %10, align 4
  br label %250

229:                                              ; preds = %215
  %230 = load %struct.dvb_net*, %struct.dvb_net** %9, align 8
  %231 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %230, i32 0, i32 1
  %232 = load %struct.net_device**, %struct.net_device*** %231, align 8
  %233 = load %struct.__dvb_net_if_old*, %struct.__dvb_net_if_old** %20, align 8
  %234 = getelementptr inbounds %struct.__dvb_net_if_old, %struct.__dvb_net_if_old* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.net_device*, %struct.net_device** %232, i64 %236
  %238 = load %struct.net_device*, %struct.net_device** %237, align 8
  store %struct.net_device* %238, %struct.net_device** %18, align 8
  %239 = load %struct.net_device*, %struct.net_device** %18, align 8
  %240 = call %struct.dvb_net_priv* @netdev_priv(%struct.net_device* %239)
  store %struct.dvb_net_priv* %240, %struct.dvb_net_priv** %19, align 8
  %241 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %19, align 8
  %242 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.__dvb_net_if_old*, %struct.__dvb_net_if_old** %20, align 8
  %245 = getelementptr inbounds %struct.__dvb_net_if_old, %struct.__dvb_net_if_old* %244, i32 0, i32 1
  store i32 %243, i32* %245, align 4
  br label %249

246:                                              ; preds = %45
  %247 = load i32, i32* @ENOTTY, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %10, align 4
  br label %249

249:                                              ; preds = %246, %229, %202, %164, %113, %86
  br label %250

250:                                              ; preds = %249, %226, %194, %182, %171, %147, %139, %110, %78, %64, %53
  %251 = load %struct.dvb_net*, %struct.dvb_net** %9, align 8
  %252 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %251, i32 0, i32 0
  %253 = call i32 @mutex_unlock(i32* %252)
  %254 = load i32, i32* %10, align 4
  store i32 %254, i32* %4, align 4
  br label %255

255:                                              ; preds = %250, %42, %34
  %256 = load i32, i32* %4, align 4
  ret i32 %256
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @dvb_net_add_if(%struct.dvb_net*, i32, i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local %struct.dvb_net_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dvb_net_remove_if(%struct.dvb_net*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
