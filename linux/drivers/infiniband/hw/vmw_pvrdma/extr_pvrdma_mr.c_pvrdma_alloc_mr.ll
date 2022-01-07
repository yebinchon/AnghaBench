; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_mr.c_pvrdma_alloc_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_mr.c_pvrdma_alloc_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i32 }
%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.pvrdma_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.pvrdma_user_mr = type { i32, %struct.pvrdma_user_mr*, i32, %struct.ib_mr, i32*, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%union.pvrdma_cmd_req = type { %struct.pvrdma_cmd_create_mr }
%struct.pvrdma_cmd_create_mr = type { i32, i32, i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%union.pvrdma_cmd_resp = type { %struct.pvrdma_cmd_create_mr_resp }
%struct.pvrdma_cmd_create_mr_resp = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@IB_MR_TYPE_MEM_REG = common dso_local global i32 0, align 4
@PVRDMA_MAX_FAST_REG_PAGES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to allocate page dir for mr\0A\00", align 1
@PVRDMA_CMD_CREATE_MR = common dso_local global i32 0, align 4
@PVRDMA_MR_FLAG_FRMR = common dso_local global i32 0, align 4
@PVRDMA_CMD_CREATE_MR_RESP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"could not create FR mem region, error: %d\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @pvrdma_alloc_mr(%struct.ib_pd* %0, i32 %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca %struct.ib_mr*, align 8
  %6 = alloca %struct.ib_pd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca %struct.pvrdma_dev*, align 8
  %11 = alloca %struct.pvrdma_user_mr*, align 8
  %12 = alloca %union.pvrdma_cmd_req, align 8
  %13 = alloca %union.pvrdma_cmd_resp, align 4
  %14 = alloca %struct.pvrdma_cmd_create_mr*, align 8
  %15 = alloca %struct.pvrdma_cmd_create_mr_resp*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %18 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %19 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.pvrdma_dev* @to_vdev(i32 %20)
  store %struct.pvrdma_dev* %21, %struct.pvrdma_dev** %10, align 8
  %22 = bitcast %union.pvrdma_cmd_req* %12 to %struct.pvrdma_cmd_create_mr*
  store %struct.pvrdma_cmd_create_mr* %22, %struct.pvrdma_cmd_create_mr** %14, align 8
  %23 = bitcast %union.pvrdma_cmd_resp* %13 to %struct.pvrdma_cmd_create_mr_resp*
  store %struct.pvrdma_cmd_create_mr_resp* %23, %struct.pvrdma_cmd_create_mr_resp** %15, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @IB_MR_TYPE_MEM_REG, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @PVRDMA_MAX_FAST_REG_PAGES, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31, %4
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.ib_mr* @ERR_PTR(i32 %37)
  store %struct.ib_mr* %38, %struct.ib_mr** %5, align 8
  br label %156

39:                                               ; preds = %31
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @kzalloc(i32 48, i32 %40)
  %42 = bitcast i8* %41 to %struct.pvrdma_user_mr*
  store %struct.pvrdma_user_mr* %42, %struct.pvrdma_user_mr** %11, align 8
  %43 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %11, align 8
  %44 = icmp ne %struct.pvrdma_user_mr* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.ib_mr* @ERR_PTR(i32 %47)
  store %struct.ib_mr* %48, %struct.ib_mr** %5, align 8
  br label %156

49:                                               ; preds = %39
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8* @kzalloc(i32 %50, i32 %51)
  %53 = bitcast i8* %52 to %struct.pvrdma_user_mr*
  %54 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %11, align 8
  %55 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %54, i32 0, i32 1
  store %struct.pvrdma_user_mr* %53, %struct.pvrdma_user_mr** %55, align 8
  %56 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %11, align 8
  %57 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %56, i32 0, i32 1
  %58 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %57, align 8
  %59 = icmp ne %struct.pvrdma_user_mr* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %49
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %17, align 4
  br label %151

63:                                               ; preds = %49
  %64 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %10, align 8
  %65 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %11, align 8
  %66 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %65, i32 0, i32 2
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @pvrdma_page_dir_init(%struct.pvrdma_dev* %64, i32* %66, i32 %67, i32 0)
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %63
  %72 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %10, align 8
  %73 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = call i32 (i32*, i8*, ...) @dev_warn(i32* %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %17, align 4
  br label %146

79:                                               ; preds = %63
  %80 = load %struct.pvrdma_cmd_create_mr*, %struct.pvrdma_cmd_create_mr** %14, align 8
  %81 = call i32 @memset(%struct.pvrdma_cmd_create_mr* %80, i32 0, i32 24)
  %82 = load i32, i32* @PVRDMA_CMD_CREATE_MR, align 4
  %83 = load %struct.pvrdma_cmd_create_mr*, %struct.pvrdma_cmd_create_mr** %14, align 8
  %84 = getelementptr inbounds %struct.pvrdma_cmd_create_mr, %struct.pvrdma_cmd_create_mr* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 4
  %86 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %87 = call %struct.TYPE_8__* @to_vpd(%struct.ib_pd* %86)
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.pvrdma_cmd_create_mr*, %struct.pvrdma_cmd_create_mr** %14, align 8
  %91 = getelementptr inbounds %struct.pvrdma_cmd_create_mr, %struct.pvrdma_cmd_create_mr* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load %struct.pvrdma_cmd_create_mr*, %struct.pvrdma_cmd_create_mr** %14, align 8
  %93 = getelementptr inbounds %struct.pvrdma_cmd_create_mr, %struct.pvrdma_cmd_create_mr* %92, i32 0, i32 2
  store i64 0, i64* %93, align 8
  %94 = load i32, i32* @PVRDMA_MR_FLAG_FRMR, align 4
  %95 = load %struct.pvrdma_cmd_create_mr*, %struct.pvrdma_cmd_create_mr** %14, align 8
  %96 = getelementptr inbounds %struct.pvrdma_cmd_create_mr, %struct.pvrdma_cmd_create_mr* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.pvrdma_cmd_create_mr*, %struct.pvrdma_cmd_create_mr** %14, align 8
  %99 = getelementptr inbounds %struct.pvrdma_cmd_create_mr, %struct.pvrdma_cmd_create_mr* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %10, align 8
  %101 = load i32, i32* @PVRDMA_CMD_CREATE_MR_RESP, align 4
  %102 = call i32 @pvrdma_cmd_post(%struct.pvrdma_dev* %100, %union.pvrdma_cmd_req* %12, %union.pvrdma_cmd_resp* %13, i32 %101)
  store i32 %102, i32* %17, align 4
  %103 = load i32, i32* %17, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %79
  %106 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %10, align 8
  %107 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %17, align 4
  %111 = call i32 (i32*, i8*, ...) @dev_warn(i32* %109, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  br label %141

112:                                              ; preds = %79
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %11, align 8
  %115 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.pvrdma_cmd_create_mr_resp*, %struct.pvrdma_cmd_create_mr_resp** %15, align 8
  %117 = getelementptr inbounds %struct.pvrdma_cmd_create_mr_resp, %struct.pvrdma_cmd_create_mr_resp* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %11, align 8
  %120 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %119, i32 0, i32 6
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 4
  %122 = load %struct.pvrdma_cmd_create_mr_resp*, %struct.pvrdma_cmd_create_mr_resp** %15, align 8
  %123 = getelementptr inbounds %struct.pvrdma_cmd_create_mr_resp, %struct.pvrdma_cmd_create_mr_resp* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %11, align 8
  %126 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %126, i32 0, i32 1
  store i32 %124, i32* %127, align 4
  %128 = load %struct.pvrdma_cmd_create_mr_resp*, %struct.pvrdma_cmd_create_mr_resp** %15, align 8
  %129 = getelementptr inbounds %struct.pvrdma_cmd_create_mr_resp, %struct.pvrdma_cmd_create_mr_resp* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %11, align 8
  %132 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 4
  %134 = load i32, i32* @PAGE_SHIFT, align 4
  %135 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %11, align 8
  %136 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %135, i32 0, i32 5
  store i32 %134, i32* %136, align 8
  %137 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %11, align 8
  %138 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %137, i32 0, i32 4
  store i32* null, i32** %138, align 8
  %139 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %11, align 8
  %140 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %139, i32 0, i32 3
  store %struct.ib_mr* %140, %struct.ib_mr** %5, align 8
  br label %156

141:                                              ; preds = %105
  %142 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %10, align 8
  %143 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %11, align 8
  %144 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %143, i32 0, i32 2
  %145 = call i32 @pvrdma_page_dir_cleanup(%struct.pvrdma_dev* %142, i32* %144)
  br label %146

146:                                              ; preds = %141, %71
  %147 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %11, align 8
  %148 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %147, i32 0, i32 1
  %149 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %148, align 8
  %150 = call i32 @kfree(%struct.pvrdma_user_mr* %149)
  br label %151

151:                                              ; preds = %146, %60
  %152 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %11, align 8
  %153 = call i32 @kfree(%struct.pvrdma_user_mr* %152)
  %154 = load i32, i32* %17, align 4
  %155 = call %struct.ib_mr* @ERR_PTR(i32 %154)
  store %struct.ib_mr* %155, %struct.ib_mr** %5, align 8
  br label %156

156:                                              ; preds = %151, %112, %45, %35
  %157 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  ret %struct.ib_mr* %157
}

declare dso_local %struct.pvrdma_dev* @to_vdev(i32) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @pvrdma_page_dir_init(%struct.pvrdma_dev*, i32*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @memset(%struct.pvrdma_cmd_create_mr*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @to_vpd(%struct.ib_pd*) #1

declare dso_local i32 @pvrdma_cmd_post(%struct.pvrdma_dev*, %union.pvrdma_cmd_req*, %union.pvrdma_cmd_resp*, i32) #1

declare dso_local i32 @pvrdma_page_dir_cleanup(%struct.pvrdma_dev*, i32*) #1

declare dso_local i32 @kfree(%struct.pvrdma_user_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
