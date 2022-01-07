; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv_kvp.c_kvp_send_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv_kvp.c_kvp_send_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.hv_kvp_msg* }
%struct.hv_kvp_msg = type { %struct.TYPE_17__, %struct.TYPE_10__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i64, i32, i64, i32, i32 }
%struct.TYPE_10__ = type { i32, i8* }
%struct.work_struct = type { i32 }

@kvp_transaction = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@HVUTIL_HOSTMSG_RECEIVED = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@UTF16_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@HV_KVP_EXCHANGE_MAX_VALUE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@HV_KVP_EXCHANGE_MAX_KEY_SIZE = common dso_local global i32 0, align 4
@HVUTIL_USERSPACE_REQ = common dso_local global i64 0, align 8
@hvt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"KVP: failed to communicate to the daemon: %d\0A\00", align 1
@kvp_timeout_work = common dso_local global i32 0, align 4
@HV_E_FAIL = common dso_local global i32 0, align 4
@HVUTIL_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @kvp_send_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvp_send_key(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.hv_kvp_msg*, align 8
  %4 = alloca %struct.hv_kvp_msg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %10 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @kvp_transaction, i32 0, i32 1), align 8
  %11 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %5, align 8
  %16 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @kvp_transaction, i32 0, i32 1), align 8
  %17 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %6, align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @kvp_transaction, i32 0, i32 0), align 8
  %21 = load i64, i64* @HVUTIL_HOSTMSG_RECEIVED, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %249

24:                                               ; preds = %1
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.hv_kvp_msg* @kzalloc(i32 96, i32 %25)
  store %struct.hv_kvp_msg* %26, %struct.hv_kvp_msg** %3, align 8
  %27 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %28 = icmp ne %struct.hv_kvp_msg* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %249

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %34 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %38 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  store i8* %36, i8** %39, align 8
  %40 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @kvp_transaction, i32 0, i32 1), align 8
  store %struct.hv_kvp_msg* %40, %struct.hv_kvp_msg** %4, align 8
  %41 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %42 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %228 [
    i32 131, label %45
    i32 133, label %49
    i32 132, label %53
    i32 134, label %162
    i32 136, label %192
    i32 135, label %218
  ]

45:                                               ; preds = %30
  %46 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %47 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %48 = call i32 @process_ib_ipinfo(%struct.hv_kvp_msg* %46, %struct.hv_kvp_msg* %47, i32 131)
  br label %228

49:                                               ; preds = %30
  %50 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %51 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %52 = call i32 @process_ib_ipinfo(%struct.hv_kvp_msg* %50, %struct.hv_kvp_msg* %51, i32 133)
  br label %228

53:                                               ; preds = %30
  %54 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %55 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %132 [
    i32 130, label %60
    i32 129, label %90
    i32 128, label %111
  ]

60:                                               ; preds = %53
  %61 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %62 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i32*
  %68 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %69 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @UTF16_LITTLE_ENDIAN, align 4
  %75 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %76 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @HV_KVP_EXCHANGE_MAX_VALUE_SIZE, align 4
  %82 = sub nsw i32 %81, 1
  %83 = call i32 @utf16s_to_utf8s(i32* %67, i32 %73, i32 %74, i64 %80, i32 %82)
  %84 = add nsw i32 %83, 1
  %85 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %86 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 5
  store i32 %84, i32* %89, align 8
  br label %132

