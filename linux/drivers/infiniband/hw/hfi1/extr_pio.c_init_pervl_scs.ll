; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_init_pervl_scs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_init_pervl_scs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { %struct.TYPE_9__*, %struct.TYPE_10__**, i32, %struct.TYPE_8__**, i32, %struct.hfi1_pportdata* }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.hfi1_pportdata = type { i64 }

@SC_VL15 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OPA_MTU_2048 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@num_vls = common dso_local global i32 0, align 4
@SC_KERNEL = common dso_local global i32 0, align 4
@hfi1_max_mtu = common dso_local global i32 0, align 4
@INIT_SC_PER_VL = common dso_local global i32 0, align 4
@CHECK_VL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Using send context %u(%u) for VL15\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_pervl_scs(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hfi1_pportdata*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store i64 33023, i64* %6, align 8
  store i64 255, i64* %7, align 8
  %10 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %11 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %10, i32 0, i32 5
  %12 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %11, align 8
  store %struct.hfi1_pportdata* %12, %struct.hfi1_pportdata** %9, align 8
  %13 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %14 = load i32, i32* @SC_VL15, align 4
  %15 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %16 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %15, i32 0, i32 3
  %17 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %17, i64 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %23 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @sc_alloc(%struct.hfi1_devdata* %13, i32 %14, i32 %21, i32 %24)
  %26 = bitcast i8* %25 to %struct.TYPE_10__*
  %27 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %28 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 15
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %31, align 8
  %32 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %33 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i64 15
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = icmp ne %struct.TYPE_10__* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %1
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %395

42:                                               ; preds = %1
  %43 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %44 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i64 15
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = call i32 @hfi1_init_ctxt(%struct.TYPE_10__* %48)
  %50 = load i32, i32* @OPA_MTU_2048, align 4
  %51 = call i32 @enum_to_mtu(i32 %50)
  %52 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %53 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %52, i32 0, i32 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i64 15
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  store i32 %51, i32* %56, align 8
  %57 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %58 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %62 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call %struct.TYPE_10__** @kcalloc_node(i32 %59, i32 8, i32 %60, i32 %63)
  %65 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %66 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %65, i32 0, i32 1
  store %struct.TYPE_10__** %64, %struct.TYPE_10__*** %66, align 8
  %67 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %68 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %67, i32 0, i32 1
  %69 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %68, align 8
  %70 = icmp ne %struct.TYPE_10__** %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %42
  br label %385

72:                                               ; preds = %42
  %73 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %74 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %73, i32 0, i32 0
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i64 15
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %80 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %79, i32 0, i32 1
  %81 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %81, i64 0
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %82, align 8
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %152, %72
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @num_vls, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %155

87:                                               ; preds = %83
  %88 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %89 = load i32, i32* @SC_KERNEL, align 4
  %90 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %91 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %90, i32 0, i32 3
  %92 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %92, i64 0
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %98 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i8* @sc_alloc(%struct.hfi1_devdata* %88, i32 %89, i32 %96, i32 %99)
  %101 = bitcast i8* %100 to %struct.TYPE_10__*
  %102 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %103 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %102, i32 0, i32 0
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  store %struct.TYPE_10__* %101, %struct.TYPE_10__** %108, align 8
  %109 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %110 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %109, i32 0, i32 0
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = icmp ne %struct.TYPE_10__* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %87
  br label %332

119:                                              ; preds = %87
  %120 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %121 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %120, i32 0, i32 0
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %129 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %128, i32 0, i32 1
  %130 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %129, align 8
  %131 = load i32, i32* %4, align 4
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %130, i64 %133
  store %struct.TYPE_10__* %127, %struct.TYPE_10__** %134, align 8
  %135 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %136 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %135, i32 0, i32 0
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = load i32, i32* %4, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %141, align 8
  %143 = call i32 @hfi1_init_ctxt(%struct.TYPE_10__* %142)
  %144 = load i32, i32* @hfi1_max_mtu, align 4
  %145 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %146 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %145, i32 0, i32 0
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 1
  store i32 %144, i32* %151, align 8
  br label %152

152:                                              ; preds = %119
  %153 = load i32, i32* %4, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %4, align 4
  br label %83

155:                                              ; preds = %83
  %156 = load i32, i32* @num_vls, align 4
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %205, %155
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* @INIT_SC_PER_VL, align 4
  %160 = load i32, i32* @num_vls, align 4
  %161 = mul nsw i32 %159, %160
  %162 = icmp slt i32 %158, %161
  br i1 %162, label %163, label %208

163:                                              ; preds = %157
  %164 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %165 = load i32, i32* @SC_KERNEL, align 4
  %166 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %167 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %166, i32 0, i32 3
  %168 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %168, i64 0
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %174 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i8* @sc_alloc(%struct.hfi1_devdata* %164, i32 %165, i32 %172, i32 %175)
  %177 = bitcast i8* %176 to %struct.TYPE_10__*
  %178 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %179 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %178, i32 0, i32 1
  %180 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %179, align 8
  %181 = load i32, i32* %4, align 4
  %182 = add nsw i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %180, i64 %183
  store %struct.TYPE_10__* %177, %struct.TYPE_10__** %184, align 8
  %185 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %186 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %185, i32 0, i32 1
  %187 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %186, align 8
  %188 = load i32, i32* %4, align 4
  %189 = add nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %187, i64 %190
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %191, align 8
  %193 = icmp ne %struct.TYPE_10__* %192, null
  br i1 %193, label %195, label %194

194:                                              ; preds = %163
  br label %332

195:                                              ; preds = %163
  %196 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %197 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %196, i32 0, i32 1
  %198 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %197, align 8
  %199 = load i32, i32* %4, align 4
  %200 = add nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %198, i64 %201
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %202, align 8
  %204 = call i32 @hfi1_init_ctxt(%struct.TYPE_10__* %203)
  br label %205

205:                                              ; preds = %195
  %206 = load i32, i32* %4, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %4, align 4
  br label %157

208:                                              ; preds = %157
  %209 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %210 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %209, i32 0, i32 0
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i64 15
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = call i32 @sc_enable(%struct.TYPE_10__* %214)
  %216 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %217 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %216, i32 0, i32 0
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i64 15
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  store i32 %223, i32* %8, align 4
  %224 = load i64, i64* %6, align 8
  %225 = and i64 %224, -32769
  store i64 %225, i64* %5, align 8
  %226 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* @CHECK_VL, align 4
  %229 = call i32 @SC(i32 %228)
  %230 = load i64, i64* %5, align 8
  %231 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %226, i32 %227, i32 %229, i64 %230)
  %232 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %233 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %234 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %233, i32 0, i32 0
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i64 15
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %8, align 4
  %242 = call i32 @dd_dev_info(%struct.hfi1_devdata* %232, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %240, i32 %241)
  store i32 0, i32* %4, align 4
  br label %243

