; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_alias_GUID.c_mlx4_ib_init_alias_guid_service.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_alias_GUID.c_mlx4_ib_init_alias_guid_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32, %struct.TYPE_10__, i32, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32, i32*, i32, %struct.TYPE_9__*, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_12__* }
%struct.TYPE_11__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 (%struct.TYPE_11__*, i32, i32, %union.ib_gid*)* }
%union.ib_gid = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@GUID_STATE_NEED_PORT_INIT = common dso_local global i32 0, align 4
@NUM_ALIAS_GUID_REC_IN_PORT = common dso_local global i32 0, align 4
@mlx4_ib_sm_guid_assign = common dso_local global i64 0, align 8
@NUM_ALIAS_GUID_PER_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"alias_guid%d\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@alias_guid_work = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"init_alias_guid_service: Failed. (ret:%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_init_alias_guid_service(%struct.mlx4_ib_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_ib_dev*, align 8
  %4 = alloca [15 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.ib_gid, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %10 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @mlx4_is_master(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %283

15:                                               ; preds = %1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kzalloc(i32 4, i32 %16)
  %18 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %19 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store i32* %17, i32** %21, align 8
  %22 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %23 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %15
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %283

31:                                               ; preds = %15
  %32 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %33 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @ib_sa_register_client(i32* %36)
  %38 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %39 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = call i32 @spin_lock_init(i32* %41)
  store i32 1, i32* %6, align 4
  br label %43

43:                                               ; preds = %64, %31
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %46 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sle i32 %44, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %43
  %50 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %51 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64 (%struct.TYPE_11__*, i32, i32, %union.ib_gid*)*, i64 (%struct.TYPE_11__*, i32, i32, %union.ib_gid*)** %53, align 8
  %55 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %56 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %55, i32 0, i32 3
  %57 = load i32, i32* %6, align 4
  %58 = call i64 %54(%struct.TYPE_11__* %56, i32 %57, i32 0, %union.ib_gid* %8)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %49
  %61 = load i32, i32* @EFAULT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %263

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %43

67:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %228, %67
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %71 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %231

74:                                               ; preds = %68
  %75 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %76 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i64 %81
  %83 = call i32 @memset(%struct.TYPE_12__* %82, i32 0, i32 4)
  %84 = load i32, i32* @GUID_STATE_NEED_PORT_INIT, align 4
  %85 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %86 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %84
  store i32 %95, i32* %93, align 8
  store i32 0, i32* %7, align 4
  br label %96

96:                                               ; preds = %117, %74
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @NUM_ALIAS_GUID_REC_IN_PORT, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %120

100:                                              ; preds = %96
  %101 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %102 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 5
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  %116 = call i32 @memset(%struct.TYPE_12__* %115, i32 255, i32 8)
  br label %117

117:                                              ; preds = %100
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %96

120:                                              ; preds = %96
  %121 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %122 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 4
  %130 = call i32 @INIT_LIST_HEAD(i32* %129)
  %131 = load i64, i64* @mlx4_ib_sm_guid_assign, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %150

133:                                              ; preds = %120
  store i32 1, i32* %7, align 4
  br label %134

134:                                              ; preds = %146, %133
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @NUM_ALIAS_GUID_PER_PORT, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %149

138:                                              ; preds = %134
  %139 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %140 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %143, 1
  %145 = call i32 @mlx4_set_admin_guid(i32 %141, i32 0, i32 %142, i32 %144)
  br label %146

146:                                              ; preds = %138
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %134

149:                                              ; preds = %134
  br label %150

150:                                              ; preds = %149, %120
  store i32 0, i32* %7, align 4
  br label %151

151:                                              ; preds = %161, %150
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* @NUM_ALIAS_GUID_REC_IN_PORT, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %151
  %156 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %157 = load i32, i32* %6, align 4
  %158 = add nsw i32 %157, 1
  %159 = load i32, i32* %7, align 4
  %160 = call i32 @invalidate_guid_record(%struct.mlx4_ib_dev* %156, i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %155
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %7, align 4
  br label %151

164:                                              ; preds = %151
  %165 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %166 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %169 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %171, align 8
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 3
  store %struct.TYPE_9__* %167, %struct.TYPE_9__** %176, align 8
  %177 = load i32, i32* %6, align 4
  %178 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %179 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %181, align 8
  %183 = load i32, i32* %6, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  store i32 %177, i32* %186, align 8
  %187 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %188 = load i32, i32* %6, align 4
  %189 = call i32 @snprintf(i8* %187, i32 15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %188)
  %190 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %191 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %192 = call i32* @alloc_ordered_workqueue(i8* %190, i32 %191)
  %193 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %194 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %196, align 8
  %198 = load i32, i32* %6, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 1
  store i32* %192, i32** %201, align 8
  %202 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %203 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %205, align 8
  %207 = load i32, i32* %6, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %216, label %213

213:                                              ; preds = %164
  %214 = load i32, i32* @ENOMEM, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %5, align 4
  br label %232

216:                                              ; preds = %164
  %217 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %218 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %220, align 8
  %222 = load i32, i32* %6, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 2
  %226 = load i32, i32* @alias_guid_work, align 4
  %227 = call i32 @INIT_DELAYED_WORK(i32* %225, i32 %226)
  br label %228

228:                                              ; preds = %216
  %229 = load i32, i32* %6, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %6, align 4
  br label %68

231:                                              ; preds = %68
  store i32 0, i32* %2, align 4
  br label %283

232:                                              ; preds = %213
  %233 = load i32, i32* %6, align 4
  %234 = add nsw i32 %233, -1
  store i32 %234, i32* %6, align 4
  br label %235

235:                                              ; preds = %259, %232
  %236 = load i32, i32* %6, align 4
  %237 = icmp sge i32 %236, 0
  br i1 %237, label %238, label %262

238:                                              ; preds = %235
  %239 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %240 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 1
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %242, align 8
  %244 = load i32, i32* %6, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = call i32 @destroy_workqueue(i32* %248)
  %250 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %251 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %253, align 8
  %255 = load i32, i32* %6, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 1
  store i32* null, i32** %258, align 8
  br label %259

259:                                              ; preds = %238
  %260 = load i32, i32* %6, align 4
  %261 = add nsw i32 %260, -1
  store i32 %261, i32* %6, align 4
  br label %235

262:                                              ; preds = %235
  br label %263

263:                                              ; preds = %262, %60
  %264 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %265 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 0
  %268 = load i32*, i32** %267, align 8
  %269 = call i32 @ib_sa_unregister_client(i32* %268)
  %270 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %271 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 0
  %274 = load i32*, i32** %273, align 8
  %275 = call i32 @kfree(i32* %274)
  %276 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %277 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 0
  store i32* null, i32** %279, align 8
  %280 = load i32, i32* %5, align 4
  %281 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %280)
  %282 = load i32, i32* %5, align 4
  store i32 %282, i32* %2, align 4
  br label %283

283:                                              ; preds = %263, %231, %28, %14
  %284 = load i32, i32* %2, align 4
  ret i32 %284
}

declare dso_local i32 @mlx4_is_master(i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @ib_sa_register_client(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mlx4_set_admin_guid(i32, i32, i32, i32) #1

declare dso_local i32 @invalidate_guid_record(%struct.mlx4_ib_dev*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32* @alloc_ordered_workqueue(i8*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @ib_sa_unregister_client(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
