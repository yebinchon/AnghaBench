; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c___qedr_alloc_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c___qedr_alloc_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_mr = type { %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_10__, i32, %struct.qedr_dev* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.qedr_dev = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (i32, i32*)*, i32 (i32, %struct.TYPE_9__*)*, i32 (i32, i32)* }
%struct.ib_pd = type { i32 }
%struct.qedr_pd = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@QEDR_MSG_MR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"qedr_alloc_frmr pd = %d max_page_list_len= %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@QEDR_MR_FRMR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"roce alloc tid returned an error %d\0A\00", align 1
@QED_RDMA_TID_FMR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"roce register tid returned an error %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"alloc frmr: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qedr_mr* (%struct.ib_pd*, i32)* @__qedr_alloc_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qedr_mr* @__qedr_alloc_mr(%struct.ib_pd* %0, i32 %1) #0 {
  %3 = alloca %struct.qedr_mr*, align 8
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qedr_pd*, align 8
  %7 = alloca %struct.qedr_dev*, align 8
  %8 = alloca %struct.qedr_mr*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %11 = call %struct.qedr_pd* @get_qedr_pd(%struct.ib_pd* %10)
  store %struct.qedr_pd* %11, %struct.qedr_pd** %6, align 8
  %12 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %13 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.qedr_dev* @get_qedr_dev(i32 %14)
  store %struct.qedr_dev* %15, %struct.qedr_dev** %7, align 8
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %9, align 4
  %18 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %19 = load i32, i32* @QEDR_MSG_MR, align 4
  %20 = load %struct.qedr_pd*, %struct.qedr_pd** %6, align 8
  %21 = getelementptr inbounds %struct.qedr_pd, %struct.qedr_pd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 (%struct.qedr_dev*, i32, i8*, i32, ...) @DP_DEBUG(%struct.qedr_dev* %18, i32 %19, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.qedr_mr* @kzalloc(i32 144, i32 %25)
  store %struct.qedr_mr* %26, %struct.qedr_mr** %8, align 8
  %27 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %28 = icmp ne %struct.qedr_mr* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* %9, align 4
  %31 = call %struct.qedr_mr* @ERR_PTR(i32 %30)
  store %struct.qedr_mr* %31, %struct.qedr_mr** %3, align 8
  br label %201

32:                                               ; preds = %2
  %33 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %34 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %35 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %34, i32 0, i32 4
  store %struct.qedr_dev* %33, %struct.qedr_dev** %35, align 8
  %36 = load i32, i32* @QEDR_MR_FRMR, align 4
  %37 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %38 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %40 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %41 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %40, i32 0, i32 2
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @init_mr_info(%struct.qedr_dev* %39, %struct.TYPE_10__* %41, i32 %42, i32 1)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  br label %196

47:                                               ; preds = %32
  %48 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %49 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32 (i32, i32*)*, i32 (i32, i32*)** %51, align 8
  %53 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %54 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %57 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = call i32 %52(i32 %55, i32* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %47
  %63 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @DP_ERR(%struct.qedr_dev* %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %196

66:                                               ; preds = %47
  %67 = load i32, i32* @QED_RDMA_TID_FMR, align 4
  %68 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %69 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 18
  store i32 %67, i32* %70, align 4
  %71 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %72 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  store i32 0, i32* %73, align 4
  %74 = load %struct.qedr_pd*, %struct.qedr_pd** %6, align 8
  %75 = getelementptr inbounds %struct.qedr_pd, %struct.qedr_pd* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %78 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 17
  store i32 %76, i32* %79, align 8
  %80 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %81 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  store i32 1, i32* %82, align 8
  %83 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %84 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 16
  store i64 0, i64* %85, align 8
  %86 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %87 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 15
  store i64 0, i64* %88, align 8
  %89 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %90 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 14
  store i64 0, i64* %91, align 8
  %92 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %93 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 13
  store i64 0, i64* %94, align 8
  %95 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %96 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 3
  store i32 0, i32* %97, align 4
  %98 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %99 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 12
  store i64 0, i64* %100, align 8
  %101 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %102 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %107 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 11
  store i32 %105, i32* %108, align 4
  %109 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %110 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @ilog2(i32 %113)
  %115 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %116 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 10
  store i32 %114, i32* %117, align 8
  %118 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %119 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 9
  store i64 0, i64* %120, align 8
  %121 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %122 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 8
  store i64 0, i64* %123, align 8
  %124 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %125 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 7
  store i64 0, i64* %126, align 8
  %127 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %128 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 4
  store i32 0, i32* %129, align 8
  %130 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %131 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 5
  store i32 1, i32* %132, align 4
  %133 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %134 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 6
  store i32 0, i32* %135, align 8
  %136 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %137 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %136, i32 0, i32 1
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load i32 (i32, %struct.TYPE_9__*)*, i32 (i32, %struct.TYPE_9__*)** %139, align 8
  %141 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %142 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %145 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %144, i32 0, i32 0
  %146 = call i32 %140(i32 %143, %struct.TYPE_9__* %145)
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %66
  %150 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @DP_ERR(%struct.qedr_dev* %150, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %151)
  br label %182

153:                                              ; preds = %66
  %154 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %155 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = shl i32 %157, 8
  %159 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %160 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %158, %162
  %164 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %165 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  store i32 %163, i32* %166, align 8
  %167 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %168 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %172 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  store i32 %170, i32* %173, align 4
  %174 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %175 = load i32, i32* @QEDR_MSG_MR, align 4
  %176 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %177 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 (%struct.qedr_dev*, i32, i8*, i32, ...) @DP_DEBUG(%struct.qedr_dev* %174, i32 %175, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %179)
  %181 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  store %struct.qedr_mr* %181, %struct.qedr_mr** %3, align 8
  br label %201

182:                                              ; preds = %149
  %183 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %184 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %183, i32 0, i32 1
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 2
  %187 = load i32 (i32, i32)*, i32 (i32, i32)** %186, align 8
  %188 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %189 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %192 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 %187(i32 %190, i32 %194)
  br label %196

196:                                              ; preds = %182, %62, %46
  %197 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %198 = call i32 @kfree(%struct.qedr_mr* %197)
  %199 = load i32, i32* %9, align 4
  %200 = call %struct.qedr_mr* @ERR_PTR(i32 %199)
  store %struct.qedr_mr* %200, %struct.qedr_mr** %3, align 8
  br label %201

201:                                              ; preds = %196, %153, %29
  %202 = load %struct.qedr_mr*, %struct.qedr_mr** %3, align 8
  ret %struct.qedr_mr* %202
}

declare dso_local %struct.qedr_pd* @get_qedr_pd(%struct.ib_pd*) #1

declare dso_local %struct.qedr_dev* @get_qedr_dev(i32) #1

declare dso_local i32 @DP_DEBUG(%struct.qedr_dev*, i32, i8*, i32, ...) #1

declare dso_local %struct.qedr_mr* @kzalloc(i32, i32) #1

declare dso_local %struct.qedr_mr* @ERR_PTR(i32) #1

declare dso_local i32 @init_mr_info(%struct.qedr_dev*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @kfree(%struct.qedr_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
