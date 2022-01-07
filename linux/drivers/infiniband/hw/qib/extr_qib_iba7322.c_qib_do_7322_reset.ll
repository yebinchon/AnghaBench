; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_do_7322_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_do_7322_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32, i32, %struct.qib_pportdata*, %struct.TYPE_4__*, i32, i32*, i32, i32 }
%struct.qib_pportdata = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Resetting InfiniPath unit %u\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@QIB_7322_MsixTable_OFFS = common dso_local global i32 0, align 4
@QIB_INITTED = common dso_local global i32 0, align 4
@QIB_PRESENT = common dso_local global i32 0, align 4
@QIB_BADINTR = common dso_local global i32 0, align 4
@QIB_DOING_RESET = common dso_local global i32 0, align 4
@QLOGIC_IB_C_RESET = common dso_local global i32 0, align 4
@kr_control = common dso_local global i64 0, align 8
@kr_revision = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to initialize after reset, unusable\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Reset failed to setup PCIe or interrupts; continuing anyway\0A\00", align 1
@QIBL_IB_FORCE_NOTIFY = common dso_local global i32 0, align 4
@QIBL_IB_AUTONEG_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*)* @qib_do_7322_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_do_7322_reset(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.qib_pportdata*, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  store i32* null, i32** %4, align 8
  store i32 1, i32* %7, align 4
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %16 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %17 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %21 = call i32 @qib_pcie_getcmd(%struct.qib_devdata* %20, i32* %8, i32* %9, i32* %10)
  %22 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %23 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %22, i32 0, i32 5
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %28 = call i32 @qib_7322_set_intr_state(%struct.qib_devdata* %27, i32 0)
  %29 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %30 = call i32 @qib_7322_free_irq(%struct.qib_devdata* %29)
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %1
  %34 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %35 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %34, i32 0, i32 5
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 2, %38
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32* @kmalloc_array(i32 %39, i32 4, i32 %40)
  store i32* %41, i32** %4, align 8
  br label %42

42:                                               ; preds = %33, %1
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %89, %42
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %92

47:                                               ; preds = %43
  %48 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %49 = load i32, i32* %5, align 4
  %50 = mul nsw i32 2, %49
  %51 = sext i32 %50 to i64
  %52 = load i32, i32* @QIB_7322_MsixTable_OFFS, align 4
  %53 = sext i32 %52 to i64
  %54 = udiv i64 %53, 4
  %55 = add i64 %51, %54
  %56 = trunc i64 %55 to i32
  %57 = call i32 @qib_read_kreg64(%struct.qib_devdata* %48, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %59 = load i32, i32* %5, align 4
  %60 = mul nsw i32 2, %59
  %61 = add nsw i32 1, %60
  %62 = sext i32 %61 to i64
  %63 = load i32, i32* @QIB_7322_MsixTable_OFFS, align 4
  %64 = sext i32 %63 to i64
  %65 = udiv i64 %64, 4
  %66 = add i64 %62, %65
  %67 = trunc i64 %66 to i32
  %68 = call i32 @qib_read_kreg64(%struct.qib_devdata* %58, i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %88

71:                                               ; preds = %47
  %72 = load i32, i32* %12, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = mul nsw i32 2, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32 %72, i32* %77, align 4
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = and i64 %79, -4294967297
  %81 = trunc i64 %80 to i32
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = mul nsw i32 2, %83
  %85 = add nsw i32 1, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  store i32 %81, i32* %87, align 4
  br label %88

88:                                               ; preds = %71, %47
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %43

92:                                               ; preds = %43
  %93 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %94 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %93, i32 0, i32 4
  %95 = load %struct.qib_pportdata*, %struct.qib_pportdata** %94, align 8
  %96 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %95, i32 0, i32 2
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  store i64 0, i64* %98, align 8
  %99 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %100 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %99, i32 0, i32 4
  %101 = load %struct.qib_pportdata*, %struct.qib_pportdata** %100, align 8
  %102 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %101, i32 0, i32 2
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  store i64 0, i64* %104, align 8
  %105 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %106 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %105, i32 0, i32 4
  %107 = load %struct.qib_pportdata*, %struct.qib_pportdata** %106, align 8
  %108 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %107, i32 0, i32 2
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  store i64 0, i64* %110, align 8
  %111 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %112 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %111, i32 0, i32 4
  %113 = load %struct.qib_pportdata*, %struct.qib_pportdata** %112, align 8
  %114 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %113, i32 0, i32 2
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  store i64 0, i64* %116, align 8
  %117 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %118 = call i32 @qib_int_counter(%struct.qib_devdata* %117)
  %119 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %120 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %119, i32 0, i32 8
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* @QIB_INITTED, align 4
  %122 = load i32, i32* @QIB_PRESENT, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @QIB_BADINTR, align 4
  %125 = or i32 %123, %124
  %126 = xor i32 %125, -1
  %127 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %128 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = and i32 %129, %126
  store i32 %130, i32* %128, align 8
  %131 = load i32, i32* @QIB_DOING_RESET, align 4
  %132 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %133 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  %136 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %137 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @QLOGIC_IB_C_RESET, align 4
  %140 = or i32 %138, %139
  store i32 %140, i32* %3, align 4
  %141 = load i32, i32* %3, align 4
  %142 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %143 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %142, i32 0, i32 7
  %144 = load i32*, i32** %143, align 8
  %145 = load i64, i64* @kr_control, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = call i32 @writeq(i32 %141, i32* %146)
  store i32 1, i32* %5, align 4
  br label %148

148:                                              ; preds = %181, %92
  %149 = load i32, i32* %5, align 4
  %150 = icmp sle i32 %149, 5
  br i1 %150, label %151, label %184

151:                                              ; preds = %148
  %152 = load i32, i32* %5, align 4
  %153 = add nsw i32 1, %152
  %154 = mul nsw i32 %153, 3000
  %155 = add nsw i32 1000, %154
  %156 = call i32 @msleep(i32 %155)
  %157 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %10, align 4
  %161 = call i32 @qib_pcie_reenable(%struct.qib_devdata* %157, i32 %158, i32 %159, i32 %160)
  %162 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %163 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %162, i32 0, i32 7
  %164 = load i32*, i32** %163, align 8
  %165 = load i64, i64* @kr_revision, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  %167 = call i32 @readq(i32* %166)
  store i32 %167, i32* %3, align 4
  %168 = load i32, i32* %3, align 4
  %169 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %170 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = icmp eq i32 %168, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %151
  br label %184

174:                                              ; preds = %151
  %175 = load i32, i32* %5, align 4
  %176 = icmp eq i32 %175, 5
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %179 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %178, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %322

180:                                              ; preds = %174
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %5, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %5, align 4
  br label %148

184:                                              ; preds = %173, %148
  %185 = load i32, i32* @QIB_PRESENT, align 4
  %186 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %187 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 8
  %190 = load i32, i32* %6, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %248

192:                                              ; preds = %184
  store i32 0, i32* %5, align 4
  br label %193

193:                                              ; preds = %244, %192
  %194 = load i32, i32* %5, align 4
  %195 = load i32, i32* %6, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %247

197:                                              ; preds = %193
  %198 = load i32*, i32** %4, align 8
  %199 = icmp ne i32* %198, null
  br i1 %199, label %200, label %208

200:                                              ; preds = %197
  %201 = load i32*, i32** %4, align 8
  %202 = load i32, i32* %5, align 4
  %203 = mul nsw i32 2, %202
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %201, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %200, %197
  br label %244

209:                                              ; preds = %200
  %210 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %211 = load i32, i32* %5, align 4
  %212 = mul nsw i32 2, %211
  %213 = sext i32 %212 to i64
  %214 = load i32, i32* @QIB_7322_MsixTable_OFFS, align 4
  %215 = sext i32 %214 to i64
  %216 = udiv i64 %215, 4
  %217 = add i64 %213, %216
  %218 = trunc i64 %217 to i32
  %219 = load i32*, i32** %4, align 8
  %220 = load i32, i32* %5, align 4
  %221 = mul nsw i32 2, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %219, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @qib_write_kreg(%struct.qib_devdata* %210, i32 %218, i32 %224)
  %226 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %227 = load i32, i32* %5, align 4
  %228 = mul nsw i32 2, %227
  %229 = add nsw i32 1, %228
  %230 = sext i32 %229 to i64
  %231 = load i32, i32* @QIB_7322_MsixTable_OFFS, align 4
  %232 = sext i32 %231 to i64
  %233 = udiv i64 %232, 4
  %234 = add i64 %230, %233
  %235 = trunc i64 %234 to i32
  %236 = load i32*, i32** %4, align 8
  %237 = load i32, i32* %5, align 4
  %238 = mul nsw i32 2, %237
  %239 = add nsw i32 1, %238
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %236, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @qib_write_kreg(%struct.qib_devdata* %226, i32 %235, i32 %242)
  br label %244

244:                                              ; preds = %209, %208
  %245 = load i32, i32* %5, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %5, align 4
  br label %193

247:                                              ; preds = %193
  br label %248

248:                                              ; preds = %247, %184
  store i32 0, i32* %5, align 4
  br label %249

249:                                              ; preds = %263, %248
  %250 = load i32, i32* %5, align 4
  %251 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %252 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = icmp slt i32 %250, %253
  br i1 %254, label %255, label %266

255:                                              ; preds = %249
  %256 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %257 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %256, i32 0, i32 4
  %258 = load %struct.qib_pportdata*, %struct.qib_pportdata** %257, align 8
  %259 = load i32, i32* %5, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %258, i64 %260
  %262 = call i32 @write_7322_init_portregs(%struct.qib_pportdata* %261)
  br label %263

263:                                              ; preds = %255
  %264 = load i32, i32* %5, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %5, align 4
  br label %249

266:                                              ; preds = %249
  %267 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %268 = call i32 @write_7322_initregs(%struct.qib_devdata* %267)
  %269 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %270 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %271 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %270, i32 0, i32 6
  %272 = load i32, i32* %271, align 8
  %273 = call i64 @qib_pcie_params(%struct.qib_devdata* %269, i32 %272, i32* %6)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %266
  %276 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %277 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %276, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  br label %278

278:                                              ; preds = %275, %266
  %279 = load i32, i32* %6, align 4
  %280 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %281 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %280, i32 0, i32 5
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 0
  store i32 %279, i32* %283, align 4
  %284 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %285 = call i32 @qib_setup_7322_interrupt(%struct.qib_devdata* %284, i32 1)
  store i32 0, i32* %5, align 4
  br label %286

286:                                              ; preds = %318, %278
  %287 = load i32, i32* %5, align 4
  %288 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %289 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = icmp slt i32 %287, %290
  br i1 %291, label %292, label %321

292:                                              ; preds = %286
  %293 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %294 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %293, i32 0, i32 4
  %295 = load %struct.qib_pportdata*, %struct.qib_pportdata** %294, align 8
  %296 = load i32, i32* %5, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %295, i64 %297
  store %struct.qib_pportdata* %298, %struct.qib_pportdata** %14, align 8
  %299 = load %struct.qib_pportdata*, %struct.qib_pportdata** %14, align 8
  %300 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %299, i32 0, i32 0
  %301 = load i64, i64* %11, align 8
  %302 = call i32 @spin_lock_irqsave(i32* %300, i64 %301)
  %303 = load i32, i32* @QIBL_IB_FORCE_NOTIFY, align 4
  %304 = load %struct.qib_pportdata*, %struct.qib_pportdata** %14, align 8
  %305 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = or i32 %306, %303
  store i32 %307, i32* %305, align 4
  %308 = load i32, i32* @QIBL_IB_AUTONEG_FAILED, align 4
  %309 = xor i32 %308, -1
  %310 = load %struct.qib_pportdata*, %struct.qib_pportdata** %14, align 8
  %311 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = and i32 %312, %309
  store i32 %313, i32* %311, align 4
  %314 = load %struct.qib_pportdata*, %struct.qib_pportdata** %14, align 8
  %315 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %314, i32 0, i32 0
  %316 = load i64, i64* %11, align 8
  %317 = call i32 @spin_unlock_irqrestore(i32* %315, i64 %316)
  br label %318

318:                                              ; preds = %292
  %319 = load i32, i32* %5, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %5, align 4
  br label %286

321:                                              ; preds = %286
  br label %322

322:                                              ; preds = %321, %177
  %323 = load i32, i32* @QIB_DOING_RESET, align 4
  %324 = xor i32 %323, -1
  %325 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %326 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = and i32 %327, %324
  store i32 %328, i32* %326, align 8
  %329 = load i32*, i32** %4, align 8
  %330 = call i32 @kfree(i32* %329)
  %331 = load i32, i32* %7, align 4
  ret i32 %331
}

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, ...) #1

declare dso_local i32 @qib_pcie_getcmd(%struct.qib_devdata*, i32*, i32*, i32*) #1

declare dso_local i32 @qib_7322_set_intr_state(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_7322_free_irq(%struct.qib_devdata*) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @qib_read_kreg64(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_int_counter(%struct.qib_devdata*) #1

declare dso_local i32 @writeq(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qib_pcie_reenable(%struct.qib_devdata*, i32, i32, i32) #1

declare dso_local i32 @readq(i32*) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @write_7322_init_portregs(%struct.qib_pportdata*) #1

declare dso_local i32 @write_7322_initregs(%struct.qib_devdata*) #1

declare dso_local i64 @qib_pcie_params(%struct.qib_devdata*, i32, i32*) #1

declare dso_local i32 @qib_setup_7322_interrupt(%struct.qib_devdata*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
