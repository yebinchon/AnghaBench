; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_vt.c_rvt_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_vt.c_rvt_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_dev_info = type { %struct.TYPE_4__, i64, i32, i32, i64, i32 }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@_VERB_IDX_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Driver support req not met at %d\0A\00", align 1
@rvt_dev_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Driver attempting registration\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Error in driver QP init.\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Error in driver MR init.\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Error in WSS init.\0A\00", align 1
@dma_virt_ops = common dso_local global i32 0, align 4
@IB_USER_VERBS_CMD_GET_CONTEXT = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_QUERY_DEVICE = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_QUERY_PORT = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_ALLOC_PD = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DEALLOC_PD = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_CREATE_AH = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_MODIFY_AH = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_QUERY_AH = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DESTROY_AH = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_REG_MR = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DEREG_MR = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_CREATE_CQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_RESIZE_CQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DESTROY_CQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_POLL_CQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_REQ_NOTIFY_CQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_CREATE_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_QUERY_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_MODIFY_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DESTROY_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_POST_SEND = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_POST_RECV = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_ATTACH_MCAST = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DETACH_MCAST = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_CREATE_SRQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_MODIFY_SRQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_QUERY_SRQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DESTROY_SRQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_POST_SRQ_RECV = common dso_local global i64 0, align 8
@RDMA_NODE_IB_CA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"Failed to register driver with ib core.\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Registration with rdmavt done.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvt_register_device(%struct.rvt_dev_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rvt_dev_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rvt_dev_info* %0, %struct.rvt_dev_info** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %7 = icmp ne %struct.rvt_dev_info* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %227

11:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %27, %11
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @_VERB_IDX_MAX, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @check_support(%struct.rvt_dev_info* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %227

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %12

30:                                               ; preds = %12
  %31 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %32 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %31, i32 0, i32 0
  %33 = call i32 @ib_set_device_ops(%struct.TYPE_4__* %32, i32* @rvt_dev_ops)
  %34 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %35 = call i32 @trace_rvt_dbg(%struct.rvt_dev_info* %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %37 = call i32 @rvt_mmap_init(%struct.rvt_dev_info* %36)
  %38 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %39 = call i32 @rvt_driver_qp_init(%struct.rvt_dev_info* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %30
  %43 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %227

46:                                               ; preds = %30
  %47 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %48 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %47, i32 0, i32 5
  %49 = call i32 @spin_lock_init(i32* %48)
  %50 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %51 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %53 = call i32 @rvt_driver_srq_init(%struct.rvt_dev_info* %52)
  %54 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %55 = call i32 @rvt_driver_mcast_init(%struct.rvt_dev_info* %54)
  %56 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %57 = call i32 @rvt_driver_mr_init(%struct.rvt_dev_info* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %46
  %61 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %223

62:                                               ; preds = %46
  %63 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %64 = call i32 @rvt_wss_init(%struct.rvt_dev_info* %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %69 = call i32 @rvt_pr_err(%struct.rvt_dev_info* %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %220

70:                                               ; preds = %62
  %71 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %72 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %71, i32 0, i32 3
  %73 = call i32 @spin_lock_init(i32* %72)
  %74 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %75 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %82

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81, %80
  %83 = phi i32* [ %78, %80 ], [ @dma_virt_ops, %81 ]
  %84 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %85 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  store i32* %83, i32** %87, align 8
  %88 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %89 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %88, i32 0, i32 2
  %90 = call i32 @spin_lock_init(i32* %89)
  %91 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %92 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = load i64, i64* @IB_USER_VERBS_CMD_GET_CONTEXT, align 8
  %94 = shl i64 1, %93
  %95 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_DEVICE, align 8
  %96 = shl i64 1, %95
  %97 = or i64 %94, %96
  %98 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_PORT, align 8
  %99 = shl i64 1, %98
  %100 = or i64 %97, %99
  %101 = load i64, i64* @IB_USER_VERBS_CMD_ALLOC_PD, align 8
  %102 = shl i64 1, %101
  %103 = or i64 %100, %102
  %104 = load i64, i64* @IB_USER_VERBS_CMD_DEALLOC_PD, align 8
  %105 = shl i64 1, %104
  %106 = or i64 %103, %105
  %107 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_AH, align 8
  %108 = shl i64 1, %107
  %109 = or i64 %106, %108
  %110 = load i64, i64* @IB_USER_VERBS_CMD_MODIFY_AH, align 8
  %111 = shl i64 1, %110
  %112 = or i64 %109, %111
  %113 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_AH, align 8
  %114 = shl i64 1, %113
  %115 = or i64 %112, %114
  %116 = load i64, i64* @IB_USER_VERBS_CMD_DESTROY_AH, align 8
  %117 = shl i64 1, %116
  %118 = or i64 %115, %117
  %119 = load i64, i64* @IB_USER_VERBS_CMD_REG_MR, align 8
  %120 = shl i64 1, %119
  %121 = or i64 %118, %120
  %122 = load i64, i64* @IB_USER_VERBS_CMD_DEREG_MR, align 8
  %123 = shl i64 1, %122
  %124 = or i64 %121, %123
  %125 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL, align 8
  %126 = shl i64 1, %125
  %127 = or i64 %124, %126
  %128 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_CQ, align 8
  %129 = shl i64 1, %128
  %130 = or i64 %127, %129
  %131 = load i64, i64* @IB_USER_VERBS_CMD_RESIZE_CQ, align 8
  %132 = shl i64 1, %131
  %133 = or i64 %130, %132
  %134 = load i64, i64* @IB_USER_VERBS_CMD_DESTROY_CQ, align 8
  %135 = shl i64 1, %134
  %136 = or i64 %133, %135
  %137 = load i64, i64* @IB_USER_VERBS_CMD_POLL_CQ, align 8
  %138 = shl i64 1, %137
  %139 = or i64 %136, %138
  %140 = load i64, i64* @IB_USER_VERBS_CMD_REQ_NOTIFY_CQ, align 8
  %141 = shl i64 1, %140
  %142 = or i64 %139, %141
  %143 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_QP, align 8
  %144 = shl i64 1, %143
  %145 = or i64 %142, %144
  %146 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_QP, align 8
  %147 = shl i64 1, %146
  %148 = or i64 %145, %147
  %149 = load i64, i64* @IB_USER_VERBS_CMD_MODIFY_QP, align 8
  %150 = shl i64 1, %149
  %151 = or i64 %148, %150
  %152 = load i64, i64* @IB_USER_VERBS_CMD_DESTROY_QP, align 8
  %153 = shl i64 1, %152
  %154 = or i64 %151, %153
  %155 = load i64, i64* @IB_USER_VERBS_CMD_POST_SEND, align 8
  %156 = shl i64 1, %155
  %157 = or i64 %154, %156
  %158 = load i64, i64* @IB_USER_VERBS_CMD_POST_RECV, align 8
  %159 = shl i64 1, %158
  %160 = or i64 %157, %159
  %161 = load i64, i64* @IB_USER_VERBS_CMD_ATTACH_MCAST, align 8
  %162 = shl i64 1, %161
  %163 = or i64 %160, %162
  %164 = load i64, i64* @IB_USER_VERBS_CMD_DETACH_MCAST, align 8
  %165 = shl i64 1, %164
  %166 = or i64 %163, %165
  %167 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_SRQ, align 8
  %168 = shl i64 1, %167
  %169 = or i64 %166, %168
  %170 = load i64, i64* @IB_USER_VERBS_CMD_MODIFY_SRQ, align 8
  %171 = shl i64 1, %170
  %172 = or i64 %169, %171
  %173 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_SRQ, align 8
  %174 = shl i64 1, %173
  %175 = or i64 %172, %174
  %176 = load i64, i64* @IB_USER_VERBS_CMD_DESTROY_SRQ, align 8
  %177 = shl i64 1, %176
  %178 = or i64 %175, %177
  %179 = load i64, i64* @IB_USER_VERBS_CMD_POST_SRQ_RECV, align 8
  %180 = shl i64 1, %179
  %181 = or i64 %178, %180
  %182 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %183 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  store i64 %181, i64* %184, align 8
  %185 = load i32, i32* @RDMA_NODE_IB_CA, align 4
  %186 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %187 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 3
  store i32 %185, i32* %188, align 8
  %189 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %190 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %82
  %195 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %196 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 1
  store i32 1, i32* %197, align 8
  br label %198

198:                                              ; preds = %194, %82
  %199 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %200 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %199, i32 0, i32 0
  %201 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %202 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 2
  %204 = call i32 @dev_name(%struct.TYPE_5__* %203)
  %205 = call i32 @ib_register_device(%struct.TYPE_4__* %200, i32 %204)
  store i32 %205, i32* %4, align 4
  %206 = load i32, i32* %4, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %198
  %209 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %210 = call i32 @rvt_pr_err(%struct.rvt_dev_info* %209, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %217

211:                                              ; preds = %198
  %212 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %213 = call i32 @rvt_create_mad_agents(%struct.rvt_dev_info* %212)
  %214 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %215 = call i32 @rvt_pr_info(%struct.rvt_dev_info* %214, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %216 = load i32, i32* %4, align 4
  store i32 %216, i32* %2, align 4
  br label %227

217:                                              ; preds = %208
  %218 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %219 = call i32 @rvt_wss_exit(%struct.rvt_dev_info* %218)
  br label %220

220:                                              ; preds = %217, %67
  %221 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %222 = call i32 @rvt_mr_exit(%struct.rvt_dev_info* %221)
  br label %223

223:                                              ; preds = %220, %60
  %224 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %225 = call i32 @rvt_qp_exit(%struct.rvt_dev_info* %224)
  %226 = load i32, i32* %4, align 4
  store i32 %226, i32* %2, align 4
  br label %227

227:                                              ; preds = %223, %211, %42, %21, %8
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

declare dso_local i64 @check_support(%struct.rvt_dev_info*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @ib_set_device_ops(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @trace_rvt_dbg(%struct.rvt_dev_info*, i8*) #1

declare dso_local i32 @rvt_mmap_init(%struct.rvt_dev_info*) #1

declare dso_local i32 @rvt_driver_qp_init(%struct.rvt_dev_info*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @rvt_driver_srq_init(%struct.rvt_dev_info*) #1

declare dso_local i32 @rvt_driver_mcast_init(%struct.rvt_dev_info*) #1

declare dso_local i32 @rvt_driver_mr_init(%struct.rvt_dev_info*) #1

declare dso_local i32 @rvt_wss_init(%struct.rvt_dev_info*) #1

declare dso_local i32 @rvt_pr_err(%struct.rvt_dev_info*, i8*) #1

declare dso_local i32 @ib_register_device(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_5__*) #1

declare dso_local i32 @rvt_create_mad_agents(%struct.rvt_dev_info*) #1

declare dso_local i32 @rvt_pr_info(%struct.rvt_dev_info*, i8*) #1

declare dso_local i32 @rvt_wss_exit(%struct.rvt_dev_info*) #1

declare dso_local i32 @rvt_mr_exit(%struct.rvt_dev_info*) #1

declare dso_local i32 @rvt_qp_exit(%struct.rvt_dev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
