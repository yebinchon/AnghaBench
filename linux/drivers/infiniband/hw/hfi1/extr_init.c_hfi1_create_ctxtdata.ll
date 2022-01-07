; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_hfi1_create_ctxtdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_hfi1_create_ctxtdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i64, i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.hfi1_ctxtdata = type { i32, i32, i32, i8*, %struct.TYPE_8__, i32, i64, i64, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, %struct.hfi1_devdata*, %struct.hfi1_pportdata*, i32 }
%struct.TYPE_8__ = type { i64, i64, i32, i8*, i8* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@normal_rhf_rcv_functions = common dso_local global i32 0, align 4
@PROC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"setting up context %u\0A\00", align 1
@rcvhdrcnt = common dso_local global i32 0, align 4
@hfi1_hdrq_entsize = common dso_local global i64 0, align 8
@hfi1_rcvarr_split = common dso_local global i32 0, align 4
@MAX_EAGER_ENTRIES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"ctxt%u: requested too many RcvArray entries.\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"ctxt%u: max Eager buffer RcvArray entries: %u\0A\00", align 1
@eager_buffer_size = common dso_local global i64 0, align 8
@hfi1_max_mtu = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [52 x i8] c"ctxt%u: eager bufs size too small. Adjusting to %u\0A\00", align 1
@HFI1_MAX_EAGER_BUFFER_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_create_ctxtdata(%struct.hfi1_pportdata* %0, i32 %1, %struct.hfi1_ctxtdata** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_pportdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hfi1_ctxtdata**, align 8
  %8 = alloca %struct.hfi1_devdata*, align 8
  %9 = alloca %struct.hfi1_ctxtdata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hfi1_ctxtdata** %2, %struct.hfi1_ctxtdata*** %7, align 8
  %17 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %18 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %17, i32 0, i32 0
  %19 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %18, align 8
  store %struct.hfi1_devdata* %19, %struct.hfi1_devdata** %8, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %21 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %25 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %28 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  %31 = icmp sgt i64 %23, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %3
  %33 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %34 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %38 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %41 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = sub nsw i64 %36, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %32, %3
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i8* @kzalloc_node(i32 136, i32 %47, i32 %48)
  %50 = bitcast i8* %49 to %struct.hfi1_ctxtdata*
  store %struct.hfi1_ctxtdata* %50, %struct.hfi1_ctxtdata** %9, align 8
  %51 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %52 = icmp ne %struct.hfi1_ctxtdata* %51, null
  br i1 %52, label %53, label %351

53:                                               ; preds = %46
  %54 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %55 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %56 = call i32 @allocate_rcd_index(%struct.hfi1_devdata* %54, %struct.hfi1_ctxtdata* %55, i32* %14)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load %struct.hfi1_ctxtdata**, %struct.hfi1_ctxtdata*** %7, align 8
  store %struct.hfi1_ctxtdata* null, %struct.hfi1_ctxtdata** %60, align 8
  %61 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %62 = call i32 @kfree(%struct.hfi1_ctxtdata* %61)
  %63 = load i32, i32* %15, align 4
  store i32 %63, i32* %4, align 4
  br label %358

64:                                               ; preds = %53
  %65 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %66 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %65, i32 0, i32 16
  %67 = call i32 @INIT_LIST_HEAD(i32* %66)
  %68 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %69 = call i32 @hfi1_exp_tid_group_init(%struct.hfi1_ctxtdata* %68)
  %70 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %71 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %72 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %71, i32 0, i32 15
  store %struct.hfi1_pportdata* %70, %struct.hfi1_pportdata** %72, align 8
  %73 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %74 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %75 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %74, i32 0, i32 14
  store %struct.hfi1_devdata* %73, %struct.hfi1_devdata** %75, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %78 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %80 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %84 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @normal_rhf_rcv_functions, align 4
  %86 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %87 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %86, i32 0, i32 13
  store i32 %85, i32* %87, align 4
  %88 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %89 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %88, i32 0, i32 12
  %90 = call i32 @mutex_init(i32* %89)
  %91 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %92 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %91, i32 0, i32 11
  %93 = call i32 @spin_lock_init(i32* %92)
  %94 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %95 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %94, i32 0, i32 10
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = call i32 @INIT_LIST_HEAD(i32* %96)
  %98 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %99 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %98, i32 0, i32 9
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = call i32 @INIT_LIST_HEAD(i32* %100)
  %102 = load i32, i32* @PROC, align 4
  %103 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %104 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (i32, i8*, i32, ...) @hfi1_cdbg(i32 %102, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %14, align 4
  %108 = zext i32 %107 to i64
  %109 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %110 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp slt i64 %108, %111
  br i1 %112, label %113, label %139

113:                                              ; preds = %64
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %117, label %129

117:                                              ; preds = %113
  %118 = load i32, i32* %14, align 4
  %119 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %120 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = add i32 %122, 1
  %124 = mul i32 %118, %123
  store i32 %124, i32* %11, align 4
  %125 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %126 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %126, align 4
  br label %138

129:                                              ; preds = %113
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %14, align 4
  %132 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %133 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = mul i32 %131, %135
  %137 = add i32 %130, %136
  store i32 %137, i32* %11, align 4
  br label %138

138:                                              ; preds = %129, %117
  br label %196

139:                                              ; preds = %64
  %140 = load i32, i32* %14, align 4
  %141 = zext i32 %140 to i64
  %142 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %143 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = sub nsw i64 %141, %144
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %16, align 4
  %147 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %148 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %151 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = mul i32 %149, %153
  %155 = load i32, i32* %10, align 4
  %156 = add i32 %154, %155
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %16, align 4
  %158 = zext i32 %157 to i64
  %159 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %160 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp slt i64 %158, %162
  br i1 %163, label %164, label %178

164:                                              ; preds = %139
  %165 = load i32, i32* %16, align 4
  %166 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %167 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = add i32 %169, 1
  %171 = mul i32 %165, %170
  %172 = load i32, i32* %11, align 4
  %173 = add i32 %172, %171
  store i32 %173, i32* %11, align 4
  %174 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %175 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = add i32 %176, 1
  store i32 %177, i32* %175, align 4
  br label %195

178:                                              ; preds = %139
  %179 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %180 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i32, i32* %16, align 4
  %184 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %185 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = mul i32 %183, %187
  %189 = zext i32 %188 to i64
  %190 = add nsw i64 %182, %189
  %191 = load i32, i32* %11, align 4
  %192 = zext i32 %191 to i64
  %193 = add nsw i64 %192, %190
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %11, align 4
  br label %195

195:                                              ; preds = %178, %164
  br label %196

196:                                              ; preds = %195, %138
  %197 = load i32, i32* %11, align 4
  %198 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %199 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = mul i32 %197, %201
  %203 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %204 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %203, i32 0, i32 2
  store i32 %202, i32* %204, align 8
  %205 = load i32, i32* @rcvhdrcnt, align 4
  %206 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %207 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %206, i32 0, i32 8
  store i32 %205, i32* %207, align 8
  %208 = load i64, i64* @hfi1_hdrq_entsize, align 8
  %209 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %210 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %209, i32 0, i32 6
  store i64 %208, i64* %210, align 8
  %211 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %212 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %211, i32 0, i32 6
  %213 = load i64, i64* %212, align 8
  %214 = sub i64 %213, 1
  %215 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %216 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %215, i32 0, i32 7
  store i64 %214, i64* %216, align 8
  %217 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %218 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %221 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = mul i32 %219, %223
  store i32 %224, i32* %13, align 4
  %225 = load i32, i32* %13, align 4
  %226 = load i32, i32* @hfi1_rcvarr_split, align 4
  %227 = mul i32 %225, %226
  %228 = udiv i32 %227, 100
  store i32 %228, i32* %12, align 4
  %229 = load i32, i32* %12, align 4
  %230 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %231 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = call i64 @round_down(i32 %229, i32 %233)
  %235 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %236 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %235, i32 0, i32 4
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  store i64 %234, i64* %237, align 8
  %238 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %239 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %238, i32 0, i32 4
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @MAX_EAGER_ENTRIES, align 8
  %243 = icmp sgt i64 %241, %242
  br i1 %243, label %244, label %254

244:                                              ; preds = %196
  %245 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %246 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %247 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @dd_dev_err(%struct.hfi1_devdata* %245, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %248)
  %250 = load i64, i64* @MAX_EAGER_ENTRIES, align 8
  %251 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %252 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %251, i32 0, i32 4
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 0
  store i64 %250, i64* %253, align 8
  br label %254

254:                                              ; preds = %244, %196
  %255 = load i32, i32* @PROC, align 4
  %256 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %257 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %260 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %259, i32 0, i32 4
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = call i32 (i32, i8*, i32, ...) @hfi1_cdbg(i32 %255, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %258, i64 %262)
  %264 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %265 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %264, i32 0, i32 4
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load i32, i32* @GFP_KERNEL, align 4
  %269 = load i32, i32* %6, align 4
  %270 = call i8* @kcalloc_node(i64 %267, i32 1, i32 %268, i32 %269)
  %271 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %272 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %271, i32 0, i32 4
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 4
  store i8* %270, i8** %273, align 8
  %274 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %275 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %274, i32 0, i32 4
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 4
  %277 = load i8*, i8** %276, align 8
  %278 = icmp ne i8* %277, null
  br i1 %278, label %280, label %279

279:                                              ; preds = %254
  br label %352

280:                                              ; preds = %254
  %281 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %282 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %281, i32 0, i32 4
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load i32, i32* @GFP_KERNEL, align 4
  %286 = load i32, i32* %6, align 4
  %287 = call i8* @kcalloc_node(i64 %284, i32 1, i32 %285, i32 %286)
  %288 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %289 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %288, i32 0, i32 4
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 3
  store i8* %287, i8** %290, align 8
  %291 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %292 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %291, i32 0, i32 4
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 3
  %294 = load i8*, i8** %293, align 8
  %295 = icmp ne i8* %294, null
  br i1 %295, label %297, label %296

296:                                              ; preds = %280
  br label %352

297:                                              ; preds = %280
  %298 = load i64, i64* @eager_buffer_size, align 8
  %299 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %300 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %299, i32 0, i32 4
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 1
  store i64 %298, i64* %301, align 8
  %302 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %303 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %302, i32 0, i32 4
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @hfi1_max_mtu, align 8
  %307 = icmp slt i64 %305, %306
  br i1 %307, label %308, label %323

308:                                              ; preds = %297
  %309 = load i64, i64* @hfi1_max_mtu, align 8
  %310 = call i64 @__roundup_pow_of_two(i64 %309)
  %311 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %312 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %311, i32 0, i32 4
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 1
  store i64 %310, i64* %313, align 8
  %314 = load i32, i32* @PROC, align 4
  %315 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %316 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %315, i32 0, i32 5
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %319 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %318, i32 0, i32 4
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 1
  %321 = load i64, i64* %320, align 8
  %322 = call i32 (i32, i8*, i32, ...) @hfi1_cdbg(i32 %314, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %317, i64 %321)
  br label %323

323:                                              ; preds = %308, %297
  %324 = load i32, i32* @HFI1_MAX_EAGER_BUFFER_SIZE, align 4
  %325 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %326 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %325, i32 0, i32 4
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 2
  store i32 %324, i32* %327, align 8
  %328 = load i32, i32* %14, align 4
  %329 = zext i32 %328 to i64
  %330 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %331 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = icmp slt i64 %329, %332
  br i1 %333, label %334, label %348

334:                                              ; preds = %323
  %335 = load i32, i32* @GFP_KERNEL, align 4
  %336 = load i32, i32* %6, align 4
  %337 = call i8* @kzalloc_node(i32 1, i32 %335, i32 %336)
  %338 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %339 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %338, i32 0, i32 3
  store i8* %337, i8** %339, align 8
  %340 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %341 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %340, i32 0, i32 3
  %342 = load i8*, i8** %341, align 8
  %343 = icmp ne i8* %342, null
  br i1 %343, label %345, label %344

344:                                              ; preds = %334
  br label %352

345:                                              ; preds = %334
  %346 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %347 = call i32 @hfi1_kern_init_ctxt_generations(%struct.hfi1_ctxtdata* %346)
  br label %348

348:                                              ; preds = %345, %323
  %349 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %350 = load %struct.hfi1_ctxtdata**, %struct.hfi1_ctxtdata*** %7, align 8
  store %struct.hfi1_ctxtdata* %349, %struct.hfi1_ctxtdata** %350, align 8
  store i32 0, i32* %4, align 4
  br label %358

351:                                              ; preds = %46
  br label %352

352:                                              ; preds = %351, %344, %296, %279
  %353 = load %struct.hfi1_ctxtdata**, %struct.hfi1_ctxtdata*** %7, align 8
  store %struct.hfi1_ctxtdata* null, %struct.hfi1_ctxtdata** %353, align 8
  %354 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %9, align 8
  %355 = call i32 @hfi1_free_ctxt(%struct.hfi1_ctxtdata* %354)
  %356 = load i32, i32* @ENOMEM, align 4
  %357 = sub nsw i32 0, %356
  store i32 %357, i32* %4, align 4
  br label %358

358:                                              ; preds = %352, %348, %59
  %359 = load i32, i32* %4, align 4
  ret i32 %359
}

declare dso_local i8* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @allocate_rcd_index(%struct.hfi1_devdata*, %struct.hfi1_ctxtdata*, i32*) #1

declare dso_local i32 @kfree(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @hfi1_exp_tid_group_init(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @hfi1_cdbg(i32, i8*, i32, ...) #1

declare dso_local i64 @round_down(i32, i32) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, i32) #1

declare dso_local i8* @kcalloc_node(i64, i32, i32, i32) #1

declare dso_local i64 @__roundup_pow_of_two(i64) #1

declare dso_local i32 @hfi1_kern_init_ctxt_generations(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @hfi1_free_ctxt(%struct.hfi1_ctxtdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
