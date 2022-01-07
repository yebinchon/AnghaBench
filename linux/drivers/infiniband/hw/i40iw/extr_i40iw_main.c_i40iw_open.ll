; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_info = type { i32 }
%struct.i40e_client = type { i32 }
%struct.i40iw_device = type { i32, i32, i32*, i8*, i32, %struct.i40iw_sc_dev, i32, %struct.i40e_client*, i32*, %struct.i40iw_handler* }
%struct.i40iw_sc_dev = type { i32, %struct.TYPE_2__*, i32, i64, i8* }
%struct.TYPE_2__ = type { i32 (i32)* }
%struct.i40iw_handler = type { i32, %struct.i40iw_device }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INITIAL_STATE = common dso_local global i32 0, align 4
@CQP_CREATED = common dso_local global i32 0, align 4
@CCQ_CREATED = common dso_local global i32 0, align 4
@ILQ_CREATED = common dso_local global i32 0, align 4
@IEQ_CREATED = common dso_local global i32 0, align 4
@AEQ_CREATED = common dso_local global i32 0, align 4
@CEQ_CREATED = common dso_local global i32 0, align 4
@PBLE_CHUNK_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"iwvch\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@IP_ADDR_REGISTERED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"register rdma device fail\0A\00", align 1
@RDMA_DEV_REGISTERED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"l2params\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"i40iw_open completed\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"status = %d last completion = %d\0A\00", align 1
@ERESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_info*, %struct.i40e_client*)* @i40iw_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_open(%struct.i40e_info* %0, %struct.i40e_client* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_info*, align 8
  %5 = alloca %struct.i40e_client*, align 8
  %6 = alloca %struct.i40iw_device*, align 8
  %7 = alloca %struct.i40iw_sc_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.i40iw_handler*, align 8
  store %struct.i40e_info* %0, %struct.i40e_info** %4, align 8
  store %struct.i40e_client* %1, %struct.i40e_client** %5, align 8
  %10 = load %struct.i40e_info*, %struct.i40e_info** %4, align 8
  %11 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.i40iw_handler* @i40iw_find_netdev(i32 %12)
  store %struct.i40iw_handler* %13, %struct.i40iw_handler** %9, align 8
  %14 = load %struct.i40iw_handler*, %struct.i40iw_handler** %9, align 8
  %15 = icmp ne %struct.i40iw_handler* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %221

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.i40iw_handler* @kzalloc(i32 112, i32 %18)
  store %struct.i40iw_handler* %19, %struct.i40iw_handler** %9, align 8
  %20 = load %struct.i40iw_handler*, %struct.i40iw_handler** %9, align 8
  %21 = icmp ne %struct.i40iw_handler* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %221

25:                                               ; preds = %17
  %26 = load %struct.i40iw_handler*, %struct.i40iw_handler** %9, align 8
  %27 = getelementptr inbounds %struct.i40iw_handler, %struct.i40iw_handler* %26, i32 0, i32 1
  store %struct.i40iw_device* %27, %struct.i40iw_device** %6, align 8
  %28 = load %struct.i40iw_handler*, %struct.i40iw_handler** %9, align 8
  %29 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %30 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %29, i32 0, i32 9
  store %struct.i40iw_handler* %28, %struct.i40iw_handler** %30, align 8
  %31 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %32 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %31, i32 0, i32 5
  store %struct.i40iw_sc_dev* %32, %struct.i40iw_sc_dev** %7, align 8
  %33 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %34 = call i64 @i40iw_setup_cm_core(%struct.i40iw_device* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %25
  %37 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %38 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %37, i32 0, i32 9
  %39 = load %struct.i40iw_handler*, %struct.i40iw_handler** %38, align 8
  %40 = call i32 @kfree(%struct.i40iw_handler* %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %221

43:                                               ; preds = %25
  %44 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %45 = bitcast %struct.i40iw_device* %44 to i8*
  %46 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %7, align 8
  %47 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  %48 = load %struct.i40iw_handler*, %struct.i40iw_handler** %9, align 8
  %49 = getelementptr inbounds %struct.i40iw_handler, %struct.i40iw_handler* %48, i32 0, i32 0
  %50 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %51 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %50, i32 0, i32 8
  store i32* %49, i32** %51, align 8
  %52 = load %struct.i40e_client*, %struct.i40e_client** %5, align 8
  %53 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %54 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %53, i32 0, i32 7
  store %struct.i40e_client* %52, %struct.i40e_client** %54, align 8
  %55 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %56 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %55, i32 0, i32 6
  %57 = call i32 @mutex_init(i32* %56)
  %58 = load %struct.i40iw_handler*, %struct.i40iw_handler** %9, align 8
  %59 = call i32 @i40iw_add_handler(%struct.i40iw_handler* %58)
  br label %60

60:                                               ; preds = %43
  %61 = load %struct.i40iw_handler*, %struct.i40iw_handler** %9, align 8
  %62 = load %struct.i40e_info*, %struct.i40e_info** %4, align 8
  %63 = load %struct.i40e_client*, %struct.i40e_client** %5, align 8
  %64 = call i32 @i40iw_setup_init_state(%struct.i40iw_handler* %61, %struct.i40e_info* %62, %struct.i40e_client* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %211

68:                                               ; preds = %60
  %69 = load i32, i32* @INITIAL_STATE, align 4
  %70 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %71 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %7, align 8
  %73 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %68
  %77 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %7, align 8
  %78 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @i40iw_wait_pe_ready(i32 %79)
  br label %81

81:                                               ; preds = %76, %68
  %82 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %83 = call i32 @i40iw_create_cqp(%struct.i40iw_device* %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %211

87:                                               ; preds = %81
  %88 = load i32, i32* @CQP_CREATED, align 4
  %89 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %90 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %92 = call i32 @i40iw_hmc_setup(%struct.i40iw_device* %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %211

96:                                               ; preds = %87
  %97 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %98 = call i32 @i40iw_create_ccq(%struct.i40iw_device* %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %211

102:                                              ; preds = %96
  %103 = load i32, i32* @CCQ_CREATED, align 4
  %104 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %105 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %107 = call i32 @i40iw_initialize_ilq(%struct.i40iw_device* %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  br label %211

111:                                              ; preds = %102
  %112 = load i32, i32* @ILQ_CREATED, align 4
  %113 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %114 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %116 = call i32 @i40iw_initialize_ieq(%struct.i40iw_device* %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %211

120:                                              ; preds = %111
  %121 = load i32, i32* @IEQ_CREATED, align 4
  %122 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %123 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %125 = call i32 @i40iw_setup_aeq(%struct.i40iw_device* %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  br label %211

129:                                              ; preds = %120
  %130 = load i32, i32* @AEQ_CREATED, align 4
  %131 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %132 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %134 = load %struct.i40e_info*, %struct.i40e_info** %4, align 8
  %135 = call i32 @i40iw_setup_ceqs(%struct.i40iw_device* %133, %struct.i40e_info* %134)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %129
  br label %211

139:                                              ; preds = %129
  %140 = load i32, i32* @CEQ_CREATED, align 4
  %141 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %142 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %144 = call i32 @i40iw_initialize_hw_resources(%struct.i40iw_device* %143)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %139
  br label %211

148:                                              ; preds = %139
  %149 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %150 = call i32 @i40iw_get_used_rsrc(%struct.i40iw_device* %149)
  %151 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %7, align 8
  %152 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %151, i32 0, i32 1
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32 (i32)*, i32 (i32)** %154, align 8
  %156 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %7, align 8
  %157 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 %155(i32 %158)
  %160 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %161 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %160, i32 0, i32 5
  %162 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %163 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @i40iw_hmc_init_pble(%struct.i40iw_sc_dev* %161, i32 %164)
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %148
  br label %211

169:                                              ; preds = %148
  %170 = load i32, i32* @PBLE_CHUNK_MEM, align 4
  %171 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %172 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %174 = call i8* @alloc_ordered_workqueue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %173)
  %175 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %176 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %175, i32 0, i32 3
  store i8* %174, i8** %176, align 8
  %177 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %178 = call i32 @i40iw_add_mac_ip(%struct.i40iw_device* %177)
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* %8, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %169
  br label %211

182:                                              ; preds = %169
  %183 = load i32, i32* @IP_ADDR_REGISTERED, align 4
  %184 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %185 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 4
  %186 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %187 = call i64 @i40iw_register_rdma_device(%struct.i40iw_device* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %182
  %190 = call i32 (i8*, ...) @i40iw_pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %211

191:                                              ; preds = %182
  %192 = load i32, i32* @RDMA_DEV_REGISTERED, align 4
  %193 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %194 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 4
  %195 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %196 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %195, i32 0, i32 0
  store i32 1, i32* %196, align 8
  %197 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %198 = call i32 @i40iw_port_ibevent(%struct.i40iw_device* %197)
  %199 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %200 = call i8* @alloc_ordered_workqueue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %199)
  %201 = bitcast i8* %200 to i32*
  %202 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %203 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %202, i32 0, i32 2
  store i32* %201, i32** %203, align 8
  %204 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %205 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = icmp eq i32* %206, null
  br i1 %207, label %208, label %209

208:                                              ; preds = %191
  br label %211

209:                                              ; preds = %191
  %210 = call i32 @i40iw_pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %221

211:                                              ; preds = %208, %189, %181, %168, %147, %138, %128, %119, %110, %101, %95, %86, %67
  %212 = load i32, i32* %8, align 4
  %213 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %214 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = call i32 (i8*, ...) @i40iw_pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %212, i32 %215)
  %217 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %218 = call i32 @i40iw_deinit_device(%struct.i40iw_device* %217)
  %219 = load i32, i32* @ERESTART, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %3, align 4
  br label %221

221:                                              ; preds = %211, %209, %36, %22, %16
  %222 = load i32, i32* %3, align 4
  ret i32 %222
}

declare dso_local %struct.i40iw_handler* @i40iw_find_netdev(i32) #1

declare dso_local %struct.i40iw_handler* @kzalloc(i32, i32) #1

declare dso_local i64 @i40iw_setup_cm_core(%struct.i40iw_device*) #1

declare dso_local i32 @kfree(%struct.i40iw_handler*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i40iw_add_handler(%struct.i40iw_handler*) #1

declare dso_local i32 @i40iw_setup_init_state(%struct.i40iw_handler*, %struct.i40e_info*, %struct.i40e_client*) #1

declare dso_local i32 @i40iw_wait_pe_ready(i32) #1

declare dso_local i32 @i40iw_create_cqp(%struct.i40iw_device*) #1

declare dso_local i32 @i40iw_hmc_setup(%struct.i40iw_device*) #1

declare dso_local i32 @i40iw_create_ccq(%struct.i40iw_device*) #1

declare dso_local i32 @i40iw_initialize_ilq(%struct.i40iw_device*) #1

declare dso_local i32 @i40iw_initialize_ieq(%struct.i40iw_device*) #1

declare dso_local i32 @i40iw_setup_aeq(%struct.i40iw_device*) #1

declare dso_local i32 @i40iw_setup_ceqs(%struct.i40iw_device*, %struct.i40e_info*) #1

declare dso_local i32 @i40iw_initialize_hw_resources(%struct.i40iw_device*) #1

declare dso_local i32 @i40iw_get_used_rsrc(%struct.i40iw_device*) #1

declare dso_local i32 @i40iw_hmc_init_pble(%struct.i40iw_sc_dev*, i32) #1

declare dso_local i8* @alloc_ordered_workqueue(i8*, i32) #1

declare dso_local i32 @i40iw_add_mac_ip(%struct.i40iw_device*) #1

declare dso_local i64 @i40iw_register_rdma_device(%struct.i40iw_device*) #1

declare dso_local i32 @i40iw_pr_err(i8*, ...) #1

declare dso_local i32 @i40iw_port_ibevent(%struct.i40iw_device*) #1

declare dso_local i32 @i40iw_pr_info(i8*) #1

declare dso_local i32 @i40iw_deinit_device(%struct.i40iw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
