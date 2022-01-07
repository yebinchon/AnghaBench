; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.md_cluster_info*, %struct.TYPE_2__, i32 }
%struct.md_cluster_info = type { i32, i64, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, %struct.mddev*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MD_CLUSTER_BEGIN_JOIN_CLUSTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%pU\00", align 1
@DLM_LSFL_FS = common dso_local global i32 0, align 4
@LVB_SIZE = common dso_local global i32 0, align 4
@md_ls_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"md-cluster: Slot allotted(%d) is greater than available slots(%d).\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@recv_daemon = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"cluster_recv\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"md-cluster: cannot allocate memory for recv_thread!\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"no-new-dev\00", align 1
@DLM_LOCK_EX = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [52 x i8] c"md-cluster: can't join cluster to avoid lock issue\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ack\00", align 1
@ack_bast = common dso_local global i32* null, align 8
@DLM_LOCK_CR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [54 x i8] c"md-cluster: failed to get a sync CR lock on ACK!(%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"md-cluster: failed to get a sync CR lock on no-new-dev!(%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"md-cluster: Joined cluster %s slot %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"bitmap%04d\00", align 1
@DLM_LOCK_PW = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [27 x i8] c"Failed to get bitmap lock\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"resync\00", align 1
@MD_CLUSTER_HOLDING_MUTEX_FOR_RECVD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i32)* @join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @join(%struct.mddev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.md_cluster_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [64 x i8], align 16
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.md_cluster_info* @kzalloc(i32 104, i32 %10)
  store %struct.md_cluster_info* %11, %struct.md_cluster_info** %6, align 8
  %12 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %13 = icmp ne %struct.md_cluster_info* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %272

17:                                               ; preds = %2
  %18 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %19 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %18, i32 0, i32 16
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %22 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %21, i32 0, i32 15
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %25 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %24, i32 0, i32 11
  %26 = call i32 @init_completion(i32* %25)
  %27 = load i32, i32* @MD_CLUSTER_BEGIN_JOIN_CLUSTER, align 4
  %28 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %29 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %28, i32 0, i32 10
  %30 = call i32 @set_bit(i32 %27, i32* %29)
  %31 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %32 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %31, i32 0, i32 14
  %33 = call i32 @init_waitqueue_head(i32* %32)
  %34 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %35 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %34, i32 0, i32 13
  %36 = call i32 @mutex_init(i32* %35)
  %37 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %38 = load %struct.mddev*, %struct.mddev** %4, align 8
  %39 = getelementptr inbounds %struct.mddev, %struct.mddev* %38, i32 0, i32 0
  store %struct.md_cluster_info* %37, %struct.md_cluster_info** %39, align 8
  %40 = load %struct.mddev*, %struct.mddev** %4, align 8
  %41 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %42 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %41, i32 0, i32 12
  store %struct.mddev* %40, %struct.mddev** %42, align 8
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %44 = call i32 @memset(i8* %43, i32 0, i32 64)
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %46 = load %struct.mddev*, %struct.mddev** %4, align 8
  %47 = getelementptr inbounds %struct.mddev, %struct.mddev* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @sprintf(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %51 = load %struct.mddev*, %struct.mddev** %4, align 8
  %52 = getelementptr inbounds %struct.mddev, %struct.mddev* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @DLM_LSFL_FS, align 4
  %56 = load i32, i32* @LVB_SIZE, align 4
  %57 = load %struct.mddev*, %struct.mddev** %4, align 8
  %58 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %59 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %58, i32 0, i32 1
  %60 = call i32 @dlm_new_lockspace(i8* %50, i32 %54, i32 %55, i32 %56, i32* @md_ls_ops, %struct.mddev* %57, i32* %8, i64* %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %17
  br label %222

64:                                               ; preds = %17
  %65 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %66 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %65, i32 0, i32 11
  %67 = call i32 @wait_for_completion(i32* %66)
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %70 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %64
  %74 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %75 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load i32, i32* @ERANGE, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %7, align 4
  br label %222

81:                                               ; preds = %64
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* @recv_daemon, align 4
  %85 = load %struct.mddev*, %struct.mddev** %4, align 8
  %86 = call i32 @md_register_thread(i32 %84, %struct.mddev* %85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %87 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %88 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %87, i32 0, i32 8
  store i32 %86, i32* %88, align 8
  %89 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %90 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %81
  %94 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  br label %222

95:                                               ; preds = %81
  %96 = load %struct.mddev*, %struct.mddev** %4, align 8
  %97 = call i8* @lockres_init(%struct.mddev* %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 1)
  %98 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %99 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %98, i32 0, i32 7
  store i8* %97, i8** %99, align 8
  %100 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %101 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %100, i32 0, i32 7
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %95
  br label %222

105:                                              ; preds = %95
  %106 = load %struct.mddev*, %struct.mddev** %4, align 8
  %107 = call i8* @lockres_init(%struct.mddev* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 0)
  %108 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %109 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %108, i32 0, i32 6
  store i8* %107, i8** %109, align 8
  %110 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %111 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %110, i32 0, i32 6
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %105
  br label %222

115:                                              ; preds = %105
  %116 = load %struct.mddev*, %struct.mddev** %4, align 8
  %117 = call i8* @lockres_init(%struct.mddev* %116, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* null, i32 0)
  %118 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %119 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %118, i32 0, i32 4
  store i8* %117, i8** %119, align 8
  %120 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %121 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %120, i32 0, i32 4
  %122 = load i8*, i8** %121, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %115
  br label %222

125:                                              ; preds = %115
  %126 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %127 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %126, i32 0, i32 6
  %128 = load i8*, i8** %127, align 8
  %129 = load i32, i32* @DLM_LOCK_EX, align 4
  %130 = call i32 @dlm_lock_sync(i8* %128, i32 %129)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %125
  %134 = load i32, i32* @EAGAIN, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %7, align 4
  %136 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  br label %222

137:                                              ; preds = %125
  %138 = load %struct.mddev*, %struct.mddev** %4, align 8
  %139 = load i32*, i32** @ack_bast, align 8
  %140 = call i8* @lockres_init(%struct.mddev* %138, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32* %139, i32 0)
  %141 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %142 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %141, i32 0, i32 5
  store i8* %140, i8** %142, align 8
  %143 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %144 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %143, i32 0, i32 5
  %145 = load i8*, i8** %144, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %137
  %148 = load i32, i32* @ENOMEM, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %7, align 4
  br label %222

150:                                              ; preds = %137
  %151 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %152 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %151, i32 0, i32 5
  %153 = load i8*, i8** %152, align 8
  %154 = load i32, i32* @DLM_LOCK_CR, align 4
  %155 = call i32 @dlm_lock_sync(i8* %153, i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %150
  %158 = load i32, i32* %7, align 4
  %159 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 %158)
  br label %160

160:                                              ; preds = %157, %150
  %161 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %162 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %161, i32 0, i32 6
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @dlm_unlock_sync(i8* %163)
  %165 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %166 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %165, i32 0, i32 4
  %167 = load i8*, i8** %166, align 8
  %168 = load i32, i32* @DLM_LOCK_CR, align 4
  %169 = call i32 @dlm_lock_sync(i8* %167, i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %160
  %172 = load i32, i32* %7, align 4
  %173 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %171, %160
  %175 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %176 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %177 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i8* %175, i32 %178)
  %180 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %181 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %182 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = sub nsw i32 %183, 1
  %185 = call i32 @snprintf(i8* %180, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 %184)
  %186 = load %struct.mddev*, %struct.mddev** %4, align 8
  %187 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %188 = call i8* @lockres_init(%struct.mddev* %186, i8* %187, i32* null, i32 1)
  %189 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %190 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %189, i32 0, i32 2
  store i8* %188, i8** %190, align 8
  %191 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %192 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %191, i32 0, i32 2
  %193 = load i8*, i8** %192, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %198, label %195

195:                                              ; preds = %174
  %196 = load i32, i32* @ENOMEM, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %7, align 4
  br label %222

198:                                              ; preds = %174
  %199 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %200 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %199, i32 0, i32 2
  %201 = load i8*, i8** %200, align 8
  %202 = load i32, i32* @DLM_LOCK_PW, align 4
  %203 = call i32 @dlm_lock_sync(i8* %201, i32 %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %198
  %206 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  %207 = load i32, i32* @EINVAL, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %7, align 4
  br label %222

209:                                              ; preds = %198
  %210 = load %struct.mddev*, %struct.mddev** %4, align 8
  %211 = call i8* @lockres_init(%struct.mddev* %210, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32* null, i32 0)
  %212 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %213 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %212, i32 0, i32 3
  store i8* %211, i8** %213, align 8
  %214 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %215 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %214, i32 0, i32 3
  %216 = load i8*, i8** %215, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %221, label %218

218:                                              ; preds = %209
  %219 = load i32, i32* @ENOMEM, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %7, align 4
  br label %222

221:                                              ; preds = %209
  store i32 0, i32* %3, align 4
  br label %272

222:                                              ; preds = %218, %205, %195, %147, %133, %124, %114, %104, %93, %73, %63
  %223 = load i32, i32* @MD_CLUSTER_HOLDING_MUTEX_FOR_RECVD, align 4
  %224 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %225 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %224, i32 0, i32 10
  %226 = call i32 @set_bit(i32 %223, i32* %225)
  %227 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %228 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %227, i32 0, i32 9
  %229 = call i32 @md_unregister_thread(i32* %228)
  %230 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %231 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %230, i32 0, i32 8
  %232 = call i32 @md_unregister_thread(i32* %231)
  %233 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %234 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %233, i32 0, i32 7
  %235 = load i8*, i8** %234, align 8
  %236 = call i32 @lockres_free(i8* %235)
  %237 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %238 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %237, i32 0, i32 6
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 @lockres_free(i8* %239)
  %241 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %242 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %241, i32 0, i32 5
  %243 = load i8*, i8** %242, align 8
  %244 = call i32 @lockres_free(i8* %243)
  %245 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %246 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %245, i32 0, i32 4
  %247 = load i8*, i8** %246, align 8
  %248 = call i32 @lockres_free(i8* %247)
  %249 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %250 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %249, i32 0, i32 3
  %251 = load i8*, i8** %250, align 8
  %252 = call i32 @lockres_free(i8* %251)
  %253 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %254 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %253, i32 0, i32 2
  %255 = load i8*, i8** %254, align 8
  %256 = call i32 @lockres_free(i8* %255)
  %257 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %258 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %266

261:                                              ; preds = %222
  %262 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %263 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = call i32 @dlm_release_lockspace(i64 %264, i32 2)
  br label %266

266:                                              ; preds = %261, %222
  %267 = load %struct.mddev*, %struct.mddev** %4, align 8
  %268 = getelementptr inbounds %struct.mddev, %struct.mddev* %267, i32 0, i32 0
  store %struct.md_cluster_info* null, %struct.md_cluster_info** %268, align 8
  %269 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %270 = call i32 @kfree(%struct.md_cluster_info* %269)
  %271 = load i32, i32* %7, align 4
  store i32 %271, i32* %3, align 4
  br label %272

272:                                              ; preds = %266, %221, %14
  %273 = load i32, i32* %3, align 4
  ret i32 %273
}

declare dso_local %struct.md_cluster_info* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @dlm_new_lockspace(i8*, i32, i32, i32, i32*, %struct.mddev*, i32*, i64*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @md_register_thread(i32, %struct.mddev*, i8*) #1

declare dso_local i8* @lockres_init(%struct.mddev*, i8*, i32*, i32) #1

declare dso_local i32 @dlm_lock_sync(i8*, i32) #1

declare dso_local i32 @dlm_unlock_sync(i8*) #1

declare dso_local i32 @pr_info(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @md_unregister_thread(i32*) #1

declare dso_local i32 @lockres_free(i8*) #1

declare dso_local i32 @dlm_release_lockspace(i64, i32) #1

declare dso_local i32 @kfree(%struct.md_cluster_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
