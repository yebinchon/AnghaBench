; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_hfi1_setup_eagerbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_hfi1_setup_eagerbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ctxtdata = type { i64, i64, i64, i64, %struct.TYPE_10__, i32, i32, %struct.hfi1_devdata* }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i64, %struct.TYPE_8__*, %struct.TYPE_9__*, i32 }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.hfi1_devdata = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@hfi1_max_mtu = common dso_local global i32 0, align 4
@__GFP_RECLAIM = common dso_local global i32 0, align 4
@__GFP_IO = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@MULTI_PKT_EGR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"ctxt%u: Failed to allocate eager buffers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PROC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"ctxt%u: Alloced %u rcv tid entries @ %uKB, total %uKB\0A\00", align 1
@MAX_TID_PAIR_ENTRIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"ctxt%u: eager:%u, exp:%u, egrbase:%u, expbase:%u\0A\00", align 1
@PT_EAGER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"ctxt%u: current Eager buffer size is invalid %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_setup_eagerbufs(%struct.hfi1_ctxtdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_ctxtdata*, align 8
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.hfi1_ctxtdata* %0, %struct.hfi1_ctxtdata** %3, align 8
  %17 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %18 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %17, i32 0, i32 7
  %19 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %18, align 8
  store %struct.hfi1_devdata* %19, %struct.hfi1_devdata** %4, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %20 = load i32, i32* @hfi1_max_mtu, align 4
  %21 = call i64 @roundup_pow_of_two(i32 %20)
  store i64 %21, i64* %12, align 8
  %22 = load i32, i32* @__GFP_RECLAIM, align 4
  %23 = load i32, i32* @__GFP_IO, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @__GFP_COMP, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %28 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %33 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = mul i64 %31, %35
  %37 = icmp ult i64 %30, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %1
  %39 = load i64, i64* %12, align 8
  %40 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %41 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = mul i64 %39, %43
  %45 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %46 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  br label %48