90:                                               ; preds = %53
  %91 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %92 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %7, align 4
  %97 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %98 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @sprintf(i64 %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = add nsw i32 %104, 1
  %106 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %107 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 5
  store i32 %105, i32* %110, align 8
  br label %132

111:                                              ; preds = %53
  %112 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %113 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %8, align 4
  %118 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %119 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @sprintf(i64 %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %124)
  %126 = add nsw i32 %125, 1
  %127 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %128 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 5
  store i32 %126, i32* %131, align 8
  br label %132

132:                                              ; preds = %53, %111, %90, %60
  %133 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %134 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to i32*
  %140 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %141 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @UTF16_LITTLE_ENDIAN, align 4
  %147 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %148 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load i32, i32* @HV_KVP_EXCHANGE_MAX_KEY_SIZE, align 4
  %154 = sub nsw i32 %153, 1
  %155 = call i32 @utf16s_to_utf8s(i32* %139, i32 %145, i32 %146, i64 %152, i32 %154)
  %156 = add nsw i32 %155, 1
  %157 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %158 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 3
  store i32 %156, i32* %161, align 8
  br label %228

162:                                              ; preds = %30
  %163 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %164 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = inttoptr i64 %168 to i32*
  %170 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %171 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @UTF16_LITTLE_ENDIAN, align 4
  %177 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %178 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i32, i32* @HV_KVP_EXCHANGE_MAX_KEY_SIZE, align 4
  %184 = sub nsw i32 %183, 1
  %185 = call i32 @utf16s_to_utf8s(i32* %169, i32 %175, i32 %176, i64 %182, i32 %184)
  %186 = add nsw i32 %185, 1
  %187 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %188 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 1
  store i32 %186, i32* %191, align 8
  br label %228

192:                                              ; preds = %30
  %193 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %194 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = inttoptr i64 %197 to i32*
  %199 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %200 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @UTF16_LITTLE_ENDIAN, align 4
  %205 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %206 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i32, i32* @HV_KVP_EXCHANGE_MAX_KEY_SIZE, align 4
  %211 = sub nsw i32 %210, 1
  %212 = call i32 @utf16s_to_utf8s(i32* %198, i32 %203, i32 %204, i64 %209, i32 %211)
  %213 = add nsw i32 %212, 1
  %214 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %215 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 1
  store i32 %213, i32* %217, align 8
  br label %228

218:                                              ; preds = %30
  %219 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %4, align 8
  %220 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %225 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 0
  store i32 %223, i32* %227, align 8
  br label %228

228:                                              ; preds = %30, %218, %192, %162, %132, %49, %45
  %229 = load i64, i64* @HVUTIL_USERSPACE_REQ, align 8
  store i64 %229, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @kvp_transaction, i32 0, i32 0), align 8
  %230 = load i32, i32* @hvt, align 4
  %231 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %232 = call i32 @hvutil_transport_send(i32 %230, %struct.hv_kvp_msg* %231, i32 96, i32* null)
  store i32 %232, i32* %9, align 4
  %233 = load i32, i32* %9, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %246

235:                                              ; preds = %228
  %236 = load i32, i32* %9, align 4
  %237 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %236)
  %238 = call i64 @cancel_delayed_work_sync(i32* @kvp_timeout_work)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %235
  %241 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %242 = load i32, i32* @HV_E_FAIL, align 4
  %243 = call i32 @kvp_respond_to_host(%struct.hv_kvp_msg* %241, i32 %242)
  %244 = load i64, i64* @HVUTIL_READY, align 8
  store i64 %244, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @kvp_transaction, i32 0, i32 0), align 8
  br label %245

245:                                              ; preds = %240, %235
  br label %246

246:                                              ; preds = %245, %228
  %247 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %248 = call i32 @kfree(%struct.hv_kvp_msg* %247)
  br label %249

249:                                              ; preds = %246, %29, %23
  ret void
}

declare dso_local %struct.hv_kvp_msg* @kzalloc(i32, i32) #1

declare dso_local i32 @process_ib_ipinfo(%struct.hv_kvp_msg*, %struct.hv_kvp_msg*, i32) #1

declare dso_local i32 @utf16s_to_utf8s(i32*, i32, i32, i64, i32) #1

declare dso_local i32 @sprintf(i64, i8*, i32) #1

declare dso_local i32 @hvutil_transport_send(i32, %struct.hv_kvp_msg*, i32, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i64 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @kvp_respond_to_host(%struct.hv_kvp_msg*, i32) #1

declare dso_local i32 @kfree(%struct.hv_kvp_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