243:                                              ; preds = %277, %208
  %244 = load i32, i32* %4, align 4
  %245 = load i32, i32* @num_vls, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %280

247:                                              ; preds = %243
  %248 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %249 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %248, i32 0, i32 0
  %250 = load %struct.TYPE_9__*, %struct.TYPE_9__** %249, align 8
  %251 = load i32, i32* %4, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %254, align 8
  %256 = call i32 @sc_enable(%struct.TYPE_10__* %255)
  %257 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %258 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %257, i32 0, i32 0
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %258, align 8
  %260 = load i32, i32* %4, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  store i32 %266, i32* %8, align 4
  %267 = load i64, i64* %6, align 8
  %268 = load i64, i64* %7, align 8
  %269 = xor i64 %268, -1
  %270 = and i64 %267, %269
  store i64 %270, i64* %5, align 8
  %271 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %272 = load i32, i32* %8, align 4
  %273 = load i32, i32* @CHECK_VL, align 4
  %274 = call i32 @SC(i32 %273)
  %275 = load i64, i64* %5, align 8
  %276 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %271, i32 %272, i32 %274, i64 %275)
  br label %277

277:                                              ; preds = %247
  %278 = load i32, i32* %4, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %4, align 4
  br label %243

280:                                              ; preds = %243
  %281 = load i32, i32* @num_vls, align 4
  store i32 %281, i32* %4, align 4
  br label %282

282:                                              ; preds = %318, %280
  %283 = load i32, i32* %4, align 4
  %284 = load i32, i32* @INIT_SC_PER_VL, align 4
  %285 = load i32, i32* @num_vls, align 4
  %286 = mul nsw i32 %284, %285
  %287 = icmp slt i32 %283, %286
  br i1 %287, label %288, label %321

288:                                              ; preds = %282
  %289 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %290 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %289, i32 0, i32 1
  %291 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %290, align 8
  %292 = load i32, i32* %4, align 4
  %293 = add nsw i32 %292, 1
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %291, i64 %294
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %295, align 8
  %297 = call i32 @sc_enable(%struct.TYPE_10__* %296)
  %298 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %299 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %298, i32 0, i32 1
  %300 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %299, align 8
  %301 = load i32, i32* %4, align 4
  %302 = add nsw i32 %301, 1
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %300, i64 %303
  %305 = load %struct.TYPE_10__*, %struct.TYPE_10__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  store i32 %307, i32* %8, align 4
  %308 = load i64, i64* %6, align 8
  %309 = load i64, i64* %7, align 8
  %310 = xor i64 %309, -1
  %311 = and i64 %308, %310
  store i64 %311, i64* %5, align 8
  %312 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %313 = load i32, i32* %8, align 4
  %314 = load i32, i32* @CHECK_VL, align 4
  %315 = call i32 @SC(i32 %314)
  %316 = load i64, i64* %5, align 8
  %317 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %312, i32 %313, i32 %315, i64 %316)
  br label %318

