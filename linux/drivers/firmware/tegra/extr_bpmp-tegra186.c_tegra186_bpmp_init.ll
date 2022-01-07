; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp-tegra186.c_tegra186_bpmp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp-tegra186.c_tegra186_bpmp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp = type { %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_25__, %struct.TYPE_18__*, %struct.TYPE_23__*, %struct.tegra186_bpmp* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.tegra186_bpmp = type { %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_24__, %struct.tegra_bpmp* }
%struct.TYPE_27__ = type { i8*, i8*, i32 }
%struct.TYPE_26__ = type { i8*, i8*, i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_18__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"shmem\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"TX shmem pool not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to allocate from TX pool\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"RX shmem pool not found\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to allocate from RX pool\0A\00", align 1
@mbox_handle_rx = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to get HSP mailbox: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_bpmp*)* @tegra186_bpmp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra186_bpmp_init(%struct.tegra_bpmp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_bpmp*, align 8
  %4 = alloca %struct.tegra186_bpmp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %3, align 8
  %8 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %8, i32 0, i32 4
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.tegra186_bpmp* @devm_kzalloc(%struct.TYPE_18__* %10, i32 88, i32 %11)
  store %struct.tegra186_bpmp* %12, %struct.tegra186_bpmp** %4, align 8
  %13 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %4, align 8
  %14 = icmp ne %struct.tegra186_bpmp* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %318

18:                                               ; preds = %1
  %19 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %4, align 8
  %20 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %21 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %20, i32 0, i32 6
  store %struct.tegra186_bpmp* %19, %struct.tegra186_bpmp** %21, align 8
  %22 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %23 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %4, align 8
  %24 = getelementptr inbounds %struct.tegra186_bpmp, %struct.tegra186_bpmp* %23, i32 0, i32 3
  store %struct.tegra_bpmp* %22, %struct.tegra_bpmp** %24, align 8
  %25 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %26 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %25, i32 0, i32 4
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @of_gen_pool_get(i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  %31 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %4, align 8
  %32 = getelementptr inbounds %struct.tegra186_bpmp, %struct.tegra186_bpmp* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 1
  store i8* %30, i8** %33, align 8
  %34 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %4, align 8
  %35 = getelementptr inbounds %struct.tegra186_bpmp, %struct.tegra186_bpmp* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %18
  %40 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %41 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %40, i32 0, i32 4
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %318

46:                                               ; preds = %18
  %47 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %4, align 8
  %48 = getelementptr inbounds %struct.tegra186_bpmp, %struct.tegra186_bpmp* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %4, align 8
  %52 = getelementptr inbounds %struct.tegra186_bpmp, %struct.tegra186_bpmp* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 2
  %54 = call i8* @gen_pool_dma_alloc(i8* %50, i32 4096, i32* %53)
  %55 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %4, align 8
  %56 = getelementptr inbounds %struct.tegra186_bpmp, %struct.tegra186_bpmp* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 0
  store i8* %54, i8** %57, align 8
  %58 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %4, align 8
  %59 = getelementptr inbounds %struct.tegra186_bpmp, %struct.tegra186_bpmp* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %70, label %63

63:                                               ; preds = %46
  %64 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %65 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %64, i32 0, i32 4
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %65, align 8
  %67 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %318

70:                                               ; preds = %46
  %71 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %72 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %71, i32 0, i32 4
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @of_gen_pool_get(i32 %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 1)
  %77 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %4, align 8
  %78 = getelementptr inbounds %struct.tegra186_bpmp, %struct.tegra186_bpmp* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 1
  store i8* %76, i8** %79, align 8
  %80 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %4, align 8
  %81 = getelementptr inbounds %struct.tegra186_bpmp, %struct.tegra186_bpmp* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %70
  %86 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %87 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %86, i32 0, i32 4
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  br label %306

92:                                               ; preds = %70
  %93 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %4, align 8
  %94 = getelementptr inbounds %struct.tegra186_bpmp, %struct.tegra186_bpmp* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %4, align 8
  %98 = getelementptr inbounds %struct.tegra186_bpmp, %struct.tegra186_bpmp* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i32 0, i32 2
  %100 = call i8* @gen_pool_dma_alloc(i8* %96, i32 4096, i32* %99)
  %101 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %4, align 8
  %102 = getelementptr inbounds %struct.tegra186_bpmp, %struct.tegra186_bpmp* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 0
  store i8* %100, i8** %103, align 8
  %104 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %4, align 8
  %105 = getelementptr inbounds %struct.tegra186_bpmp, %struct.tegra186_bpmp* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %116, label %109

109:                                              ; preds = %92
  %110 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %111 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %110, i32 0, i32 4
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %111, align 8
  %113 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %6, align 4
  br label %306

116:                                              ; preds = %92
  %117 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %118 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %117, i32 0, i32 0
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %121 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %122 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %121, i32 0, i32 5
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @tegra186_bpmp_channel_init(%struct.TYPE_16__* %119, %struct.tegra_bpmp* %120, i32 %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %116
  br label %295

132:                                              ; preds = %116
  %133 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %134 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %133, i32 0, i32 1
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %134, align 8
  %136 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %137 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %138 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %137, i32 0, i32 5
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @tegra186_bpmp_channel_init(%struct.TYPE_16__* %135, %struct.tegra_bpmp* %136, i32 %143)
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %132
  br label %290

148:                                              ; preds = %132
  store i32 0, i32* %5, align 4
  br label %149

149:                                              ; preds = %179, %148
  %150 = load i32, i32* %5, align 4
  %151 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %152 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp ult i32 %150, %154
  br i1 %155, label %156, label %182

156:                                              ; preds = %149
  %157 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %158 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %157, i32 0, i32 5
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %5, align 4
  %165 = add i32 %163, %164
  store i32 %165, i32* %7, align 4
  %166 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %167 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %166, i32 0, i32 2
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i64 %170
  %172 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @tegra186_bpmp_channel_init(%struct.TYPE_16__* %171, %struct.tegra_bpmp* %172, i32 %173)
  store i32 %174, i32* %6, align 4
  %175 = load i32, i32* %6, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %156
  br label %255

178:                                              ; preds = %156
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %5, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %5, align 4
  br label %149

182:                                              ; preds = %149
  %183 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %184 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %183, i32 0, i32 4
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %184, align 8
  %186 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %4, align 8
  %187 = getelementptr inbounds %struct.tegra186_bpmp, %struct.tegra186_bpmp* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 3
  store %struct.TYPE_18__* %185, %struct.TYPE_18__** %189, align 8
  %190 = load i32, i32* @mbox_handle_rx, align 4
  %191 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %4, align 8
  %192 = getelementptr inbounds %struct.tegra186_bpmp, %struct.tegra186_bpmp* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 2
  store i32 %190, i32* %194, align 8
  %195 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %4, align 8
  %196 = getelementptr inbounds %struct.tegra186_bpmp, %struct.tegra186_bpmp* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 0
  store i32 0, i32* %198, align 8
  %199 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %4, align 8
  %200 = getelementptr inbounds %struct.tegra186_bpmp, %struct.tegra186_bpmp* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 1
  store i32 0, i32* %202, align 4
  %203 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %4, align 8
  %204 = getelementptr inbounds %struct.tegra186_bpmp, %struct.tegra186_bpmp* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 1
  %206 = call i32 @mbox_request_channel(%struct.TYPE_17__* %205, i32 0)
  %207 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %4, align 8
  %208 = getelementptr inbounds %struct.tegra186_bpmp, %struct.tegra186_bpmp* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 0
  store i32 %206, i32* %209, align 8
  %210 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %4, align 8
  %211 = getelementptr inbounds %struct.tegra186_bpmp, %struct.tegra186_bpmp* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i64 @IS_ERR(i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %227

216:                                              ; preds = %182
  %217 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %4, align 8
  %218 = getelementptr inbounds %struct.tegra186_bpmp, %struct.tegra186_bpmp* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @PTR_ERR(i32 %220)
  store i32 %221, i32* %6, align 4
  %222 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %223 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %222, i32 0, i32 4
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %223, align 8
  %225 = load i32, i32* %6, align 4
  %226 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %224, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %225)
  br label %255

227:                                              ; preds = %182
  %228 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %229 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %228, i32 0, i32 0
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %229, align 8
  %231 = call i32 @tegra186_bpmp_channel_reset(%struct.TYPE_16__* %230)
  %232 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %233 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %232, i32 0, i32 1
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %233, align 8
  %235 = call i32 @tegra186_bpmp_channel_reset(%struct.TYPE_16__* %234)
  store i32 0, i32* %5, align 4
  br label %236

236:                                              ; preds = %251, %227
  %237 = load i32, i32* %5, align 4
  %238 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %239 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %238, i32 0, i32 3
  %240 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp ult i32 %237, %241
  br i1 %242, label %243, label %254

243:                                              ; preds = %236
  %244 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %245 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %244, i32 0, i32 2
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %245, align 8
  %247 = load i32, i32* %5, align 4
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i64 %248
  %250 = call i32 @tegra186_bpmp_channel_reset(%struct.TYPE_16__* %249)
  br label %251

251:                                              ; preds = %243
  %252 = load i32, i32* %5, align 4
  %253 = add i32 %252, 1
  store i32 %253, i32* %5, align 4
  br label %236

254:                                              ; preds = %236
  store i32 0, i32* %2, align 4
  br label %318

255:                                              ; preds = %216, %177
  store i32 0, i32* %5, align 4
  br label %256

256:                                              ; preds = %282, %255
  %257 = load i32, i32* %5, align 4
  %258 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %259 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %258, i32 0, i32 3
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = icmp ult i32 %257, %261
  br i1 %262, label %263, label %285

263:                                              ; preds = %256
  %264 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %265 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %264, i32 0, i32 2
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %265, align 8
  %267 = load i32, i32* %5, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %274, label %273

273:                                              ; preds = %263
  br label %282

274:                                              ; preds = %263
  %275 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %276 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %275, i32 0, i32 2
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** %276, align 8
  %278 = load i32, i32* %5, align 4
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i64 %279
  %281 = call i32 @tegra186_bpmp_channel_cleanup(%struct.TYPE_16__* %280)
  br label %282

282:                                              ; preds = %274, %273
  %283 = load i32, i32* %5, align 4
  %284 = add i32 %283, 1
  store i32 %284, i32* %5, align 4
  br label %256

285:                                              ; preds = %256
  %286 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %287 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %286, i32 0, i32 1
  %288 = load %struct.TYPE_16__*, %struct.TYPE_16__** %287, align 8
  %289 = call i32 @tegra186_bpmp_channel_cleanup(%struct.TYPE_16__* %288)
  br label %290

290:                                              ; preds = %285, %147
  %291 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %292 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %291, i32 0, i32 0
  %293 = load %struct.TYPE_16__*, %struct.TYPE_16__** %292, align 8
  %294 = call i32 @tegra186_bpmp_channel_cleanup(%struct.TYPE_16__* %293)
  br label %295

295:                                              ; preds = %290, %131
  %296 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %4, align 8
  %297 = getelementptr inbounds %struct.tegra186_bpmp, %struct.tegra186_bpmp* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %297, i32 0, i32 1
  %299 = load i8*, i8** %298, align 8
  %300 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %4, align 8
  %301 = getelementptr inbounds %struct.tegra186_bpmp, %struct.tegra186_bpmp* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %301, i32 0, i32 0
  %303 = load i8*, i8** %302, align 8
  %304 = ptrtoint i8* %303 to i64
  %305 = call i32 @gen_pool_free(i8* %299, i64 %304, i32 4096)
  br label %306

306:                                              ; preds = %295, %109, %85
  %307 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %4, align 8
  %308 = getelementptr inbounds %struct.tegra186_bpmp, %struct.tegra186_bpmp* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %308, i32 0, i32 1
  %310 = load i8*, i8** %309, align 8
  %311 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %4, align 8
  %312 = getelementptr inbounds %struct.tegra186_bpmp, %struct.tegra186_bpmp* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %312, i32 0, i32 0
  %314 = load i8*, i8** %313, align 8
  %315 = ptrtoint i8* %314 to i64
  %316 = call i32 @gen_pool_free(i8* %310, i64 %315, i32 4096)
  %317 = load i32, i32* %6, align 4
  store i32 %317, i32* %2, align 4
  br label %318

318:                                              ; preds = %306, %254, %63, %39, %15
  %319 = load i32, i32* %2, align 4
  ret i32 %319
}

declare dso_local %struct.tegra186_bpmp* @devm_kzalloc(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i8* @of_gen_pool_get(i32, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_18__*, i8*, ...) #1

declare dso_local i8* @gen_pool_dma_alloc(i8*, i32, i32*) #1

declare dso_local i32 @tegra186_bpmp_channel_init(%struct.TYPE_16__*, %struct.tegra_bpmp*, i32) #1

declare dso_local i32 @mbox_request_channel(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @tegra186_bpmp_channel_reset(%struct.TYPE_16__*) #1

declare dso_local i32 @tegra186_bpmp_channel_cleanup(%struct.TYPE_16__*) #1

declare dso_local i32 @gen_pool_free(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
