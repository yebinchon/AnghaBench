; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i7core_edac.c_i7core_inject_enable_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i7core_edac.c_i7core_inject_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.mem_ctl_info = type { %struct.i7core_pvt* }
%struct.i7core_pvt = type { %struct.TYPE_4__, i32, i32**, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@MC_CFG_CONTROL = common dso_local global i32 0, align 4
@MC_CHANNEL_ADDR_MATCH = common dso_local global i64 0, align 8
@MC_CHANNEL_ERROR_MASK = common dso_local global i64 0, align 8
@MC_CHANNEL_ERROR_INJECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"Error inject addr match 0x%016llx, ecc 0x%08x, inject 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @i7core_inject_enable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i7core_inject_enable_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mem_ctl_info*, align 8
  %11 = alloca %struct.i7core_pvt*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.mem_ctl_info* @to_mci(%struct.device* %16)
  store %struct.mem_ctl_info* %17, %struct.mem_ctl_info** %10, align 8
  %18 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %19 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %18, i32 0, i32 0
  %20 = load %struct.i7core_pvt*, %struct.i7core_pvt** %19, align 8
  store %struct.i7core_pvt* %20, %struct.i7core_pvt** %11, align 8
  store i64 0, i64* %13, align 8
  %21 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %22 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %21, i32 0, i32 2
  %23 = load i32**, i32*** %22, align 8
  %24 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %25 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32*, i32** %23, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %291

34:                                               ; preds = %4
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @kstrtoul(i8* %35, i32 10, i64* %15)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i64 0, i64* %5, align 8
  br label %291

40:                                               ; preds = %34
  %41 = load i64, i64* %15, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %45 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 1, i32* %46, align 8
  br label %51

47:                                               ; preds = %40
  %48 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %49 = call i32 @disable_inject(%struct.mem_ctl_info* %48)
  %50 = load i64, i64* %9, align 8
  store i64 %50, i64* %5, align 8
  br label %291

51:                                               ; preds = %43
  %52 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %53 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i64, i64* %13, align 8
  %59 = or i64 %58, 2199023255552
  store i64 %59, i64* %13, align 8
  br label %93

60:                                               ; preds = %51
  %61 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %62 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %61, i32 0, i32 3
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %65 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %70, 2
  br i1 %71, label %72, label %82

72:                                               ; preds = %60
  %73 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %74 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = and i64 %77, 3
  %79 = shl i64 %78, 35
  %80 = load i64, i64* %13, align 8
  %81 = or i64 %80, %79
  store i64 %81, i64* %13, align 8
  br label %92

82:                                               ; preds = %60
  %83 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %84 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = and i64 %87, 1
  %89 = shl i64 %88, 36
  %90 = load i64, i64* %13, align 8
  %91 = or i64 %90, %89
  store i64 %91, i64* %13, align 8
  br label %92

92:                                               ; preds = %82, %72
  br label %93

93:                                               ; preds = %92, %57
  %94 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %95 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i64, i64* %13, align 8
  %101 = or i64 %100, 1099511627776
  store i64 %101, i64* %13, align 8
  br label %135

102:                                              ; preds = %93
  %103 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %104 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %103, i32 0, i32 3
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %107 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp sgt i32 %112, 2
  br i1 %113, label %114, label %124

114:                                              ; preds = %102
  %115 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %116 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = and i64 %119, 1
  %121 = shl i64 %120, 34
  %122 = load i64, i64* %13, align 8
  %123 = or i64 %122, %121
  store i64 %123, i64* %13, align 8
  br label %134

124:                                              ; preds = %102
  %125 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %126 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = and i64 %129, 3
  %131 = shl i64 %130, 34
  %132 = load i64, i64* %13, align 8
  %133 = or i64 %132, %131
  store i64 %133, i64* %13, align 8
  br label %134

134:                                              ; preds = %124, %114
  br label %135

135:                                              ; preds = %134, %99
  %136 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %137 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load i64, i64* %13, align 8
  %143 = or i64 %142, 549755813888
  store i64 %143, i64* %13, align 8
  br label %154

144:                                              ; preds = %135
  %145 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %146 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = and i64 %149, 21
  %151 = shl i64 %150, 30
  %152 = load i64, i64* %13, align 8
  %153 = or i64 %152, %151
  store i64 %153, i64* %13, align 8
  br label %154

154:                                              ; preds = %144, %141
  %155 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %156 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = load i64, i64* %13, align 8
  %162 = or i64 %161, 274877906944
  store i64 %162, i64* %13, align 8
  br label %173

163:                                              ; preds = %154
  %164 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %165 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 8
  %168 = and i32 %167, 65535
  %169 = shl i32 %168, 14
  %170 = sext i32 %169 to i64
  %171 = load i64, i64* %13, align 8
  %172 = or i64 %171, %170
  store i64 %172, i64* %13, align 8
  br label %173

173:                                              ; preds = %163, %160
  %174 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %175 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %173
  %180 = load i64, i64* %13, align 8
  %181 = or i64 %180, 137438953472
  store i64 %181, i64* %13, align 8
  br label %191

182:                                              ; preds = %173
  %183 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %184 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 4
  %187 = and i32 %186, 16383
  %188 = sext i32 %187 to i64
  %189 = load i64, i64* %13, align 8
  %190 = or i64 %189, %188
  store i64 %190, i64* %13, align 8
  br label %191

191:                                              ; preds = %182, %179
  %192 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %193 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 7
  %195 = load i32, i32* %194, align 8
  %196 = and i32 %195, 1
  %197 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %198 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 8
  %200 = load i32, i32* %199, align 4
  %201 = and i32 %200, 3
  %202 = shl i32 %201, 1
  %203 = or i32 %196, %202
  %204 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %205 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 7
  %207 = load i32, i32* %206, align 8
  %208 = and i32 %207, 6
  %209 = shl i32 %208, 2
  %210 = or i32 %203, %209
  %211 = sext i32 %210 to i64
  store i64 %211, i64* %12, align 8
  %212 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %213 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @MC_CFG_CONTROL, align 4
  %216 = call i32 @pci_write_config_dword(i32 %214, i32 %215, i32 2)
  %217 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %218 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %217, i32 0, i32 2
  %219 = load i32**, i32*** %218, align 8
  %220 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %221 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds i32*, i32** %219, i64 %223
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 0
  %227 = load i32, i32* %226, align 4
  %228 = load i64, i64* @MC_CHANNEL_ADDR_MATCH, align 8
  %229 = load i64, i64* %13, align 8
  %230 = call i32 @write_and_test(i32 %227, i64 %228, i64 %229)
  %231 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %232 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %231, i32 0, i32 2
  %233 = load i32**, i32*** %232, align 8
  %234 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %235 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds i32*, i32** %233, i64 %237
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  %241 = load i32, i32* %240, align 4
  %242 = load i64, i64* @MC_CHANNEL_ADDR_MATCH, align 8
  %243 = add nsw i64 %242, 4
  %244 = load i64, i64* %13, align 8
  %245 = ashr i64 %244, 32
  %246 = call i32 @write_and_test(i32 %241, i64 %243, i64 %245)
  %247 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %248 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %247, i32 0, i32 2
  %249 = load i32**, i32*** %248, align 8
  %250 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %251 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds i32*, i32** %249, i64 %253
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 0
  %257 = load i32, i32* %256, align 4
  %258 = load i64, i64* @MC_CHANNEL_ERROR_MASK, align 8
  %259 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %260 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 9
  %262 = load i64, i64* %261, align 8
  %263 = call i32 @write_and_test(i32 %257, i64 %258, i64 %262)
  %264 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %265 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %264, i32 0, i32 2
  %266 = load i32**, i32*** %265, align 8
  %267 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %268 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = getelementptr inbounds i32*, i32** %266, i64 %270
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 0
  %274 = load i32, i32* %273, align 4
  %275 = load i64, i64* @MC_CHANNEL_ERROR_INJECT, align 8
  %276 = load i64, i64* %12, align 8
  %277 = call i32 @write_and_test(i32 %274, i64 %275, i64 %276)
  %278 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %279 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @MC_CFG_CONTROL, align 4
  %282 = call i32 @pci_write_config_dword(i32 %280, i32 %281, i32 8)
  %283 = load i64, i64* %13, align 8
  %284 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %285 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 9
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* %12, align 8
  %289 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %283, i64 %287, i64 %288)
  %290 = load i64, i64* %9, align 8
  store i64 %290, i64* %5, align 8
  br label %291

291:                                              ; preds = %191, %47, %39, %33
  %292 = load i64, i64* %5, align 8
  ret i64 %292
}

declare dso_local %struct.mem_ctl_info* @to_mci(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @disable_inject(%struct.mem_ctl_info*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @write_and_test(i32, i64, i64) #1

declare dso_local i32 @edac_dbg(i32, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