318:                                              ; preds = %288
  %319 = load i32, i32* %4, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %4, align 4
  br label %282

321:                                              ; preds = %282
  %322 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %323 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %9, align 8
  %324 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = sub nsw i64 %325, 1
  %327 = load i32, i32* @num_vls, align 4
  %328 = call i64 @pio_map_init(%struct.hfi1_devdata* %322, i64 %326, i32 %327, i32* null)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %321
  br label %332

331:                                              ; preds = %321
  store i32 0, i32* %2, align 4
  br label %395

332:                                              ; preds = %330, %194, %118
  store i32 0, i32* %4, align 4
  br label %333

333:                                              ; preds = %354, %332
  %334 = load i32, i32* %4, align 4
  %335 = load i32, i32* @num_vls, align 4
  %336 = icmp slt i32 %334, %335
  br i1 %336, label %337, label %357

337:                                              ; preds = %333
  %338 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %339 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %338, i32 0, i32 0
  %340 = load %struct.TYPE_9__*, %struct.TYPE_9__** %339, align 8
  %341 = load i32, i32* %4, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %340, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %343, i32 0, i32 0
  %345 = load %struct.TYPE_10__*, %struct.TYPE_10__** %344, align 8
  %346 = call i32 @sc_free(%struct.TYPE_10__* %345)
  %347 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %348 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %347, i32 0, i32 0
  %349 = load %struct.TYPE_9__*, %struct.TYPE_9__** %348, align 8
  %350 = load i32, i32* %4, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %349, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %352, i32 0, i32 0
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %353, align 8
  br label %354

354:                                              ; preds = %337
  %355 = load i32, i32* %4, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %4, align 4
  br label %333

357:                                              ; preds = %333
  %358 = load i32, i32* @num_vls, align 4
  store i32 %358, i32* %4, align 4
  br label %359

359:                                              ; preds = %375, %357
  %360 = load i32, i32* %4, align 4
  %361 = load i32, i32* @INIT_SC_PER_VL, align 4
  %362 = load i32, i32* @num_vls, align 4
  %363 = mul nsw i32 %361, %362
  %364 = icmp slt i32 %360, %363
  br i1 %364, label %365, label %378

365:                                              ; preds = %359
  %366 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %367 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %366, i32 0, i32 1
  %368 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %367, align 8
  %369 = load i32, i32* %4, align 4
  %370 = add nsw i32 %369, 1
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %368, i64 %371
  %373 = load %struct.TYPE_10__*, %struct.TYPE_10__** %372, align 8
  %374 = call i32 @sc_free(%struct.TYPE_10__* %373)
  br label %375

375:                                              ; preds = %365
  %376 = load i32, i32* %4, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %4, align 4
  br label %359

378:                                              ; preds = %359
  %379 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %380 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %379, i32 0, i32 1
  %381 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %380, align 8
  %382 = call i32 @kfree(%struct.TYPE_10__** %381)
  %383 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %384 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %383, i32 0, i32 1
  store %struct.TYPE_10__** null, %struct.TYPE_10__*** %384, align 8
  br label %385

385:                                              ; preds = %378, %71
  %386 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %387 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %386, i32 0, i32 0
  %388 = load %struct.TYPE_9__*, %struct.TYPE_9__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %388, i64 15
  %390 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %389, i32 0, i32 0
  %391 = load %struct.TYPE_10__*, %struct.TYPE_10__** %390, align 8
  %392 = call i32 @sc_free(%struct.TYPE_10__* %391)
  %393 = load i32, i32* @ENOMEM, align 4
  %394 = sub nsw i32 0, %393
  store i32 %394, i32* %2, align 4
  br label %395

395:                                              ; preds = %385, %331, %39
  %396 = load i32, i32* %2, align 4
  ret i32 %396
}

declare dso_local i8* @sc_alloc(%struct.hfi1_devdata*, i32, i32, i32) #1

declare dso_local i32 @hfi1_init_ctxt(%struct.TYPE_10__*) #1

declare dso_local i32 @enum_to_mtu(i32) #1

declare dso_local %struct.TYPE_10__** @kcalloc_node(i32, i32, i32, i32) #1

declare dso_local i32 @sc_enable(%struct.TYPE_10__*) #1

declare dso_local i32 @write_kctxt_csr(%struct.hfi1_devdata*, i32, i32, i64) #1

declare dso_local i32 @SC(i32) #1

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*, i32, i32) #1

declare dso_local i64 @pio_map_init(%struct.hfi1_devdata*, i64, i32, i32*) #1

declare dso_local i32 @sc_free(%struct.TYPE_10__*) #1

declare dso_local i32 @kfree(%struct.TYPE_10__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
