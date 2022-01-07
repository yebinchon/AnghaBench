; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_main.c_hns_roce_init_hem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_main.c_hns_roce_init_hem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_8__, %struct.TYPE_9__, %struct.TYPE_10__, %struct.TYPE_6__, %struct.TYPE_7__, i32, i32, %struct.device* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.device = type { i32 }

@HEM_TYPE_MTT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed to init MTT context memory, aborting.\0A\00", align 1
@HEM_TYPE_CQE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Failed to init MTT CQE context memory, aborting.\0A\00", align 1
@HEM_TYPE_MTPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Failed to init MTPT context memory, aborting.\0A\00", align 1
@HEM_TYPE_QPC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Failed to init QP context memory, aborting.\0A\00", align 1
@HEM_TYPE_IRRL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Failed to init irrl_table memory, aborting.\0A\00", align 1
@HEM_TYPE_TRRL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"Failed to init trrl_table memory, aborting.\0A\00", align 1
@HEM_TYPE_CQC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"Failed to init CQ context memory, aborting.\0A\00", align 1
@HEM_TYPE_SRQC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"Failed to init SRQ context memory, aborting.\0A\00", align 1
@HEM_TYPE_SRQWQE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [45 x i8] c"Failed to init MTT srqwqe memory, aborting.\0A\00", align 1
@HEM_TYPE_IDX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"Failed to init MTT idx memory, aborting.\0A\00", align 1
@HEM_TYPE_SCCC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [46 x i8] c"Failed to init SCC context memory, aborting.\0A\00", align 1
@HEM_TYPE_QPC_TIMER = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [44 x i8] c"Failed to init QPC timer memory, aborting.\0A\00", align 1
@HEM_TYPE_CQC_TIMER = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [44 x i8] c"Failed to init CQC timer memory, aborting.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*)* @hns_roce_init_hem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_init_hem(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  %6 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %6, i32 0, i32 7
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %5, align 8
  %9 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %10 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %11 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* @HEM_TYPE_MTT, align 4
  %14 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %19 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 22
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @hns_roce_init_hem_table(%struct.hns_roce_dev* %9, i32* %12, i32 %13, i32 %17, i64 %21, i32 1)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %453

