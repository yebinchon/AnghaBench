; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_reqmgr.c_nitrox_process_se_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_reqmgr.c_nitrox_process_se_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { i32, i32* }
%struct.se_crypto_request = type { i32, i32, %struct.TYPE_24__, i64, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.nitrox_softreq = type { %struct.TYPE_15__, %struct.TYPE_19__, %struct.TYPE_21__, i32*, %struct.TYPE_18__, i32, i8*, i32, i32, i32, %struct.nitrox_device* }
%struct.TYPE_15__ = type { i64*, %struct.TYPE_17__, %struct.TYPE_14__, %struct.TYPE_22__, i8* }
%struct.TYPE_17__ = type { %struct.TYPE_16__, i8** }
%struct.TYPE_16__ = type { i8*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i8** }
%struct.TYPE_13__ = type { i32, i8*, i32, i32, i32, i64, i32 }
%struct.TYPE_22__ = type { i8*, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i64, i64, i32, i32 }
%struct.TYPE_19__ = type { i8*, i32 }
%struct.TYPE_21__ = type { i64, i32, i8* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.ctx_hdr = type { i8* }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REQ_NOT_POSTED = common dso_local global i32 0, align 4
@FDATA_SIZE = common dso_local global i64 0, align 8
@MIN_UDD_LEN = common dso_local global i32 0, align 4
@SOLICIT_BASE_DPORT = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nitrox_process_se_request(%struct.nitrox_device* %0, %struct.se_crypto_request* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nitrox_device*, align 8
  %7 = alloca %struct.se_crypto_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.nitrox_softreq*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ctx_hdr*, align 8
  %15 = alloca i32*, align 8
  store %struct.nitrox_device* %0, %struct.nitrox_device** %6, align 8
  store %struct.se_crypto_request* %1, %struct.se_crypto_request** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %17 = call i32 @nitrox_ready(%struct.nitrox_device* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %322

22:                                               ; preds = %4
  %23 = load %struct.se_crypto_request*, %struct.se_crypto_request** %7, align 8
  %24 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.nitrox_softreq* @kzalloc(i32 232, i32 %25)
  store %struct.nitrox_softreq* %26, %struct.nitrox_softreq** %10, align 8
  %27 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %28 = icmp ne %struct.nitrox_softreq* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %322

32:                                               ; preds = %22
  %33 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %34 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %35 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %34, i32 0, i32 10
  store %struct.nitrox_device* %33, %struct.nitrox_device** %35, align 8
  %36 = load %struct.se_crypto_request*, %struct.se_crypto_request** %7, align 8
  %37 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %40 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %39, i32 0, i32 9
  store i32 %38, i32* %40, align 8
  %41 = load %struct.se_crypto_request*, %struct.se_crypto_request** %7, align 8
  %42 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %45 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %48 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %51 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %50, i32 0, i32 6
  store i8* %49, i8** %51, align 8
  %52 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %53 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %52, i32 0, i32 5
  %54 = load i32, i32* @REQ_NOT_POSTED, align 4
  %55 = call i32 @atomic_set(i32* %53, i32 %54)
  %56 = load %struct.se_crypto_request*, %struct.se_crypto_request** %7, align 8
  %57 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %60 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.se_crypto_request*, %struct.se_crypto_request** %7, align 8
  %63 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %66 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %69 = load %struct.se_crypto_request*, %struct.se_crypto_request** %7, align 8
  %70 = call i32 @softreq_map_iobuf(%struct.nitrox_softreq* %68, %struct.se_crypto_request* %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %32
  %74 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %75 = call i32 @kfree(%struct.nitrox_softreq* %74)
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %5, align 4
  br label %322

77:                                               ; preds = %32
  %78 = load %struct.se_crypto_request*, %struct.se_crypto_request** %7, align 8
  %79 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %77
  %83 = load %struct.se_crypto_request*, %struct.se_crypto_request** %7, align 8
  %84 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i32*
  store i32* %86, i32** %15, align 8
  %87 = load i32*, i32** %15, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 -8
  %89 = bitcast i32* %88 to %struct.ctx_hdr*
  store %struct.ctx_hdr* %89, %struct.ctx_hdr** %14, align 8
  %90 = load %struct.ctx_hdr*, %struct.ctx_hdr** %14, align 8
  %91 = getelementptr inbounds %struct.ctx_hdr, %struct.ctx_hdr* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %11, align 8
  br label %93

93:                                               ; preds = %82, %77
  %94 = call i32 (...) @smp_processor_id()
  %95 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %96 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = srem i32 %94, %97
  store i32 %98, i32* %12, align 4
  %99 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %100 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %106 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %105, i32 0, i32 3
  store i32* %104, i32** %106, align 8
  %107 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %108 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = call i8* @cpu_to_be64(i8* %110)
  %112 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %113 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 4
  store i8* %111, i8** %114, align 8
  %115 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %116 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 0
  store i8* null, i8** %118, align 8
  %119 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %120 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 0
  store i32 1, i32* %123, align 8
  %124 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %125 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %129 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 4
  store i32 %127, i32* %132, align 4
  %133 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %134 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %138 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 3
  store i32 %136, i32* %141, align 8
  %142 = load i64, i64* @FDATA_SIZE, align 8
  %143 = add i64 %142, 4
  %144 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %145 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 1
  store i64 %143, i64* %148, align 8
  %149 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %150 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %156 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %154, %158
  %160 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %161 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 2
  store i64 %159, i64* %164, align 8
  %165 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %166 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = call i8* @cpu_to_be64(i8* %169)
  %171 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %172 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 0
  store i8* %170, i8** %174, align 8
  %175 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %176 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 1
  %179 = load i8**, i8*** %178, align 8
  %180 = getelementptr inbounds i8*, i8** %179, i64 0
  store i8* null, i8** %180, align 8
  %181 = load i32, i32* @MIN_UDD_LEN, align 4
  %182 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %183 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 6
  store i32 %181, i32* %186, align 8
  %187 = load %struct.se_crypto_request*, %struct.se_crypto_request** %7, align 8
  %188 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = sdiv i32 %191, 8
  %193 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %194 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  store i32 %192, i32* %197, align 8
  %198 = load i64, i64* @SOLICIT_BASE_DPORT, align 8
  %199 = load i32, i32* %12, align 4
  %200 = sext i32 %199 to i64
  %201 = add nsw i64 %198, %200
  %202 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %203 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 5
  store i64 %201, i64* %206, align 8
  %207 = load %struct.se_crypto_request*, %struct.se_crypto_request** %7, align 8
  %208 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %213 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 4
  store i32 %211, i32* %216, align 8
  %217 = load %struct.se_crypto_request*, %struct.se_crypto_request** %7, align 8
  %218 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %223 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 3
  store i32 %221, i32* %226, align 4
  %227 = load %struct.se_crypto_request*, %struct.se_crypto_request** %7, align 8
  %228 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %231 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 2
  store i32 %229, i32* %234, align 8
  %235 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %236 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 1
  %239 = load i8**, i8*** %238, align 8
  %240 = getelementptr inbounds i8*, i8** %239, i64 0
  %241 = load i8*, i8** %240, align 8
  %242 = call i8* @cpu_to_be64(i8* %241)
  %243 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %244 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 1
  %247 = load i8**, i8*** %246, align 8
  %248 = getelementptr inbounds i8*, i8** %247, i64 0
  store i8* %242, i8** %248, align 8
  %249 = load i8*, i8** %11, align 8
  %250 = call i8* @cpu_to_be64(i8* %249)
  %251 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %252 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 1
  store i8* %250, i8** %255, align 8
  %256 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %257 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 1
  %260 = load i8**, i8*** %259, align 8
  %261 = getelementptr inbounds i8*, i8** %260, i64 0
  store i8* null, i8** %261, align 8
  %262 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %263 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %267 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 1
  store i32 %265, i32* %270, align 8
  %271 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %272 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 1
  %275 = load i8**, i8*** %274, align 8
  %276 = getelementptr inbounds i8*, i8** %275, i64 0
  %277 = load i8*, i8** %276, align 8
  %278 = call i8* @cpu_to_be64(i8* %277)
  %279 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %280 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 1
  %283 = load i8**, i8*** %282, align 8
  %284 = getelementptr inbounds i8*, i8** %283, i64 0
  store i8* %278, i8** %284, align 8
  %285 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %286 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %286, i32 0, i32 0
  %288 = load i8*, i8** %287, align 8
  %289 = call i8* @cpu_to_be64(i8* %288)
  %290 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %291 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %293, i32 0, i32 0
  store i8* %289, i8** %294, align 8
  %295 = load %struct.se_crypto_request*, %struct.se_crypto_request** %7, align 8
  %296 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %295, i32 0, i32 0
  %297 = bitcast i32* %296 to i64*
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %300 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %300, i32 0, i32 0
  %302 = load i64*, i64** %301, align 8
  %303 = getelementptr inbounds i64, i64* %302, i64 0
  store i64 %298, i64* %303, align 8
  %304 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %305 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %305, i32 0, i32 0
  %307 = load i64*, i64** %306, align 8
  %308 = getelementptr inbounds i64, i64* %307, i64 1
  store i64 0, i64* %308, align 8
  %309 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %310 = call i32 @nitrox_enqueue_request(%struct.nitrox_softreq* %309)
  store i32 %310, i32* %13, align 4
  %311 = load i32, i32* %13, align 4
  %312 = load i32, i32* @ENOSPC, align 4
  %313 = sub nsw i32 0, %312
  %314 = icmp eq i32 %311, %313
  br i1 %314, label %315, label %316

315:                                              ; preds = %93
  br label %318

316:                                              ; preds = %93
  %317 = load i32, i32* %13, align 4
  store i32 %317, i32* %5, align 4
  br label %322

318:                                              ; preds = %315
  %319 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %10, align 8
  %320 = call i32 @softreq_destroy(%struct.nitrox_softreq* %319)
  %321 = load i32, i32* %13, align 4
  store i32 %321, i32* %5, align 4
  br label %322

322:                                              ; preds = %318, %316, %73, %29, %19
  %323 = load i32, i32* %5, align 4
  ret i32 %323
}

declare dso_local i32 @nitrox_ready(%struct.nitrox_device*) #1

declare dso_local %struct.nitrox_softreq* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @softreq_map_iobuf(%struct.nitrox_softreq*, %struct.se_crypto_request*) #1

declare dso_local i32 @kfree(%struct.nitrox_softreq*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i8* @cpu_to_be64(i8*) #1

declare dso_local i32 @nitrox_enqueue_request(%struct.nitrox_softreq*) #1

declare dso_local i32 @softreq_destroy(%struct.nitrox_softreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
