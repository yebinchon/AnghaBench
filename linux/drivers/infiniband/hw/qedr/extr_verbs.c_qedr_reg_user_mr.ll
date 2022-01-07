; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_reg_user_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_reg_user_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i32 }
%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.qedr_dev = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (i32, i32*)*, i32 (i32, %struct.TYPE_9__*)*, i32 (i32, i32)* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.qedr_mr = type { %struct.TYPE_12__, %struct.TYPE_9__, %struct.ib_mr, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__*, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.qedr_pd = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@QEDR_MSG_MR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"qedr_register user mr pd = %d start = %lld, len = %lld, usr_addr = %lld, acc = %d\0A\00", align 1
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@QEDR_MR_USER = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"roce alloc tid returned an error %d\0A\00", align 1
@QED_RDMA_TID_REGISTERED_MR = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"roce register tid returned an error %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"register user mr lkey: %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @qedr_reg_user_mr(%struct.ib_pd* %0, i8* %1, i8* %2, i8* %3, i32 %4, %struct.ib_udata* %5) #0 {
  %7 = alloca %struct.ib_mr*, align 8
  %8 = alloca %struct.ib_pd*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_udata*, align 8
  %14 = alloca %struct.qedr_dev*, align 8
  %15 = alloca %struct.qedr_mr*, align 8
  %16 = alloca %struct.qedr_pd*, align 8
  %17 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.ib_udata* %5, %struct.ib_udata** %13, align 8
  %18 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %19 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.qedr_dev* @get_qedr_dev(i32 %20)
  store %struct.qedr_dev* %21, %struct.qedr_dev** %14, align 8
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %17, align 4
  %24 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %25 = call %struct.qedr_pd* @get_qedr_pd(%struct.ib_pd* %24)
  store %struct.qedr_pd* %25, %struct.qedr_pd** %16, align 8
  %26 = load %struct.qedr_dev*, %struct.qedr_dev** %14, align 8
  %27 = load i32, i32* @QEDR_MSG_MR, align 4
  %28 = load %struct.qedr_pd*, %struct.qedr_pd** %16, align 8
  %29 = getelementptr inbounds %struct.qedr_pd, %struct.qedr_pd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 (%struct.qedr_dev*, i32, i8*, i32, ...) @DP_DEBUG(%struct.qedr_dev* %26, i32 %27, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %30, i8* %31, i8* %32, i8* %33, i32 %34)
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %6
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.ib_mr* @ERR_PTR(i32 %47)
  store %struct.ib_mr* %48, %struct.ib_mr** %7, align 8
  br label %332

49:                                               ; preds = %40, %6
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.qedr_mr* @kzalloc(i32 128, i32 %50)
  store %struct.qedr_mr* %51, %struct.qedr_mr** %15, align 8
  %52 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %53 = icmp ne %struct.qedr_mr* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %17, align 4
  %56 = call %struct.ib_mr* @ERR_PTR(i32 %55)
  store %struct.ib_mr* %56, %struct.ib_mr** %7, align 8
  br label %332

57:                                               ; preds = %49
  %58 = load i32, i32* @QEDR_MR_USER, align 4
  %59 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %60 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ib_udata*, %struct.ib_udata** %13, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @ib_umem_get(%struct.ib_udata* %61, i8* %62, i8* %63, i32 %64, i32 0)
  %66 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %67 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %69 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @IS_ERR(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %57
  %74 = load i32, i32* @EFAULT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %17, align 4
  br label %327

76:                                               ; preds = %57
  %77 = load %struct.qedr_dev*, %struct.qedr_dev** %14, align 8
  %78 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %79 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %78, i32 0, i32 0
  %80 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %81 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @ib_umem_page_count(i32 %82)
  %84 = call i32 @init_mr_info(%struct.qedr_dev* %77, %struct.TYPE_12__* %79, i32 %83, i32 1)
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %17, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  br label %317

88:                                               ; preds = %76
  %89 = load %struct.qedr_dev*, %struct.qedr_dev** %14, align 8
  %90 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %91 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %94 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %98 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load i32, i32* @PAGE_SHIFT, align 4
  %101 = call i32 @qedr_populate_pbls(%struct.qedr_dev* %89, i32 %92, %struct.TYPE_10__* %96, %struct.TYPE_11__* %99, i32 %100)
  %102 = load %struct.qedr_dev*, %struct.qedr_dev** %14, align 8
  %103 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %102, i32 0, i32 1
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32 (i32, i32*)*, i32 (i32, i32*)** %105, align 8
  %107 = load %struct.qedr_dev*, %struct.qedr_dev** %14, align 8
  %108 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %111 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = call i32 %106(i32 %109, i32* %112)
  store i32 %113, i32* %17, align 4
  %114 = load i32, i32* %17, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %88
  %117 = load %struct.qedr_dev*, %struct.qedr_dev** %14, align 8
  %118 = load i32, i32* %17, align 4
  %119 = call i32 @DP_ERR(%struct.qedr_dev* %117, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  br label %317

120:                                              ; preds = %88
  %121 = load i32, i32* @QED_RDMA_TID_REGISTERED_MR, align 4
  %122 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %123 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 19
  store i32 %121, i32* %124, align 8
  %125 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %126 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  store i32 0, i32* %127, align 4
  %128 = load %struct.qedr_pd*, %struct.qedr_pd** %16, align 8
  %129 = getelementptr inbounds %struct.qedr_pd, %struct.qedr_pd* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %132 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 18
  store i32 %130, i32* %133, align 4
  %134 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %135 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  store i32 1, i32* %136, align 8
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 1, i32 0
  %143 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %144 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 3
  store i32 %142, i32* %145, align 4
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32 1, i32 0
  %152 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %153 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 4
  store i32 %151, i32* %154, align 8
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i32 1, i32 0
  %161 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %162 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 5
  store i32 %160, i32* %163, align 4
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i32 1, i32 0
  %170 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %171 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 6
  store i32 %169, i32* %172, align 8
  %173 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %174 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 7
  store i32 0, i32* %175, align 4
  %176 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %177 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i64 0
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %184 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 17
  store i32 %182, i32* %185, align 8
  %186 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %187 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %192 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 16
  store i32 %190, i32* %193, align 4
  %194 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %195 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @ilog2(i32 %198)
  %200 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %201 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 15
  store i32 %199, i32* %202, align 8
  %203 = load i32, i32* @PAGE_SHIFT, align 4
  %204 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %205 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 14
  store i32 %203, i32* %206, align 4
  %207 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %208 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @ib_umem_offset(i32 %209)
  %211 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %212 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 13
  store i32 %210, i32* %213, align 8
  %214 = load i8*, i8** %10, align 8
  %215 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %216 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 12
  store i8* %214, i8** %217, align 8
  %218 = load i8*, i8** %11, align 8
  %219 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %220 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 11
  store i8* %218, i8** %221, align 8
  %222 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %223 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 8
  store i32 0, i32* %224, align 8
  %225 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %226 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 9
  store i32 0, i32* %227, align 4
  %228 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %229 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 10
  store i32 0, i32* %230, align 8
  %231 = load %struct.qedr_dev*, %struct.qedr_dev** %14, align 8
  %232 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %231, i32 0, i32 1
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 1
  %235 = load i32 (i32, %struct.TYPE_9__*)*, i32 (i32, %struct.TYPE_9__*)** %234, align 8
  %236 = load %struct.qedr_dev*, %struct.qedr_dev** %14, align 8
  %237 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %240 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %239, i32 0, i32 1
  %241 = call i32 %235(i32 %238, %struct.TYPE_9__* %240)
  store i32 %241, i32* %17, align 4
  %242 = load i32, i32* %17, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %120
  %245 = load %struct.qedr_dev*, %struct.qedr_dev** %14, align 8
  %246 = load i32, i32* %17, align 4
  %247 = call i32 @DP_ERR(%struct.qedr_dev* %245, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %246)
  br label %303

248:                                              ; preds = %120
  %249 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %250 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = shl i32 %252, 8
  %254 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %255 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = or i32 %253, %257
  %259 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %260 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %260, i32 0, i32 0
  store i32 %258, i32* %261, align 8
  %262 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %263 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %279, label %267

267:                                              ; preds = %248
  %268 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %269 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 8
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %279, label %273

273:                                              ; preds = %267
  %274 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %275 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 6
  %277 = load i32, i32* %276, align 8
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %293

279:                                              ; preds = %273, %267, %248
  %280 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %281 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = shl i32 %283, 8
  %285 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %286 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = or i32 %284, %288
  %290 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %291 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %291, i32 0, i32 1
  store i32 %289, i32* %292, align 4
  br label %293

293:                                              ; preds = %279, %273
  %294 = load %struct.qedr_dev*, %struct.qedr_dev** %14, align 8
  %295 = load i32, i32* @QEDR_MSG_MR, align 4
  %296 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %297 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %296, i32 0, i32 2
  %298 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = call i32 (%struct.qedr_dev*, i32, i8*, i32, ...) @DP_DEBUG(%struct.qedr_dev* %294, i32 %295, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %299)
  %301 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %302 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %301, i32 0, i32 2
  store %struct.ib_mr* %302, %struct.ib_mr** %7, align 8
  br label %332

303:                                              ; preds = %244
  %304 = load %struct.qedr_dev*, %struct.qedr_dev** %14, align 8
  %305 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %304, i32 0, i32 1
  %306 = load %struct.TYPE_8__*, %struct.TYPE_8__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 2
  %308 = load i32 (i32, i32)*, i32 (i32, i32)** %307, align 8
  %309 = load %struct.qedr_dev*, %struct.qedr_dev** %14, align 8
  %310 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %313 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = call i32 %308(i32 %311, i32 %315)
  br label %317

317:                                              ; preds = %303, %116, %87
  %318 = load %struct.qedr_dev*, %struct.qedr_dev** %14, align 8
  %319 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %320 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 1
  %322 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %323 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %323, i32 0, i32 0
  %325 = load %struct.TYPE_10__*, %struct.TYPE_10__** %324, align 8
  %326 = call i32 @qedr_free_pbl(%struct.qedr_dev* %318, %struct.TYPE_11__* %321, %struct.TYPE_10__* %325)
  br label %327

327:                                              ; preds = %317, %73
  %328 = load %struct.qedr_mr*, %struct.qedr_mr** %15, align 8
  %329 = call i32 @kfree(%struct.qedr_mr* %328)
  %330 = load i32, i32* %17, align 4
  %331 = call %struct.ib_mr* @ERR_PTR(i32 %330)
  store %struct.ib_mr* %331, %struct.ib_mr** %7, align 8
  br label %332

332:                                              ; preds = %327, %293, %54, %45
  %333 = load %struct.ib_mr*, %struct.ib_mr** %7, align 8
  ret %struct.ib_mr* %333
}

declare dso_local %struct.qedr_dev* @get_qedr_dev(i32) #1

declare dso_local %struct.qedr_pd* @get_qedr_pd(%struct.ib_pd*) #1

declare dso_local i32 @DP_DEBUG(%struct.qedr_dev*, i32, i8*, i32, ...) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local %struct.qedr_mr* @kzalloc(i32, i32) #1

declare dso_local i32 @ib_umem_get(%struct.ib_udata*, i8*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @init_mr_info(%struct.qedr_dev*, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @ib_umem_page_count(i32) #1

declare dso_local i32 @qedr_populate_pbls(%struct.qedr_dev*, i32, %struct.TYPE_10__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @ib_umem_offset(i32) #1

declare dso_local i32 @qedr_free_pbl(%struct.qedr_dev*, %struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32 @kfree(%struct.qedr_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