29:                                               ; preds = %1
  %30 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %31 = load i32, i32* @HEM_TYPE_CQE, align 4
  %32 = call i64 @hns_roce_check_whether_mhop(%struct.hns_roce_dev* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %29
  %35 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %36 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %37 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* @HEM_TYPE_CQE, align 4
  %40 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %41 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %45 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 21
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @hns_roce_init_hem_table(%struct.hns_roce_dev* %35, i32* %38, i32 %39, i32 %43, i64 %47, i32 1)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %34
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %446

54:                                               ; preds = %34
  br label %55

55:                                               ; preds = %54, %29
  %56 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %57 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %58 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i32, i32* @HEM_TYPE_MTPT, align 4
  %61 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %62 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %66 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 20
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @hns_roce_init_hem_table(%struct.hns_roce_dev* %56, i32* %59, i32 %60, i32 %64, i64 %68, i32 1)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %55
  %73 = load %struct.device*, %struct.device** %5, align 8
  %74 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %434

75:                                               ; preds = %55
  %76 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %77 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %78 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* @HEM_TYPE_QPC, align 4
  %81 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %82 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %86 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 17
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @hns_roce_init_hem_table(%struct.hns_roce_dev* %76, i32* %79, i32 %80, i32 %84, i64 %88, i32 1)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %75
  %93 = load %struct.device*, %struct.device** %5, align 8
  %94 = call i32 @dev_err(%struct.device* %93, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %428

95:                                               ; preds = %75
  %96 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %97 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %98 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* @HEM_TYPE_IRRL, align 4
  %101 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %102 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %106 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = mul nsw i32 %104, %108
  %110 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %111 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 17
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @hns_roce_init_hem_table(%struct.hns_roce_dev* %96, i32* %99, i32 %100, i32 %109, i64 %113, i32 1)
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %95
  %118 = load %struct.device*, %struct.device** %5, align 8
  %119 = call i32 @dev_err(%struct.device* %118, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %422

120:                                              ; preds = %95
  %121 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %122 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %152

126:                                              ; preds = %120
  %127 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %128 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %129 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 2
  %131 = load i32, i32* @HEM_TYPE_TRRL, align 4
  %132 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %133 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %137 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 8
  %140 = mul nsw i32 %135, %139
  %141 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %142 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 17
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @hns_roce_init_hem_table(%struct.hns_roce_dev* %127, i32* %130, i32 %131, i32 %140, i64 %144, i32 1)
  store i32 %145, i32* %4, align 4
  %146 = load i32, i32* %4, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %126
  %149 = load %struct.device*, %struct.device** %5, align 8
  %150 = call i32 @dev_err(%struct.device* %149, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  br label %416

151:                                              ; preds = %126
  br label %152

152:                                              ; preds = %151, %120
  %153 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %154 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %155 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i32, i32* @HEM_TYPE_CQC, align 4
  %158 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %159 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %163 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 19
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @hns_roce_init_hem_table(%struct.hns_roce_dev* %153, i32* %156, i32 %157, i32 %161, i64 %165, i32 1)
  store i32 %166, i32* %4, align 4
  %167 = load i32, i32* %4, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %152
  %170 = load %struct.device*, %struct.device** %5, align 8
  %171 = call i32 @dev_err(%struct.device* %170, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %403

172:                                              ; preds = %152
  %173 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %174 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 8
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %199

178:                                              ; preds = %172
  %179 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %180 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %181 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i32, i32* @HEM_TYPE_SRQC, align 4
  %184 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %185 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 8
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %189 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 18
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @hns_roce_init_hem_table(%struct.hns_roce_dev* %179, i32* %182, i32 %183, i32 %187, i64 %191, i32 1)
  store i32 %192, i32* %4, align 4
  %193 = load i32, i32* %4, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %178
  %196 = load %struct.device*, %struct.device** %5, align 8
  %197 = call i32 @dev_err(%struct.device* %196, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  br label %397

198:                                              ; preds = %178
  br label %199

199:                                              ; preds = %198, %172
  %200 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %201 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 13
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %226

205:                                              ; preds = %199
  %206 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %207 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %208 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 3
  %210 = load i32, i32* @HEM_TYPE_SRQWQE, align 4
  %211 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %212 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %216 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 13
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @hns_roce_init_hem_table(%struct.hns_roce_dev* %206, i32* %209, i32 %210, i32 %214, i64 %218, i32 1)
  store i32 %219, i32* %4, align 4
  %220 = load i32, i32* %4, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %205
  %223 = load %struct.device*, %struct.device** %5, align 8
  %224 = call i32 @dev_err(%struct.device* %223, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  br label %384

225:                                              ; preds = %205
  br label %226

226:                                              ; preds = %225, %199
  %227 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %228 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 14
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %253

232:                                              ; preds = %226
  %233 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %234 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %235 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 4
  %237 = load i32, i32* @HEM_TYPE_IDX, align 4
  %238 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %239 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 9
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %243 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 14
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @hns_roce_init_hem_table(%struct.hns_roce_dev* %233, i32* %236, i32 %237, i32 %241, i64 %245, i32 1)
  store i32 %246, i32* %4, align 4
  %247 = load i32, i32* %4, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %232
  %250 = load %struct.device*, %struct.device** %5, align 8
  %251 = call i32 @dev_err(%struct.device* %250, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  br label %371

252:                                              ; preds = %232
  br label %253

253:                                              ; preds = %252, %226
  %254 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %255 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 10
  %257 = load i32, i32* %256, align 8
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %280

259:                                              ; preds = %253
  %260 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %261 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %262 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 3
  %264 = load i32, i32* @HEM_TYPE_SCCC, align 4
  %265 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %266 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 10
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %270 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 17
  %272 = load i64, i64* %271, align 8
  %273 = call i32 @hns_roce_init_hem_table(%struct.hns_roce_dev* %260, i32* %263, i32 %264, i32 %268, i64 %272, i32 1)
  store i32 %273, i32* %4, align 4
  %274 = load i32, i32* %4, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %259
  %277 = load %struct.device*, %struct.device** %5, align 8
  %278 = call i32 @dev_err(%struct.device* %277, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0))
  br label %358

279:                                              ; preds = %259
  br label %280

280:                                              ; preds = %279, %253
  %281 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %282 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 11
  %284 = load i32, i32* %283, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %306

286:                                              ; preds = %280
  %287 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %288 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %289 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %288, i32 0, i32 5
  %290 = load i32, i32* @HEM_TYPE_QPC_TIMER, align 4
  %291 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %292 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 11
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %296 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 16
  %298 = load i64, i64* %297, align 8
  %299 = call i32 @hns_roce_init_hem_table(%struct.hns_roce_dev* %287, i32* %289, i32 %290, i32 %294, i64 %298, i32 1)
  store i32 %299, i32* %4, align 4
  %300 = load i32, i32* %4, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %286
  %303 = load %struct.device*, %struct.device** %5, align 8
  %304 = call i32 @dev_err(%struct.device* %303, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  br label %345

305:                                              ; preds = %286
  br label %306

306:                                              ; preds = %305, %280
  %307 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %308 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 12
  %310 = load i32, i32* %309, align 8
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %332

312:                                              ; preds = %306
  %313 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %314 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %315 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %314, i32 0, i32 6
  %316 = load i32, i32* @HEM_TYPE_CQC_TIMER, align 4
  %317 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %318 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %317, i32 0, i32 2
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 12
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %322 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %321, i32 0, i32 2
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 15
  %324 = load i64, i64* %323, align 8
  %325 = call i32 @hns_roce_init_hem_table(%struct.hns_roce_dev* %313, i32* %315, i32 %316, i32 %320, i64 %324, i32 1)
  store i32 %325, i32* %4, align 4
  %326 = load i32, i32* %4, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %331

328:                                              ; preds = %312
  %329 = load %struct.device*, %struct.device** %5, align 8
  %330 = call i32 @dev_err(%struct.device* %329, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0))
  br label %333

331:                                              ; preds = %312
  br label %332

332:                                              ; preds = %331, %306
  store i32 0, i32* %2, align 4
  br label %453

333:                                              ; preds = %328
  %334 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %335 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %334, i32 0, i32 2
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %335, i32 0, i32 11
  %337 = load i32, i32* %336, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %344

339:                                              ; preds = %333
  %340 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %341 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %342 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %341, i32 0, i32 5
  %343 = call i32 @hns_roce_cleanup_hem_table(%struct.hns_roce_dev* %340, i32* %342)
  br label %344

344:                                              ; preds = %339, %333
  br label %345

345:                                              ; preds = %344, %302
  %346 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %347 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %346, i32 0, i32 2
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 10
  %349 = load i32, i32* %348, align 8
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %357

351:                                              ; preds = %345
  %352 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %353 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %354 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 3
  %356 = call i32 @hns_roce_cleanup_hem_table(%struct.hns_roce_dev* %352, i32* %355)
  br label %357

357:                                              ; preds = %351, %345
  br label %358

358:                                              ; preds = %357, %276
  %359 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %360 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %359, i32 0, i32 2
  %361 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %360, i32 0, i32 14
  %362 = load i64, i64* %361, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %370

364:                                              ; preds = %358
  %365 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %366 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %367 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %367, i32 0, i32 4
  %369 = call i32 @hns_roce_cleanup_hem_table(%struct.hns_roce_dev* %365, i32* %368)
  br label %370

370:                                              ; preds = %364, %358
  br label %371

371:                                              ; preds = %370, %249
  %372 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %373 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %372, i32 0, i32 2
  %374 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %373, i32 0, i32 13
  %375 = load i64, i64* %374, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %383

377:                                              ; preds = %371
  %378 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %379 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %380 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %380, i32 0, i32 3
  %382 = call i32 @hns_roce_cleanup_hem_table(%struct.hns_roce_dev* %378, i32* %381)
  br label %383

383:                                              ; preds = %377, %371
  br label %384

384:                                              ; preds = %383, %222
  %385 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %386 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %385, i32 0, i32 2
  %387 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %386, i32 0, i32 8
  %388 = load i32, i32* %387, align 8
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %396

390:                                              ; preds = %384
  %391 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %392 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %393 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %392, i32 0, i32 4
  %394 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %393, i32 0, i32 0
  %395 = call i32 @hns_roce_cleanup_hem_table(%struct.hns_roce_dev* %391, i32* %394)
  br label %396

396:                                              ; preds = %390, %384
  br label %397

397:                                              ; preds = %396, %195
  %398 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %399 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %400 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %399, i32 0, i32 3
  %401 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %400, i32 0, i32 0
  %402 = call i32 @hns_roce_cleanup_hem_table(%struct.hns_roce_dev* %398, i32* %401)
  br label %403

403:                                              ; preds = %397, %169
  %404 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %405 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %404, i32 0, i32 2
  %406 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %405, i32 0, i32 5
  %407 = load i32, i32* %406, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %415

409:                                              ; preds = %403
  %410 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %411 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %412 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %411, i32 0, i32 1
  %413 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %412, i32 0, i32 2
  %414 = call i32 @hns_roce_cleanup_hem_table(%struct.hns_roce_dev* %410, i32* %413)
  br label %415

415:                                              ; preds = %409, %403
  br label %416

416:                                              ; preds = %415, %148
  %417 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %418 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %419 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %418, i32 0, i32 1
  %420 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %419, i32 0, i32 1
  %421 = call i32 @hns_roce_cleanup_hem_table(%struct.hns_roce_dev* %417, i32* %420)
  br label %422

422:                                              ; preds = %416, %117
  %423 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %424 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %425 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %424, i32 0, i32 1
  %426 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %425, i32 0, i32 0
  %427 = call i32 @hns_roce_cleanup_hem_table(%struct.hns_roce_dev* %423, i32* %426)
  br label %428

428:                                              ; preds = %422, %92
  %429 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %430 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %431 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %431, i32 0, i32 2
  %433 = call i32 @hns_roce_cleanup_hem_table(%struct.hns_roce_dev* %429, i32* %432)
  br label %434

434:                                              ; preds = %428, %72
  %435 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %436 = load i32, i32* @HEM_TYPE_CQE, align 4
  %437 = call i64 @hns_roce_check_whether_mhop(%struct.hns_roce_dev* %435, i32 %436)
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %445

439:                                              ; preds = %434
  %440 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %441 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %442 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %441, i32 0, i32 0
  %443 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %442, i32 0, i32 1
  %444 = call i32 @hns_roce_cleanup_hem_table(%struct.hns_roce_dev* %440, i32* %443)
  br label %445

445:                                              ; preds = %439, %434
  br label %446

446:                                              ; preds = %445, %51
  %447 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %448 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %449 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %448, i32 0, i32 0
  %450 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %449, i32 0, i32 0
  %451 = call i32 @hns_roce_cleanup_hem_table(%struct.hns_roce_dev* %447, i32* %450)
  %452 = load i32, i32* %4, align 4
  store i32 %452, i32* %2, align 4
  br label %453

453:                                              ; preds = %446, %332, %25
  %454 = load i32, i32* %2, align 4
  ret i32 %454
}

declare dso_local i32 @hns_roce_init_hem_table(%struct.hns_roce_dev*, i32*, i32, i32, i64, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @hns_roce_check_whether_mhop(%struct.hns_roce_dev*, i32) #1

declare dso_local i32 @hns_roce_cleanup_hem_table(%struct.hns_roce_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