48:                                               ; preds = %38, %1
  %49 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %50 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MULTI_PKT_EGR, align 4
  %53 = call i32 @HFI1_CAP_KGET_MASK(i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %48
  %56 = load i64, i64* %12, align 8
  %57 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %58 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  store i64 %56, i64* %59, align 8
  br label %60

60:                                               ; preds = %55, %48
  %61 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %62 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ule i64 %64, 1048576
  br i1 %65, label %66, label %79

66:                                               ; preds = %60
  %67 = load i64, i64* %12, align 8
  %68 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %69 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = udiv i64 %71, 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @rounddown_pow_of_two(i32 %73)
  %75 = call i64 @max(i64 %67, i32 %74)
  %76 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %77 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  store i64 %75, i64* %78, align 8
  br label %79

79:                                               ; preds = %66, %60
  br label %80

80:                                               ; preds = %332, %225, %79
  %81 = load i64, i64* %7, align 8
  %82 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %83 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ult i64 %81, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %80
  %88 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %89 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %93 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp ult i64 %91, %95
  br label %97

97:                                               ; preds = %87, %80
  %98 = phi i1 [ false, %80 ], [ %96, %87 ]
  br i1 %98, label %99, label %333

99:                                               ; preds = %97
  %100 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %101 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %100, i32 0, i32 0
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %105 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %109 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 5
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = load i64, i64* %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %8, align 4
  %116 = call i32* @dma_alloc_coherent(i32* %103, i64 %107, i64* %114, i32 %115)
  %117 = ptrtoint i32* %116 to i64
  %118 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %119 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 5
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = load i64, i64* %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  store i64 %117, i64* %124, align 8
  %125 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %126 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 5
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = load i64, i64* %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %195

134:                                              ; preds = %99
  %135 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %136 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %140 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 5
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = load i64, i64* %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  store i64 %138, i64* %145, align 8
  %146 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %147 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 5
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = load i64, i64* %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %155 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 6
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %159 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  store i64 %153, i64* %163, align 8
  %164 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %165 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 5
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = load i64, i64* %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %173 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 6
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %177 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 1
  store i64 %171, i64* %181, align 8
  %182 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %183 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %184, align 8
  %187 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %188 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* %7, align 8
  %192 = add i64 %191, %190
  store i64 %192, i64* %7, align 8
  %193 = load i64, i64* %10, align 8
  %194 = add i64 %193, 1
  store i64 %194, i64* %10, align 8
  br label %332

195:                                              ; preds = %99
  store i64 0, i64* %16, align 8
  %196 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %197 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %196, i32 0, i32 4
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* %12, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %209, label %202

202:                                              ; preds = %195
  %203 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %204 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @MULTI_PKT_EGR, align 4
  %207 = call i32 @HFI1_CAP_KGET_MASK(i32 %205, i32 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %217, label %209

209:                                              ; preds = %202, %195
  %210 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %211 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %212 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @dd_dev_err(%struct.hfi1_devdata* %210, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %213)
  %215 = load i32, i32* @ENOMEM, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %11, align 4
  br label %487

217:                                              ; preds = %202
  %218 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %219 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %218, i32 0, i32 4
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = udiv i64 %221, 2
  store i64 %222, i64* %13, align 8
  %223 = load i64, i64* %10, align 8
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %217
  %226 = load i64, i64* %13, align 8
  %227 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %228 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %227, i32 0, i32 4
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 1
  store i64 %226, i64* %229, align 8
  br label %80

230:                                              ; preds = %217
  %231 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %232 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %231, i32 0, i32 4
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 2
  store i64 0, i64* %233, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %234

234:                                              ; preds = %324, %230
  %235 = load i64, i64* %15, align 8
  %236 = load i64, i64* %10, align 8
  %237 = icmp ult i64 %235, %236
  br i1 %237, label %238, label %327

238:                                              ; preds = %234
  %239 = load i64, i64* %14, align 8
  %240 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %241 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %240, i32 0, i32 4
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = icmp uge i64 %239, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %238
  br label %327

246:                                              ; preds = %238
  %247 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %248 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %247, i32 0, i32 4
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 5
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %249, align 8
  %251 = load i64, i64* %15, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* %16, align 8
  %256 = add nsw i64 %254, %255
  %257 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %258 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %257, i32 0, i32 4
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 6
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %259, align 8
  %261 = load i64, i64* %14, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 1
  store i64 %256, i64* %263, align 8
  %264 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %265 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %264, i32 0, i32 4
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 5
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %266, align 8
  %268 = load i64, i64* %15, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* %16, align 8
  %273 = add nsw i64 %271, %272
  %274 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %275 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %274, i32 0, i32 4
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 6
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** %276, align 8
  %278 = load i64, i64* %14, align 8
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i32 0, i32 0
  store i64 %273, i64* %280, align 8
  %281 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %282 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %281, i32 0, i32 4
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = add i64 %284, 1
  store i64 %285, i64* %283, align 8
  %286 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %287 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %286, i32 0, i32 4
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 5
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** %288, align 8
  %290 = load i64, i64* %15, align 8
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* %16, align 8
  %295 = add nsw i64 %293, %294
  %296 = load i64, i64* %13, align 8
  %297 = add i64 %295, %296
  %298 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %299 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %298, i32 0, i32 4
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 5
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** %300, align 8
  %302 = load i64, i64* %15, align 8
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %307 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %306, i32 0, i32 4
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 5
  %309 = load %struct.TYPE_8__*, %struct.TYPE_8__** %308, align 8
  %310 = load i64, i64* %15, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = add i64 %305, %313
  %315 = icmp eq i64 %297, %314
  br i1 %315, label %316, label %319

316:                                              ; preds = %246
  %317 = load i64, i64* %15, align 8
  %318 = add i64 %317, 1
  store i64 %318, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %323

319:                                              ; preds = %246
  %320 = load i64, i64* %13, align 8
  %321 = load i64, i64* %16, align 8
  %322 = add i64 %321, %320
  store i64 %322, i64* %16, align 8
  br label %323

323:                                              ; preds = %319, %316
  br label %324

324:                                              ; preds = %323
  %325 = load i64, i64* %14, align 8
  %326 = add i64 %325, 1
  store i64 %326, i64* %14, align 8
  br label %234

327:                                              ; preds = %245, %234
  %328 = load i64, i64* %13, align 8
  %329 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %330 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %329, i32 0, i32 4
  %331 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %330, i32 0, i32 1
  store i64 %328, i64* %331, align 8
  br label %332

332:                                              ; preds = %327, %134
  br label %80

333:                                              ; preds = %97
  %334 = load i64, i64* %10, align 8
  %335 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %336 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %335, i32 0, i32 4
  %337 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i32 0, i32 4
  store i64 %334, i64* %337, align 8
  %338 = load i64, i64* %7, align 8
  %339 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %340 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %339, i32 0, i32 4
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 0
  store i64 %338, i64* %341, align 8
  %342 = load i32, i32* @PROC, align 4
  %343 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %344 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %343, i32 0, i32 5
  %345 = load i32, i32* %344, align 8
  %346 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %347 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %346, i32 0, i32 4
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 2
  %349 = load i64, i64* %348, align 8
  %350 = trunc i64 %349 to i32
  %351 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %352 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %351, i32 0, i32 4
  %353 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %352, i32 0, i32 1
  %354 = load i64, i64* %353, align 8
  %355 = udiv i64 %354, 1024
  %356 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %357 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %356, i32 0, i32 4
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = udiv i64 %359, 1024
  %361 = call i32 (i32, i8*, i32, i32, ...) @hfi1_cdbg(i32 %342, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %345, i32 %350, i64 %355, i64 %360)
  %362 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %363 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %362, i32 0, i32 4
  %364 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %363, i32 0, i32 2
  %365 = load i64, i64* %364, align 8
  %366 = udiv i64 %365, 2
  %367 = trunc i64 %366 to i32
  %368 = call i32 @rounddown_pow_of_two(i32 %367)
  %369 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %370 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %369, i32 0, i32 4
  %371 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %370, i32 0, i32 7
  store i32 %368, i32* %371, align 8
  %372 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %373 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %372, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %376 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = mul i64 %374, %378
  store i64 %379, i64* %5, align 8
  %380 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %381 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %380, i32 0, i32 4
  %382 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %381, i32 0, i32 2
  %383 = load i64, i64* %382, align 8
  %384 = trunc i64 %383 to i32
  %385 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %386 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %386, i32 0, i32 0
  %388 = load i64, i64* %387, align 8
  %389 = call i64 @roundup(i32 %384, i64 %388)
  store i64 %389, i64* %6, align 8
  %390 = load i64, i64* %5, align 8
  %391 = load i64, i64* %6, align 8
  %392 = sub i64 %390, %391
  %393 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %394 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %393, i32 0, i32 1
  store i64 %392, i64* %394, align 8
  %395 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %396 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %395, i32 0, i32 1
  %397 = load i64, i64* %396, align 8
  %398 = load i32, i32* @MAX_TID_PAIR_ENTRIES, align 4
  %399 = mul nsw i32 %398, 2
  %400 = sext i32 %399 to i64
  %401 = icmp ugt i64 %397, %400
  br i1 %401, label %402, label %408

402:                                              ; preds = %333
  %403 = load i32, i32* @MAX_TID_PAIR_ENTRIES, align 4
  %404 = mul nsw i32 %403, 2
  %405 = sext i32 %404 to i64
  %406 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %407 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %406, i32 0, i32 1
  store i64 %405, i64* %407, align 8
  br label %408

408:                                              ; preds = %402, %333
  %409 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %410 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %409, i32 0, i32 3
  %411 = load i64, i64* %410, align 8
  %412 = load i64, i64* %6, align 8
  %413 = add i64 %411, %412
  %414 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %415 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %414, i32 0, i32 2
  store i64 %413, i64* %415, align 8
  %416 = load i32, i32* @PROC, align 4
  %417 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %418 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %417, i32 0, i32 5
  %419 = load i32, i32* %418, align 8
  %420 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %421 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %420, i32 0, i32 4
  %422 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %421, i32 0, i32 2
  %423 = load i64, i64* %422, align 8
  %424 = trunc i64 %423 to i32
  %425 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %426 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %425, i32 0, i32 1
  %427 = load i64, i64* %426, align 8
  %428 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %429 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %428, i32 0, i32 3
  %430 = load i64, i64* %429, align 8
  %431 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %432 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %431, i32 0, i32 2
  %433 = load i64, i64* %432, align 8
  %434 = call i32 (i32, i8*, i32, i32, ...) @hfi1_cdbg(i32 %416, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %419, i32 %424, i64 %427, i64 %430, i64 %433)
  %435 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %436 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %435, i32 0, i32 4
  %437 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %436, i32 0, i32 1
  %438 = load i64, i64* %437, align 8
  %439 = trunc i64 %438 to i32
  %440 = load i32, i32* @PT_EAGER, align 4
  %441 = call i32 @hfi1_rcvbuf_validate(i32 %439, i32 %440, i64* %9)
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %456, label %443

443:                                              ; preds = %408
  %444 = load i32, i32* @PROC, align 4
  %445 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %446 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %445, i32 0, i32 5
  %447 = load i32, i32* %446, align 8
  %448 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %449 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %448, i32 0, i32 4
  %450 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %449, i32 0, i32 1
  %451 = load i64, i64* %450, align 8
  %452 = trunc i64 %451 to i32
  %453 = call i32 (i32, i8*, i32, i32, ...) @hfi1_cdbg(i32 %444, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %447, i32 %452)
  %454 = load i32, i32* @EINVAL, align 4
  %455 = sub nsw i32 0, %454
  store i32 %455, i32* %11, align 4
  br label %487

456:                                              ; preds = %408
  store i64 0, i64* %10, align 8
  br label %457

457:                                              ; preds = %483, %456
  %458 = load i64, i64* %10, align 8
  %459 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %460 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %459, i32 0, i32 4
  %461 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %460, i32 0, i32 2
  %462 = load i64, i64* %461, align 8
  %463 = icmp ult i64 %458, %462
  br i1 %463, label %464, label %486

464:                                              ; preds = %457
  %465 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %466 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %467 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %466, i32 0, i32 3
  %468 = load i64, i64* %467, align 8
  %469 = load i64, i64* %10, align 8
  %470 = add i64 %468, %469
  %471 = load i32, i32* @PT_EAGER, align 4
  %472 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %473 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %472, i32 0, i32 4
  %474 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %473, i32 0, i32 6
  %475 = load %struct.TYPE_9__*, %struct.TYPE_9__** %474, align 8
  %476 = load i64, i64* %10, align 8
  %477 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %475, i64 %476
  %478 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %477, i32 0, i32 1
  %479 = load i64, i64* %478, align 8
  %480 = load i64, i64* %9, align 8
  %481 = call i32 @hfi1_put_tid(%struct.hfi1_devdata* %465, i64 %470, i32 %471, i64 %479, i64 %480)
  %482 = call i32 (...) @cond_resched()
  br label %483

483:                                              ; preds = %464
  %484 = load i64, i64* %10, align 8
  %485 = add i64 %484, 1
  store i64 %485, i64* %10, align 8
  br label %457

486:                                              ; preds = %457
  store i32 0, i32* %2, align 4
  br label %563

487:                                              ; preds = %443, %209
  store i64 0, i64* %10, align 8
  br label %488

488:                                              ; preds = %558, %487
  %489 = load i64, i64* %10, align 8
  %490 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %491 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %490, i32 0, i32 4
  %492 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %491, i32 0, i32 2
  %493 = load i64, i64* %492, align 8
  %494 = icmp ult i64 %489, %493
  br i1 %494, label %495, label %505

495:                                              ; preds = %488
  %496 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %497 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %496, i32 0, i32 4
  %498 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %497, i32 0, i32 5
  %499 = load %struct.TYPE_8__*, %struct.TYPE_8__** %498, align 8
  %500 = load i64, i64* %10, align 8
  %501 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %499, i64 %500
  %502 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %501, i32 0, i32 2
  %503 = load i64, i64* %502, align 8
  %504 = icmp ne i64 %503, 0
  br label %505

505:                                              ; preds = %495, %488
  %506 = phi i1 [ false, %488 ], [ %504, %495 ]
  br i1 %506, label %507, label %561

507:                                              ; preds = %505
  %508 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %509 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %508, i32 0, i32 0
  %510 = load %struct.TYPE_7__*, %struct.TYPE_7__** %509, align 8
  %511 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %510, i32 0, i32 0
  %512 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %513 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %512, i32 0, i32 4
  %514 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %513, i32 0, i32 5
  %515 = load %struct.TYPE_8__*, %struct.TYPE_8__** %514, align 8
  %516 = load i64, i64* %10, align 8
  %517 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %515, i64 %516
  %518 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %517, i32 0, i32 1
  %519 = load i64, i64* %518, align 8
  %520 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %521 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %520, i32 0, i32 4
  %522 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %521, i32 0, i32 5
  %523 = load %struct.TYPE_8__*, %struct.TYPE_8__** %522, align 8
  %524 = load i64, i64* %10, align 8
  %525 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %523, i64 %524
  %526 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %525, i32 0, i32 2
  %527 = load i64, i64* %526, align 8
  %528 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %529 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %528, i32 0, i32 4
  %530 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %529, i32 0, i32 5
  %531 = load %struct.TYPE_8__*, %struct.TYPE_8__** %530, align 8
  %532 = load i64, i64* %10, align 8
  %533 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %531, i64 %532
  %534 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %533, i32 0, i32 0
  %535 = load i64, i64* %534, align 8
  %536 = call i32 @dma_free_coherent(i32* %511, i64 %519, i64 %527, i64 %535)
  %537 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %538 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %537, i32 0, i32 4
  %539 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %538, i32 0, i32 5
  %540 = load %struct.TYPE_8__*, %struct.TYPE_8__** %539, align 8
  %541 = load i64, i64* %10, align 8
  %542 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %540, i64 %541
  %543 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %542, i32 0, i32 2
  store i64 0, i64* %543, align 8
  %544 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %545 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %544, i32 0, i32 4
  %546 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %545, i32 0, i32 5
  %547 = load %struct.TYPE_8__*, %struct.TYPE_8__** %546, align 8
  %548 = load i64, i64* %10, align 8
  %549 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %547, i64 %548
  %550 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %549, i32 0, i32 0
  store i64 0, i64* %550, align 8
  %551 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %552 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %551, i32 0, i32 4
  %553 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %552, i32 0, i32 5
  %554 = load %struct.TYPE_8__*, %struct.TYPE_8__** %553, align 8
  %555 = load i64, i64* %10, align 8
  %556 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %554, i64 %555
  %557 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %556, i32 0, i32 1
  store i64 0, i64* %557, align 8
  br label %558

558:                                              ; preds = %507
  %559 = load i64, i64* %10, align 8
  %560 = add i64 %559, 1
  store i64 %560, i64* %10, align 8
  br label %488

561:                                              ; preds = %505
  %562 = load i32, i32* %11, align 4
  store i32 %562, i32* %2, align 4
  br label %563

563:                                              ; preds = %561, %486
  %564 = load i32, i32* %2, align 4
  ret i32 %564
}

declare dso_local i64 @roundup_pow_of_two(i32) #1

declare dso_local i32 @HFI1_CAP_KGET_MASK(i32, i32) #1

declare dso_local i64 @max(i64, i32) #1

declare dso_local i32 @rounddown_pow_of_two(i32) #1

declare dso_local i32* @dma_alloc_coherent(i32*, i64, i64*, i32) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, i32) #1

declare dso_local i32 @hfi1_cdbg(i32, i8*, i32, i32, ...) #1

declare dso_local i64 @roundup(i32, i64) #1

declare dso_local i32 @hfi1_rcvbuf_validate(i32, i32, i64*) #1

declare dso_local i32 @hfi1_put_tid(%struct.hfi1_devdata*, i64, i32, i64, i64) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
