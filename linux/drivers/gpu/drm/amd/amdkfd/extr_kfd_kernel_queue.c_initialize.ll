; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue.c_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue.c_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_queue = type { %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_17__*, i64, %union.PM4_MES_TYPE_3_HEADER*, i32, i64, i64, i64, %union.PM4_MES_TYPE_3_HEADER*, %union.PM4_MES_TYPE_3_HEADER*, %union.PM4_MES_TYPE_3_HEADER*, %struct.TYPE_13__, i32, %struct.kfd_dev* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.kfd_dev* }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__*, i32, i32)*, i32 (%struct.TYPE_16__*, i32, i32, i32, i32*, i32*)*, i32 (%struct.TYPE_16__*, i32*, i32, i32*, i32*)*, i32, i32 (i32, i32*)* }
%struct.TYPE_17__ = type { i64, %union.PM4_MES_TYPE_3_HEADER* }
%union.PM4_MES_TYPE_3_HEADER = type { i32* }
%struct.TYPE_13__ = type { i32 (%struct.kernel_queue.0*, %struct.kfd_dev*, i32, i32)* }
%struct.kernel_queue.0 = type opaque
%struct.kfd_dev = type { %struct.TYPE_14__*, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_16__** }
%struct.queue_properties = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32*, i32*, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Initializing queue type %d size %d\0A\00", align 1
@IT_NOP = common dso_local global i32 0, align 4
@PM4_TYPE_3 = common dso_local global i32 0, align 4
@PM4_COUNT_ZERO = common dso_local global i32 0, align 4
@KFD_MQD_TYPE_DIQ = common dso_local global i64 0, align 8
@KFD_MQD_TYPE_HIQ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid queue type %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to initialize doorbell\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to init pq queues size %d\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Assigning hiq to hqd\0A\00", align 1
@KFD_CIK_HIQ_PIPE = common dso_local global i32 0, align 4
@KFD_CIK_HIQ_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernel_queue*, %struct.kfd_dev*, i32, i32)* @initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initialize(%struct.kernel_queue* %0, %struct.kfd_dev* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kernel_queue*, align 8
  %7 = alloca %struct.kfd_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.queue_properties, align 8
  %11 = alloca i32, align 4
  %12 = alloca %union.PM4_MES_TYPE_3_HEADER, align 8
  store %struct.kernel_queue* %0, %struct.kernel_queue** %6, align 8
  store %struct.kfd_dev* %1, %struct.kfd_dev** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 129
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 128
  br label %18

18:                                               ; preds = %15, %4
  %19 = phi i1 [ false, %4 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %414

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  %26 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 128, i32 %25)
  %27 = bitcast %struct.queue_properties* %10 to %union.PM4_MES_TYPE_3_HEADER*
  %28 = call i32 @memset(%union.PM4_MES_TYPE_3_HEADER* %27, i32 0, i32 88)
  %29 = call i32 @memset(%union.PM4_MES_TYPE_3_HEADER* %12, i32 0, i32 8)
  %30 = load i32, i32* @IT_NOP, align 4
  %31 = bitcast %union.PM4_MES_TYPE_3_HEADER* %12 to i32*
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* @PM4_TYPE_3, align 4
  %33 = bitcast %union.PM4_MES_TYPE_3_HEADER* %12 to i32*
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* @PM4_COUNT_ZERO, align 4
  %35 = bitcast %union.PM4_MES_TYPE_3_HEADER* %12 to i32*
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 8
  %38 = load %struct.kfd_dev*, %struct.kfd_dev** %7, align 8
  %39 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %40 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %39, i32 0, i32 18
  store %struct.kfd_dev* %38, %struct.kfd_dev** %40, align 8
  %41 = bitcast %union.PM4_MES_TYPE_3_HEADER* %12 to i32*
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %44 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %43, i32 0, i32 17
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %8, align 4
  switch i32 %45, label %68 [
    i32 129, label %46
    i32 128, label %57
  ]

46:                                               ; preds = %24
  %47 = load %struct.kfd_dev*, %struct.kfd_dev** %7, align 8
  %48 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %47, i32 0, i32 1
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %50, align 8
  %52 = load i64, i64* @KFD_MQD_TYPE_DIQ, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %51, i64 %52
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %56 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %55, i32 0, i32 5
  store %struct.TYPE_16__* %54, %struct.TYPE_16__** %56, align 8
  br label %71

57:                                               ; preds = %24
  %58 = load %struct.kfd_dev*, %struct.kfd_dev** %7, align 8
  %59 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %58, i32 0, i32 1
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %61, align 8
  %63 = load i64, i64* @KFD_MQD_TYPE_HIQ, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %62, i64 %63
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %67 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %66, i32 0, i32 5
  store %struct.TYPE_16__* %65, %struct.TYPE_16__** %67, align 8
  br label %71

68:                                               ; preds = %24
  %69 = load i32, i32* %8, align 4
  %70 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  store i32 0, i32* %5, align 4
  br label %414

71:                                               ; preds = %57, %46
  %72 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %73 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %72, i32 0, i32 5
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %73, align 8
  %75 = icmp ne %struct.TYPE_16__* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %414

77:                                               ; preds = %71
  %78 = load %struct.kfd_dev*, %struct.kfd_dev** %7, align 8
  %79 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %10, i32 0, i32 13
  %80 = call i32 @kfd_get_kernel_doorbell(%struct.kfd_dev* %78, i32* %79)
  %81 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %10, i32 0, i32 5
  store i32 %80, i32* %81, align 4
  %82 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %10, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %77
  %86 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %413

87:                                               ; preds = %77
  %88 = load %struct.kfd_dev*, %struct.kfd_dev** %7, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %91 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %90, i32 0, i32 0
  %92 = call i32 @kfd_gtt_sa_allocate(%struct.kfd_dev* %88, i32 %89, %struct.TYPE_17__** %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load i32, i32* %9, align 4
  %97 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  br label %408

98:                                               ; preds = %87
  %99 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %100 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %99, i32 0, i32 0
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 1
  %103 = load %union.PM4_MES_TYPE_3_HEADER*, %union.PM4_MES_TYPE_3_HEADER** %102, align 8
  %104 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %105 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %104, i32 0, i32 15
  store %union.PM4_MES_TYPE_3_HEADER* %103, %union.PM4_MES_TYPE_3_HEADER** %105, align 8
  %106 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %107 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %106, i32 0, i32 0
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %112 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %111, i32 0, i32 12
  store i64 %110, i64* %112, align 8
  %113 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %114 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %113, i32 0, i32 16
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32 (%struct.kernel_queue.0*, %struct.kfd_dev*, i32, i32)*, i32 (%struct.kernel_queue.0*, %struct.kfd_dev*, i32, i32)** %115, align 8
  %117 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %118 = bitcast %struct.kernel_queue* %117 to %struct.kernel_queue.0*
  %119 = load %struct.kfd_dev*, %struct.kfd_dev** %7, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %9, align 4
  %122 = call i32 %116(%struct.kernel_queue.0* %118, %struct.kfd_dev* %119, i32 %120, i32 %121)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %98
  br label %402

126:                                              ; preds = %98
  %127 = load %struct.kfd_dev*, %struct.kfd_dev** %7, align 8
  %128 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %129 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %128, i32 0, i32 2
  %130 = call i32 @kfd_gtt_sa_allocate(%struct.kfd_dev* %127, i32 8, %struct.TYPE_17__** %129)
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %126
  br label %396

134:                                              ; preds = %126
  %135 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %136 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %135, i32 0, i32 2
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 1
  %139 = load %union.PM4_MES_TYPE_3_HEADER*, %union.PM4_MES_TYPE_3_HEADER** %138, align 8
  %140 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %141 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %140, i32 0, i32 14
  store %union.PM4_MES_TYPE_3_HEADER* %139, %union.PM4_MES_TYPE_3_HEADER** %141, align 8
  %142 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %143 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %142, i32 0, i32 2
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %148 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %147, i32 0, i32 11
  store i64 %146, i64* %148, align 8
  %149 = load %struct.kfd_dev*, %struct.kfd_dev** %7, align 8
  %150 = load %struct.kfd_dev*, %struct.kfd_dev** %7, align 8
  %151 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %150, i32 0, i32 0
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %156 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %155, i32 0, i32 3
  %157 = call i32 @kfd_gtt_sa_allocate(%struct.kfd_dev* %149, i32 %154, %struct.TYPE_17__** %156)
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %134
  br label %390

161:                                              ; preds = %134
  %162 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %163 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %162, i32 0, i32 3
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 1
  %166 = load %union.PM4_MES_TYPE_3_HEADER*, %union.PM4_MES_TYPE_3_HEADER** %165, align 8
  %167 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %168 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %167, i32 0, i32 13
  store %union.PM4_MES_TYPE_3_HEADER* %166, %union.PM4_MES_TYPE_3_HEADER** %168, align 8
  %169 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %170 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %169, i32 0, i32 3
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %175 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %174, i32 0, i32 10
  store i64 %173, i64* %175, align 8
  %176 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %177 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %176, i32 0, i32 15
  %178 = load %union.PM4_MES_TYPE_3_HEADER*, %union.PM4_MES_TYPE_3_HEADER** %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = call i32 @memset(%union.PM4_MES_TYPE_3_HEADER* %178, i32 0, i32 %179)
  %181 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %182 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %181, i32 0, i32 14
  %183 = load %union.PM4_MES_TYPE_3_HEADER*, %union.PM4_MES_TYPE_3_HEADER** %182, align 8
  %184 = call i32 @memset(%union.PM4_MES_TYPE_3_HEADER* %183, i32 0, i32 8)
  %185 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %186 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %185, i32 0, i32 13
  %187 = load %union.PM4_MES_TYPE_3_HEADER*, %union.PM4_MES_TYPE_3_HEADER** %186, align 8
  %188 = call i32 @memset(%union.PM4_MES_TYPE_3_HEADER* %187, i32 0, i32 8)
  %189 = load i32, i32* %9, align 4
  %190 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %10, i32 0, i32 1
  store i32 %189, i32* %190, align 4
  %191 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %10, i32 0, i32 2
  store i32 0, i32* %191, align 8
  %192 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %10, i32 0, i32 3
  store i32 1, i32* %192, align 4
  %193 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %10, i32 0, i32 4
  store i32 100, i32* %193, align 8
  %194 = load i32, i32* %8, align 4
  %195 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %10, i32 0, i32 0
  store i32 %194, i32* %195, align 8
  %196 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %10, i32 0, i32 12
  store i64 0, i64* %196, align 8
  %197 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %198 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %197, i32 0, i32 12
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %10, i32 0, i32 11
  store i64 %199, i64* %200, align 8
  %201 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %202 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %201, i32 0, i32 11
  %203 = load i64, i64* %202, align 8
  %204 = inttoptr i64 %203 to i32*
  %205 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %10, i32 0, i32 10
  store i32* %204, i32** %205, align 8
  %206 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %207 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %206, i32 0, i32 10
  %208 = load i64, i64* %207, align 8
  %209 = inttoptr i64 %208 to i32*
  %210 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %10, i32 0, i32 9
  store i32* %209, i32** %210, align 8
  %211 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %212 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %211, i32 0, i32 9
  %213 = load i32, i32* %212, align 8
  %214 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %10, i32 0, i32 8
  store i32 %213, i32* %214, align 4
  %215 = load i32, i32* @PAGE_SIZE, align 4
  %216 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %10, i32 0, i32 7
  store i32 %215, i32* %216, align 8
  %217 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %10, i32 0, i32 6
  store i32* null, i32** %217, align 8
  %218 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %219 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %218, i32 0, i32 4
  %220 = bitcast %struct.queue_properties* %10 to %union.PM4_MES_TYPE_3_HEADER*
  %221 = call i64 @init_queue(%struct.TYPE_15__** %219, %union.PM4_MES_TYPE_3_HEADER* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %161
  br label %384

224:                                              ; preds = %161
  %225 = load %struct.kfd_dev*, %struct.kfd_dev** %7, align 8
  %226 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %227 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %226, i32 0, i32 4
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 7
  store %struct.kfd_dev* %225, %struct.kfd_dev** %229, align 8
  %230 = load i32, i32* @current, align 4
  %231 = call i32 @kfd_get_process(i32 %230)
  %232 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %233 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %232, i32 0, i32 4
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 6
  store i32 %231, i32* %235, align 8
  %236 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %237 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %236, i32 0, i32 5
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 4
  %240 = load i32 (i32, i32*)*, i32 (i32, i32*)** %239, align 8
  %241 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %242 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %241, i32 0, i32 5
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %247 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %246, i32 0, i32 4
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 2
  %250 = call i32 %240(i32 %245, i32* %249)
  %251 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %252 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %251, i32 0, i32 4
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 0
  store i32 %250, i32* %254, align 8
  %255 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %256 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %255, i32 0, i32 4
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %262, label %261

261:                                              ; preds = %224
  br label %379

262:                                              ; preds = %224
  %263 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %264 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %263, i32 0, i32 5
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 2
  %267 = load i32 (%struct.TYPE_16__*, i32*, i32, i32*, i32*)*, i32 (%struct.TYPE_16__*, i32*, i32, i32*, i32*)** %266, align 8
  %268 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %269 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %268, i32 0, i32 5
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %269, align 8
  %271 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %272 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %271, i32 0, i32 4
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 1
  %275 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %276 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %275, i32 0, i32 4
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %281 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %280, i32 0, i32 4
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %282, i32 0, i32 5
  %284 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %285 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %284, i32 0, i32 4
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 2
  %288 = call i32 %267(%struct.TYPE_16__* %270, i32* %274, i32 %279, i32* %283, i32* %287)
  %289 = load i32, i32* %8, align 4
  %290 = icmp eq i32 %289, 128
  br i1 %290, label %291, label %331

291:                                              ; preds = %262
  %292 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %293 = load i32, i32* @KFD_CIK_HIQ_PIPE, align 4
  %294 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %295 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %294, i32 0, i32 4
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 4
  store i32 %293, i32* %297, align 8
  %298 = load i32, i32* @KFD_CIK_HIQ_QUEUE, align 4
  %299 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %300 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %299, i32 0, i32 4
  %301 = load %struct.TYPE_15__*, %struct.TYPE_15__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 3
  store i32 %298, i32* %302, align 4
  %303 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %304 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %303, i32 0, i32 5
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 1
  %307 = load i32 (%struct.TYPE_16__*, i32, i32, i32, i32*, i32*)*, i32 (%struct.TYPE_16__*, i32, i32, i32, i32*, i32*)** %306, align 8
  %308 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %309 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %308, i32 0, i32 5
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** %309, align 8
  %311 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %312 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %311, i32 0, i32 4
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %317 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %316, i32 0, i32 4
  %318 = load %struct.TYPE_15__*, %struct.TYPE_15__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %318, i32 0, i32 4
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %322 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %321, i32 0, i32 4
  %323 = load %struct.TYPE_15__*, %struct.TYPE_15__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %327 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %326, i32 0, i32 4
  %328 = load %struct.TYPE_15__*, %struct.TYPE_15__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %328, i32 0, i32 2
  %330 = call i32 %307(%struct.TYPE_16__* %310, i32 %315, i32 %320, i32 %325, i32* %329, i32* null)
  br label %354

331:                                              ; preds = %262
  %332 = load %struct.kfd_dev*, %struct.kfd_dev** %7, align 8
  %333 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %334 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %333, i32 0, i32 6
  %335 = call i32 @kfd_gtt_sa_allocate(%struct.kfd_dev* %332, i32 4, %struct.TYPE_17__** %334)
  store i32 %335, i32* %11, align 4
  %336 = load i32, i32* %11, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %331
  br label %359

339:                                              ; preds = %331
  %340 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %341 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %340, i32 0, i32 6
  %342 = load %struct.TYPE_17__*, %struct.TYPE_17__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %342, i32 0, i32 1
  %344 = load %union.PM4_MES_TYPE_3_HEADER*, %union.PM4_MES_TYPE_3_HEADER** %343, align 8
  %345 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %346 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %345, i32 0, i32 8
  store %union.PM4_MES_TYPE_3_HEADER* %344, %union.PM4_MES_TYPE_3_HEADER** %346, align 8
  %347 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %348 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %347, i32 0, i32 6
  %349 = load %struct.TYPE_17__*, %struct.TYPE_17__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %349, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %353 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %352, i32 0, i32 7
  store i64 %351, i64* %353, align 8
  br label %354

354:                                              ; preds = %339, %291
  %355 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %356 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %355, i32 0, i32 4
  %357 = load %struct.TYPE_15__*, %struct.TYPE_15__** %356, align 8
  %358 = call i32 @print_queue(%struct.TYPE_15__* %357)
  store i32 1, i32* %5, align 4
  br label %414

359:                                              ; preds = %338
  %360 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %361 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %360, i32 0, i32 5
  %362 = load %struct.TYPE_16__*, %struct.TYPE_16__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %362, i32 0, i32 0
  %364 = load i32 (%struct.TYPE_16__*, i32, i32)*, i32 (%struct.TYPE_16__*, i32, i32)** %363, align 8
  %365 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %366 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %365, i32 0, i32 5
  %367 = load %struct.TYPE_16__*, %struct.TYPE_16__** %366, align 8
  %368 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %369 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %368, i32 0, i32 4
  %370 = load %struct.TYPE_15__*, %struct.TYPE_15__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %374 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %373, i32 0, i32 4
  %375 = load %struct.TYPE_15__*, %struct.TYPE_15__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = call i32 %364(%struct.TYPE_16__* %367, i32 %372, i32 %377)
  br label %379

379:                                              ; preds = %359, %261
  %380 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %381 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %380, i32 0, i32 4
  %382 = load %struct.TYPE_15__*, %struct.TYPE_15__** %381, align 8
  %383 = call i32 @uninit_queue(%struct.TYPE_15__* %382)
  br label %384

384:                                              ; preds = %379, %223
  %385 = load %struct.kfd_dev*, %struct.kfd_dev** %7, align 8
  %386 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %387 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %386, i32 0, i32 3
  %388 = load %struct.TYPE_17__*, %struct.TYPE_17__** %387, align 8
  %389 = call i32 @kfd_gtt_sa_free(%struct.kfd_dev* %385, %struct.TYPE_17__* %388)
  br label %390

390:                                              ; preds = %384, %160
  %391 = load %struct.kfd_dev*, %struct.kfd_dev** %7, align 8
  %392 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %393 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %392, i32 0, i32 2
  %394 = load %struct.TYPE_17__*, %struct.TYPE_17__** %393, align 8
  %395 = call i32 @kfd_gtt_sa_free(%struct.kfd_dev* %391, %struct.TYPE_17__* %394)
  br label %396

396:                                              ; preds = %390, %133
  %397 = load %struct.kfd_dev*, %struct.kfd_dev** %7, align 8
  %398 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %399 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %398, i32 0, i32 1
  %400 = load %struct.TYPE_17__*, %struct.TYPE_17__** %399, align 8
  %401 = call i32 @kfd_gtt_sa_free(%struct.kfd_dev* %397, %struct.TYPE_17__* %400)
  br label %402

402:                                              ; preds = %396, %125
  %403 = load %struct.kfd_dev*, %struct.kfd_dev** %7, align 8
  %404 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %405 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %404, i32 0, i32 0
  %406 = load %struct.TYPE_17__*, %struct.TYPE_17__** %405, align 8
  %407 = call i32 @kfd_gtt_sa_free(%struct.kfd_dev* %403, %struct.TYPE_17__* %406)
  br label %408

408:                                              ; preds = %402, %95
  %409 = load %struct.kfd_dev*, %struct.kfd_dev** %7, align 8
  %410 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %10, i32 0, i32 5
  %411 = load i32, i32* %410, align 4
  %412 = call i32 @kfd_release_kernel_doorbell(%struct.kfd_dev* %409, i32 %411)
  br label %413

413:                                              ; preds = %408, %85
  store i32 0, i32* %5, align 4
  br label %414

414:                                              ; preds = %413, %354, %76, %68, %23
  %415 = load i32, i32* %5, align 4
  ret i32 %415
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @memset(%union.PM4_MES_TYPE_3_HEADER*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @kfd_get_kernel_doorbell(%struct.kfd_dev*, i32*) #1

declare dso_local i32 @kfd_gtt_sa_allocate(%struct.kfd_dev*, i32, %struct.TYPE_17__**) #1

declare dso_local i64 @init_queue(%struct.TYPE_15__**, %union.PM4_MES_TYPE_3_HEADER*) #1

declare dso_local i32 @kfd_get_process(i32) #1

declare dso_local i32 @print_queue(%struct.TYPE_15__*) #1

declare dso_local i32 @uninit_queue(%struct.TYPE_15__*) #1

declare dso_local i32 @kfd_gtt_sa_free(%struct.kfd_dev*, %struct.TYPE_17__*) #1

declare dso_local i32 @kfd_release_kernel_doorbell(%struct.kfd_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
