; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_mcg.c_mthca_multicast_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_mcg.c_mthca_multicast_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, i32 }
%union.ib_gid = type { i32 }
%struct.mthca_dev = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mthca_mailbox = type { %struct.mthca_mgm* }
%struct.mthca_mgm = type { i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"MGID %pI6 not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MTHCA_QP_PER_MGM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"QP %06x not found in MGM\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"WRITE_MGM returned %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"READ_MGM returned %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_multicast_detach(%struct.ib_qp* %0, %union.ib_gid* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %union.ib_gid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mthca_dev*, align 8
  %9 = alloca %struct.mthca_mailbox*, align 8
  %10 = alloca %struct.mthca_mgm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %union.ib_gid* %1, %union.ib_gid** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %20 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.mthca_dev* @to_mdev(i32 %21)
  store %struct.mthca_dev* %22, %struct.mthca_dev** %8, align 8
  %23 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev* %23, i32 %24)
  store %struct.mthca_mailbox* %25, %struct.mthca_mailbox** %9, align 8
  %26 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %9, align 8
  %27 = call i64 @IS_ERR(%struct.mthca_mailbox* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %9, align 8
  %31 = call i32 @PTR_ERR(%struct.mthca_mailbox* %30)
  store i32 %31, i32* %4, align 4
  br label %257

32:                                               ; preds = %3
  %33 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %9, align 8
  %34 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %33, i32 0, i32 0
  %35 = load %struct.mthca_mgm*, %struct.mthca_mgm** %34, align 8
  store %struct.mthca_mgm* %35, %struct.mthca_mgm** %10, align 8
  %36 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %37 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %41 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %42 = bitcast %union.ib_gid* %41 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %9, align 8
  %45 = call i32 @find_mgm(%struct.mthca_dev* %40, i32 %43, %struct.mthca_mailbox* %44, i32* %11, i32* %12, i32* %13)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %32
  br label %248

49:                                               ; preds = %32
  %50 = load i32, i32* %13, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %54 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %55 = bitcast %union.ib_gid* %54 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mthca_err(%struct.mthca_dev* %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %16, align 4
  br label %248

60:                                               ; preds = %49
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %61

61:                                               ; preds = %94, %60
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @MTHCA_QP_PER_MGM, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %97

65:                                               ; preds = %61
  %66 = load %struct.mthca_mgm*, %struct.mthca_mgm** %10, align 8
  %67 = getelementptr inbounds %struct.mthca_mgm, %struct.mthca_mgm* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %74 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, -2147483648
  %77 = call i32 @cpu_to_be32(i32 %76)
  %78 = icmp eq i32 %72, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %65
  %80 = load i32, i32* %14, align 4
  store i32 %80, i32* %15, align 4
  br label %81

81:                                               ; preds = %79, %65
  %82 = load %struct.mthca_mgm*, %struct.mthca_mgm** %10, align 8
  %83 = getelementptr inbounds %struct.mthca_mgm, %struct.mthca_mgm* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @cpu_to_be32(i32 -2147483648)
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %81
  br label %97

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %14, align 4
  br label %61

97:                                               ; preds = %92, %61
  %98 = load i32, i32* %15, align 4
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %102 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %103 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @mthca_err(%struct.mthca_dev* %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %16, align 4
  br label %248

108:                                              ; preds = %97
  %109 = load %struct.mthca_mgm*, %struct.mthca_mgm** %10, align 8
  %110 = getelementptr inbounds %struct.mthca_mgm, %struct.mthca_mgm* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.mthca_mgm*, %struct.mthca_mgm** %10, align 8
  %118 = getelementptr inbounds %struct.mthca_mgm, %struct.mthca_mgm* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %116, i32* %122, align 4
  %123 = load %struct.mthca_mgm*, %struct.mthca_mgm** %10, align 8
  %124 = getelementptr inbounds %struct.mthca_mgm, %struct.mthca_mgm* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  store i32 0, i32* %129, align 4
  %130 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %131 = load i32, i32* %13, align 4
  %132 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %9, align 8
  %133 = call i32 @mthca_WRITE_MGM(%struct.mthca_dev* %130, i32 %131, %struct.mthca_mailbox* %132)
  store i32 %133, i32* %16, align 4
  %134 = load i32, i32* %16, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %108
  %137 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %138 = load i32, i32* %16, align 4
  %139 = call i32 @mthca_err(%struct.mthca_dev* %137, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  br label %248

140:                                              ; preds = %108
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %141, 1
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  br label %248

144:                                              ; preds = %140
  %145 = load i32, i32* %12, align 4
  %146 = icmp eq i32 %145, -1
  br i1 %146, label %147, label %201

147:                                              ; preds = %144
  %148 = load %struct.mthca_mgm*, %struct.mthca_mgm** %10, align 8
  %149 = getelementptr inbounds %struct.mthca_mgm, %struct.mthca_mgm* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @be32_to_cpu(i32 %150)
  %152 = ashr i32 %151, 6
  store i32 %152, i32* %17, align 4
  %153 = load i32, i32* %17, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %167

155:                                              ; preds = %147
  %156 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %157 = load i32, i32* %17, align 4
  %158 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %9, align 8
  %159 = call i32 @mthca_READ_MGM(%struct.mthca_dev* %156, i32 %157, %struct.mthca_mailbox* %158)
  store i32 %159, i32* %16, align 4
  %160 = load i32, i32* %16, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %155
  %163 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %164 = load i32, i32* %16, align 4
  %165 = call i32 @mthca_err(%struct.mthca_dev* %163, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %164)
  br label %248

166:                                              ; preds = %155
  br label %172

167:                                              ; preds = %147
  %168 = load %struct.mthca_mgm*, %struct.mthca_mgm** %10, align 8
  %169 = getelementptr inbounds %struct.mthca_mgm, %struct.mthca_mgm* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @memset(i32 %170, i32 0, i32 16)
  br label %172

172:                                              ; preds = %167, %166
  %173 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %174 = load i32, i32* %13, align 4
  %175 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %9, align 8
  %176 = call i32 @mthca_WRITE_MGM(%struct.mthca_dev* %173, i32 %174, %struct.mthca_mailbox* %175)
  store i32 %176, i32* %16, align 4
  %177 = load i32, i32* %16, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %172
  %180 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %181 = load i32, i32* %16, align 4
  %182 = call i32 @mthca_err(%struct.mthca_dev* %180, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %181)
  br label %248

183:                                              ; preds = %172
  %184 = load i32, i32* %17, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %200

186:                                              ; preds = %183
  %187 = load i32, i32* %17, align 4
  %188 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %189 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = icmp slt i32 %187, %191
  %193 = zext i1 %192 to i32
  %194 = call i32 @BUG_ON(i32 %193)
  %195 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %196 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 1
  %198 = load i32, i32* %17, align 4
  %199 = call i32 @mthca_free(i32* %197, i32 %198)
  br label %200

200:                                              ; preds = %186, %183
  br label %247

201:                                              ; preds = %144
  %202 = load %struct.mthca_mgm*, %struct.mthca_mgm** %10, align 8
  %203 = getelementptr inbounds %struct.mthca_mgm, %struct.mthca_mgm* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @be32_to_cpu(i32 %204)
  %206 = ashr i32 %205, 6
  store i32 %206, i32* %18, align 4
  %207 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %208 = load i32, i32* %12, align 4
  %209 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %9, align 8
  %210 = call i32 @mthca_READ_MGM(%struct.mthca_dev* %207, i32 %208, %struct.mthca_mailbox* %209)
  store i32 %210, i32* %16, align 4
  %211 = load i32, i32* %16, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %201
  %214 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %215 = load i32, i32* %16, align 4
  %216 = call i32 @mthca_err(%struct.mthca_dev* %214, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %215)
  br label %248

217:                                              ; preds = %201
  %218 = load i32, i32* %18, align 4
  %219 = shl i32 %218, 6
  %220 = call i32 @cpu_to_be32(i32 %219)
  %221 = load %struct.mthca_mgm*, %struct.mthca_mgm** %10, align 8
  %222 = getelementptr inbounds %struct.mthca_mgm, %struct.mthca_mgm* %221, i32 0, i32 1
  store i32 %220, i32* %222, align 8
  %223 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %224 = load i32, i32* %12, align 4
  %225 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %9, align 8
  %226 = call i32 @mthca_WRITE_MGM(%struct.mthca_dev* %223, i32 %224, %struct.mthca_mailbox* %225)
  store i32 %226, i32* %16, align 4
  %227 = load i32, i32* %16, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %217
  %230 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %231 = load i32, i32* %16, align 4
  %232 = call i32 @mthca_err(%struct.mthca_dev* %230, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %231)
  br label %248

233:                                              ; preds = %217
  %234 = load i32, i32* %13, align 4
  %235 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %236 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = icmp slt i32 %234, %238
  %240 = zext i1 %239 to i32
  %241 = call i32 @BUG_ON(i32 %240)
  %242 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %243 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 1
  %245 = load i32, i32* %13, align 4
  %246 = call i32 @mthca_free(i32* %244, i32 %245)
  br label %247

247:                                              ; preds = %233, %200
  br label %248

248:                                              ; preds = %247, %229, %213, %179, %162, %143, %136, %100, %52, %48
  %249 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %250 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 0
  %252 = call i32 @mutex_unlock(i32* %251)
  %253 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %254 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %9, align 8
  %255 = call i32 @mthca_free_mailbox(%struct.mthca_dev* %253, %struct.mthca_mailbox* %254)
  %256 = load i32, i32* %16, align 4
  store i32 %256, i32* %4, align 4
  br label %257

257:                                              ; preds = %248, %29
  %258 = load i32, i32* %4, align 4
  ret i32 %258
}

declare dso_local %struct.mthca_dev* @to_mdev(i32) #1

declare dso_local %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mthca_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mthca_mailbox*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @find_mgm(%struct.mthca_dev*, i32, %struct.mthca_mailbox*, i32*, i32*, i32*) #1

declare dso_local i32 @mthca_err(%struct.mthca_dev*, i8*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mthca_WRITE_MGM(%struct.mthca_dev*, i32, %struct.mthca_mailbox*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @mthca_READ_MGM(%struct.mthca_dev*, i32, %struct.mthca_mailbox*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mthca_free(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mthca_free_mailbox(%struct.mthca_dev*, %struct.mthca_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
