; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_mr.c_pvrdma_reg_user_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_mr.c_pvrdma_reg_user_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i32 }
%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.pvrdma_dev = type { %struct.TYPE_13__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.pvrdma_user_mr = type { %struct.TYPE_16__, %struct.ib_mr, %struct.TYPE_14__, %struct.ib_umem* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32, i64, i64 }
%struct.ib_umem = type { i32 }
%union.pvrdma_cmd_req = type { %struct.pvrdma_cmd_create_mr }
%struct.pvrdma_cmd_create_mr = type { i32, i32, i32, i32, i64, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%union.pvrdma_cmd_resp = type { %struct.pvrdma_cmd_create_mr_resp }
%struct.pvrdma_cmd_create_mr_resp = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"invalid mem region length\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"could not get umem for mem region\0A\00", align 1
@PVRDMA_PAGE_DIR_MAX_PAGES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"overflow %d pages in mem region\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"could not allocate page directory\0A\00", align 1
@PVRDMA_CMD_CREATE_MR = common dso_local global i32 0, align 4
@PVRDMA_CMD_CREATE_MR_RESP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"could not register mem region, error: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @pvrdma_reg_user_mr(%struct.ib_pd* %0, i64 %1, i64 %2, i64 %3, i32 %4, %struct.ib_udata* %5) #0 {
  %7 = alloca %struct.ib_mr*, align 8
  %8 = alloca %struct.ib_pd*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_udata*, align 8
  %14 = alloca %struct.pvrdma_dev*, align 8
  %15 = alloca %struct.pvrdma_user_mr*, align 8
  %16 = alloca %struct.ib_umem*, align 8
  %17 = alloca %union.pvrdma_cmd_req, align 8
  %18 = alloca %union.pvrdma_cmd_resp, align 4
  %19 = alloca %struct.pvrdma_cmd_create_mr*, align 8
  %20 = alloca %struct.pvrdma_cmd_create_mr_resp*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.ib_udata* %5, %struct.ib_udata** %13, align 8
  %23 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %24 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.pvrdma_dev* @to_vdev(i32 %25)
  store %struct.pvrdma_dev* %26, %struct.pvrdma_dev** %14, align 8
  store %struct.pvrdma_user_mr* null, %struct.pvrdma_user_mr** %15, align 8
  %27 = bitcast %union.pvrdma_cmd_req* %17 to %struct.pvrdma_cmd_create_mr*
  store %struct.pvrdma_cmd_create_mr* %27, %struct.pvrdma_cmd_create_mr** %19, align 8
  %28 = bitcast %union.pvrdma_cmd_resp* %18 to %struct.pvrdma_cmd_create_mr_resp*
  store %struct.pvrdma_cmd_create_mr_resp* %28, %struct.pvrdma_cmd_create_mr_resp** %20, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %6
  %32 = load i64, i64* %10, align 8
  %33 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %14, align 8
  %34 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %33, i32 0, i32 1
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %32, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %31, %6
  %41 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %14, align 8
  %42 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = call i32 (i32*, i8*, ...) @dev_warn(i32* %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.ib_mr* @ERR_PTR(i32 %47)
  store %struct.ib_mr* %48, %struct.ib_mr** %7, align 8
  br label %203

49:                                               ; preds = %31
  %50 = load %struct.ib_udata*, %struct.ib_udata** %13, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call %struct.ib_umem* @ib_umem_get(%struct.ib_udata* %50, i64 %51, i64 %52, i32 %53, i32 0)
  store %struct.ib_umem* %54, %struct.ib_umem** %16, align 8
  %55 = load %struct.ib_umem*, %struct.ib_umem** %16, align 8
  %56 = call i64 @IS_ERR(%struct.ib_umem* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %49
  %59 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %14, align 8
  %60 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %59, i32 0, i32 0
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = call i32 (i32*, i8*, ...) @dev_warn(i32* %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.ib_umem*, %struct.ib_umem** %16, align 8
  %65 = call %struct.ib_mr* @ERR_CAST(%struct.ib_umem* %64)
  store %struct.ib_mr* %65, %struct.ib_mr** %7, align 8
  br label %203

66:                                               ; preds = %49
  %67 = load %struct.ib_umem*, %struct.ib_umem** %16, align 8
  %68 = call i32 @ib_umem_num_pages(%struct.ib_umem* %67)
  store i32 %68, i32* %22, align 4
  %69 = load i32, i32* %22, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %22, align 4
  %73 = load i32, i32* @PVRDMA_PAGE_DIR_MAX_PAGES, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %71, %66
  %76 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %14, align 8
  %77 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %76, i32 0, i32 0
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32, i32* %22, align 4
  %81 = call i32 (i32*, i8*, ...) @dev_warn(i32* %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %21, align 4
  br label %196

84:                                               ; preds = %71
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call %struct.pvrdma_user_mr* @kzalloc(i32 48, i32 %85)
  store %struct.pvrdma_user_mr* %86, %struct.pvrdma_user_mr** %15, align 8
  %87 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %15, align 8
  %88 = icmp ne %struct.pvrdma_user_mr* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %21, align 4
  br label %196

92:                                               ; preds = %84
  %93 = load i64, i64* %11, align 8
  %94 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %15, align 8
  %95 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 2
  store i64 %93, i64* %96, align 8
  %97 = load i64, i64* %10, align 8
  %98 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %15, align 8
  %99 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  store i64 %97, i64* %100, align 8
  %101 = load %struct.ib_umem*, %struct.ib_umem** %16, align 8
  %102 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %15, align 8
  %103 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %102, i32 0, i32 3
  store %struct.ib_umem* %101, %struct.ib_umem** %103, align 8
  %104 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %14, align 8
  %105 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %15, align 8
  %106 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %105, i32 0, i32 0
  %107 = load i32, i32* %22, align 4
  %108 = call i32 @pvrdma_page_dir_init(%struct.pvrdma_dev* %104, %struct.TYPE_16__* %106, i32 %107, i32 0)
  store i32 %108, i32* %21, align 4
  %109 = load i32, i32* %21, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %92
  %112 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %14, align 8
  %113 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %112, i32 0, i32 0
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = call i32 (i32*, i8*, ...) @dev_warn(i32* %115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %196

117:                                              ; preds = %92
  %118 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %15, align 8
  %119 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %118, i32 0, i32 0
  %120 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %15, align 8
  %121 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %120, i32 0, i32 3
  %122 = load %struct.ib_umem*, %struct.ib_umem** %121, align 8
  %123 = call i32 @pvrdma_page_dir_insert_umem(%struct.TYPE_16__* %119, %struct.ib_umem* %122, i32 0)
  store i32 %123, i32* %21, align 4
  %124 = load i32, i32* %21, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %191

127:                                              ; preds = %117
  %128 = load %struct.pvrdma_cmd_create_mr*, %struct.pvrdma_cmd_create_mr** %19, align 8
  %129 = call i32 @memset(%struct.pvrdma_cmd_create_mr* %128, i32 0, i32 40)
  %130 = load i32, i32* @PVRDMA_CMD_CREATE_MR, align 4
  %131 = load %struct.pvrdma_cmd_create_mr*, %struct.pvrdma_cmd_create_mr** %19, align 8
  %132 = getelementptr inbounds %struct.pvrdma_cmd_create_mr, %struct.pvrdma_cmd_create_mr* %131, i32 0, i32 6
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 8
  %134 = load i64, i64* %9, align 8
  %135 = load %struct.pvrdma_cmd_create_mr*, %struct.pvrdma_cmd_create_mr** %19, align 8
  %136 = getelementptr inbounds %struct.pvrdma_cmd_create_mr, %struct.pvrdma_cmd_create_mr* %135, i32 0, i32 5
  store i64 %134, i64* %136, align 8
  %137 = load i64, i64* %10, align 8
  %138 = load %struct.pvrdma_cmd_create_mr*, %struct.pvrdma_cmd_create_mr** %19, align 8
  %139 = getelementptr inbounds %struct.pvrdma_cmd_create_mr, %struct.pvrdma_cmd_create_mr* %138, i32 0, i32 4
  store i64 %137, i64* %139, align 8
  %140 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %141 = call %struct.TYPE_15__* @to_vpd(%struct.ib_pd* %140)
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.pvrdma_cmd_create_mr*, %struct.pvrdma_cmd_create_mr** %19, align 8
  %145 = getelementptr inbounds %struct.pvrdma_cmd_create_mr, %struct.pvrdma_cmd_create_mr* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* %12, align 4
  %147 = load %struct.pvrdma_cmd_create_mr*, %struct.pvrdma_cmd_create_mr** %19, align 8
  %148 = getelementptr inbounds %struct.pvrdma_cmd_create_mr, %struct.pvrdma_cmd_create_mr* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* %22, align 4
  %150 = load %struct.pvrdma_cmd_create_mr*, %struct.pvrdma_cmd_create_mr** %19, align 8
  %151 = getelementptr inbounds %struct.pvrdma_cmd_create_mr, %struct.pvrdma_cmd_create_mr* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %15, align 8
  %153 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.pvrdma_cmd_create_mr*, %struct.pvrdma_cmd_create_mr** %19, align 8
  %157 = getelementptr inbounds %struct.pvrdma_cmd_create_mr, %struct.pvrdma_cmd_create_mr* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 8
  %158 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %14, align 8
  %159 = load i32, i32* @PVRDMA_CMD_CREATE_MR_RESP, align 4
  %160 = call i32 @pvrdma_cmd_post(%struct.pvrdma_dev* %158, %union.pvrdma_cmd_req* %17, %union.pvrdma_cmd_resp* %18, i32 %159)
  store i32 %160, i32* %21, align 4
  %161 = load i32, i32* %21, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %127
  %164 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %14, align 8
  %165 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %164, i32 0, i32 0
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = load i32, i32* %21, align 4
  %169 = call i32 (i32*, i8*, ...) @dev_warn(i32* %167, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %168)
  br label %191

170:                                              ; preds = %127
  %171 = load %struct.pvrdma_cmd_create_mr_resp*, %struct.pvrdma_cmd_create_mr_resp** %20, align 8
  %172 = getelementptr inbounds %struct.pvrdma_cmd_create_mr_resp, %struct.pvrdma_cmd_create_mr_resp* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %15, align 8
  %175 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  store i32 %173, i32* %176, align 8
  %177 = load %struct.pvrdma_cmd_create_mr_resp*, %struct.pvrdma_cmd_create_mr_resp** %20, align 8
  %178 = getelementptr inbounds %struct.pvrdma_cmd_create_mr_resp, %struct.pvrdma_cmd_create_mr_resp* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %15, align 8
  %181 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %181, i32 0, i32 1
  store i32 %179, i32* %182, align 4
  %183 = load %struct.pvrdma_cmd_create_mr_resp*, %struct.pvrdma_cmd_create_mr_resp** %20, align 8
  %184 = getelementptr inbounds %struct.pvrdma_cmd_create_mr_resp, %struct.pvrdma_cmd_create_mr_resp* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %15, align 8
  %187 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %187, i32 0, i32 0
  store i32 %185, i32* %188, align 4
  %189 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %15, align 8
  %190 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %189, i32 0, i32 1
  store %struct.ib_mr* %190, %struct.ib_mr** %7, align 8
  br label %203

191:                                              ; preds = %163, %126
  %192 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %14, align 8
  %193 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %15, align 8
  %194 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %193, i32 0, i32 0
  %195 = call i32 @pvrdma_page_dir_cleanup(%struct.pvrdma_dev* %192, %struct.TYPE_16__* %194)
  br label %196

196:                                              ; preds = %191, %111, %89, %75
  %197 = load %struct.ib_umem*, %struct.ib_umem** %16, align 8
  %198 = call i32 @ib_umem_release(%struct.ib_umem* %197)
  %199 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %15, align 8
  %200 = call i32 @kfree(%struct.pvrdma_user_mr* %199)
  %201 = load i32, i32* %21, align 4
  %202 = call %struct.ib_mr* @ERR_PTR(i32 %201)
  store %struct.ib_mr* %202, %struct.ib_mr** %7, align 8
  br label %203

203:                                              ; preds = %196, %170, %58, %40
  %204 = load %struct.ib_mr*, %struct.ib_mr** %7, align 8
  ret %struct.ib_mr* %204
}

declare dso_local %struct.pvrdma_dev* @to_vdev(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local %struct.ib_umem* @ib_umem_get(%struct.ib_udata*, i64, i64, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_umem*) #1

declare dso_local %struct.ib_mr* @ERR_CAST(%struct.ib_umem*) #1

declare dso_local i32 @ib_umem_num_pages(%struct.ib_umem*) #1

declare dso_local %struct.pvrdma_user_mr* @kzalloc(i32, i32) #1

declare dso_local i32 @pvrdma_page_dir_init(%struct.pvrdma_dev*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @pvrdma_page_dir_insert_umem(%struct.TYPE_16__*, %struct.ib_umem*, i32) #1

declare dso_local i32 @memset(%struct.pvrdma_cmd_create_mr*, i32, i32) #1

declare dso_local %struct.TYPE_15__* @to_vpd(%struct.ib_pd*) #1

declare dso_local i32 @pvrdma_cmd_post(%struct.pvrdma_dev*, %union.pvrdma_cmd_req*, %union.pvrdma_cmd_resp*, i32) #1

declare dso_local i32 @pvrdma_page_dir_cleanup(%struct.pvrdma_dev*, %struct.TYPE_16__*) #1

declare dso_local i32 @ib_umem_release(%struct.ib_umem*) #1

declare dso_local i32 @kfree(%struct.pvrdma_user_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
