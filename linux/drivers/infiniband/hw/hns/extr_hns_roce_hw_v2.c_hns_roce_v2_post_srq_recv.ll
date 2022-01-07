; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_post_srq_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_post_srq_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_recv_wr = type { i32, i32, %struct.TYPE_2__*, %struct.ib_recv_wr* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.hns_roce_dev = type { i32 }
%struct.hns_roce_srq = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.hns_roce_v2_wqe_data_seg = type { i64, i8*, i8* }
%struct.hns_roce_v2_db = type { i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HNS_ROCE_V2_SRQ_DB = common dso_local global i32 0, align 4
@V2_DB_BYTE_4_CMD_S = common dso_local global i32 0, align 4
@V2_DB_BYTE_4_TAG_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_srq*, %struct.ib_recv_wr*, %struct.ib_recv_wr**)* @hns_roce_v2_post_srq_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_post_srq_recv(%struct.ib_srq* %0, %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %2) #0 {
  %4 = alloca %struct.ib_srq*, align 8
  %5 = alloca %struct.ib_recv_wr*, align 8
  %6 = alloca %struct.ib_recv_wr**, align 8
  %7 = alloca %struct.hns_roce_dev*, align 8
  %8 = alloca %struct.hns_roce_srq*, align 8
  %9 = alloca %struct.hns_roce_v2_wqe_data_seg*, align 8
  %10 = alloca %struct.hns_roce_v2_db, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ib_srq* %0, %struct.ib_srq** %4, align 8
  store %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %5, align 8
  store %struct.ib_recv_wr** %2, %struct.ib_recv_wr*** %6, align 8
  %18 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %19 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.hns_roce_dev* @to_hr_dev(i32 %20)
  store %struct.hns_roce_dev* %21, %struct.hns_roce_dev** %7, align 8
  %22 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %23 = call %struct.hns_roce_srq* @to_hr_srq(%struct.ib_srq* %22)
  store %struct.hns_roce_srq* %23, %struct.hns_roce_srq** %8, align 8
  store i32 0, i32* %12, align 4
  %24 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %8, align 8
  %25 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %24, i32 0, i32 5
  %26 = load i64, i64* %11, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %8, align 8
  %29 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %8, align 8
  %32 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, 1
  %35 = and i32 %30, %34
  store i32 %35, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %36

36:                                               ; preds = %188, %3
  %37 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %38 = icmp ne %struct.ib_recv_wr* %37, null
  br i1 %38, label %39, label %194

39:                                               ; preds = %36
  %40 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %41 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %8, align 8
  %44 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %42, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %39
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %12, align 4
  %53 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %54 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %53, %struct.ib_recv_wr** %54, align 8
  br label %194

55:                                               ; preds = %39
  %56 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %8, align 8
  %57 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %8, align 8
  %60 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %58, %61
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %55
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %12, align 4
  %69 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %70 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %69, %struct.ib_recv_wr** %70, align 8
  br label %194

71:                                               ; preds = %55
  %72 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %8, align 8
  %73 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %72, i32 0, i32 8
  %74 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %8, align 8
  %75 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @find_empty_entry(i32* %73, i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %71
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %12, align 4
  %83 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %84 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %83, %struct.ib_recv_wr** %84, align 8
  br label %194

85:                                               ; preds = %71
  %86 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %8, align 8
  %87 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %86, i32 0, i32 8
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @fill_idx_queue(i32* %87, i32 %88, i32 %89)
  %91 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %8, align 8
  %92 = load i32, i32* %13, align 4
  %93 = call i8* @get_srq_wqe(%struct.hns_roce_srq* %91, i32 %92)
  store i8* %93, i8** %14, align 8
  %94 = load i8*, i8** %14, align 8
  %95 = bitcast i8* %94 to %struct.hns_roce_v2_wqe_data_seg*
  store %struct.hns_roce_v2_wqe_data_seg* %95, %struct.hns_roce_v2_wqe_data_seg** %9, align 8
  store i32 0, i32* %17, align 4
  br label %96

96:                                               ; preds = %145, %85
  %97 = load i32, i32* %17, align 4
  %98 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %99 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %148

102:                                              ; preds = %96
  %103 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %104 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %103, i32 0, i32 2
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i32, i32* %17, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @cpu_to_le32(i32 %110)
  %112 = load %struct.hns_roce_v2_wqe_data_seg*, %struct.hns_roce_v2_wqe_data_seg** %9, align 8
  %113 = load i32, i32* %17, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.hns_roce_v2_wqe_data_seg, %struct.hns_roce_v2_wqe_data_seg* %112, i64 %114
  %116 = getelementptr inbounds %struct.hns_roce_v2_wqe_data_seg, %struct.hns_roce_v2_wqe_data_seg* %115, i32 0, i32 2
  store i8* %111, i8** %116, align 8
  %117 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %118 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %117, i32 0, i32 2
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = load i32, i32* %17, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @cpu_to_le32(i32 %124)
  %126 = load %struct.hns_roce_v2_wqe_data_seg*, %struct.hns_roce_v2_wqe_data_seg** %9, align 8
  %127 = load i32, i32* %17, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.hns_roce_v2_wqe_data_seg, %struct.hns_roce_v2_wqe_data_seg* %126, i64 %128
  %130 = getelementptr inbounds %struct.hns_roce_v2_wqe_data_seg, %struct.hns_roce_v2_wqe_data_seg* %129, i32 0, i32 1
  store i8* %125, i8** %130, align 8
  %131 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %132 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %131, i32 0, i32 2
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = load i32, i32* %17, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @cpu_to_le64(i32 %138)
  %140 = load %struct.hns_roce_v2_wqe_data_seg*, %struct.hns_roce_v2_wqe_data_seg** %9, align 8
  %141 = load i32, i32* %17, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.hns_roce_v2_wqe_data_seg, %struct.hns_roce_v2_wqe_data_seg* %140, i64 %142
  %144 = getelementptr inbounds %struct.hns_roce_v2_wqe_data_seg, %struct.hns_roce_v2_wqe_data_seg* %143, i32 0, i32 0
  store i64 %139, i64* %144, align 8
  br label %145

145:                                              ; preds = %102
  %146 = load i32, i32* %17, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %17, align 4
  br label %96

148:                                              ; preds = %96
  %149 = load i32, i32* %17, align 4
  %150 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %8, align 8
  %151 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %171

154:                                              ; preds = %148
  %155 = load %struct.hns_roce_v2_wqe_data_seg*, %struct.hns_roce_v2_wqe_data_seg** %9, align 8
  %156 = load i32, i32* %17, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.hns_roce_v2_wqe_data_seg, %struct.hns_roce_v2_wqe_data_seg* %155, i64 %157
  %159 = getelementptr inbounds %struct.hns_roce_v2_wqe_data_seg, %struct.hns_roce_v2_wqe_data_seg* %158, i32 0, i32 2
  store i8* null, i8** %159, align 8
  %160 = call i8* @cpu_to_le32(i32 256)
  %161 = load %struct.hns_roce_v2_wqe_data_seg*, %struct.hns_roce_v2_wqe_data_seg** %9, align 8
  %162 = load i32, i32* %17, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.hns_roce_v2_wqe_data_seg, %struct.hns_roce_v2_wqe_data_seg* %161, i64 %163
  %165 = getelementptr inbounds %struct.hns_roce_v2_wqe_data_seg, %struct.hns_roce_v2_wqe_data_seg* %164, i32 0, i32 1
  store i8* %160, i8** %165, align 8
  %166 = load %struct.hns_roce_v2_wqe_data_seg*, %struct.hns_roce_v2_wqe_data_seg** %9, align 8
  %167 = load i32, i32* %17, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.hns_roce_v2_wqe_data_seg, %struct.hns_roce_v2_wqe_data_seg* %166, i64 %168
  %170 = getelementptr inbounds %struct.hns_roce_v2_wqe_data_seg, %struct.hns_roce_v2_wqe_data_seg* %169, i32 0, i32 0
  store i64 0, i64* %170, align 8
  br label %171

171:                                              ; preds = %154, %148
  %172 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %173 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %8, align 8
  %176 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %175, i32 0, i32 7
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %13, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  store i32 %174, i32* %180, align 4
  %181 = load i32, i32* %16, align 4
  %182 = add nsw i32 %181, 1
  %183 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %8, align 8
  %184 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = sub nsw i32 %185, 1
  %187 = and i32 %182, %186
  store i32 %187, i32* %16, align 4
  br label %188

188:                                              ; preds = %171
  %189 = load i32, i32* %15, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %15, align 4
  %191 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %192 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %191, i32 0, i32 3
  %193 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %192, align 8
  store %struct.ib_recv_wr* %193, %struct.ib_recv_wr** %5, align 8
  br label %36

194:                                              ; preds = %80, %66, %50, %36
  %195 = load i32, i32* %15, align 4
  %196 = call i64 @likely(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %227

198:                                              ; preds = %194
  %199 = load i32, i32* %15, align 4
  %200 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %8, align 8
  %201 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = add nsw i32 %202, %199
  store i32 %203, i32* %201, align 8
  %204 = call i32 (...) @wmb()
  %205 = load i32, i32* @HNS_ROCE_V2_SRQ_DB, align 4
  %206 = load i32, i32* @V2_DB_BYTE_4_CMD_S, align 4
  %207 = shl i32 %205, %206
  %208 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %8, align 8
  %209 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @V2_DB_BYTE_4_TAG_M, align 4
  %212 = and i32 %210, %211
  %213 = or i32 %207, %212
  %214 = call i8* @cpu_to_le32(i32 %213)
  %215 = getelementptr inbounds %struct.hns_roce_v2_db, %struct.hns_roce_v2_db* %10, i32 0, i32 1
  store i8* %214, i8** %215, align 8
  %216 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %8, align 8
  %217 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i8* @cpu_to_le32(i32 %218)
  %220 = getelementptr inbounds %struct.hns_roce_v2_db, %struct.hns_roce_v2_db* %10, i32 0, i32 0
  store i8* %219, i8** %220, align 8
  %221 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %222 = bitcast %struct.hns_roce_v2_db* %10 to i32*
  %223 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %8, align 8
  %224 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @hns_roce_write64(%struct.hns_roce_dev* %221, i32* %222, i32 %225)
  br label %227

227:                                              ; preds = %198, %194
  %228 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %8, align 8
  %229 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %228, i32 0, i32 5
  %230 = load i64, i64* %11, align 8
  %231 = call i32 @spin_unlock_irqrestore(i32* %229, i64 %230)
  %232 = load i32, i32* %12, align 4
  ret i32 %232
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local %struct.hns_roce_srq* @to_hr_srq(%struct.ib_srq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @find_empty_entry(i32*, i32) #1

declare dso_local i32 @fill_idx_queue(i32*, i32, i32) #1

declare dso_local i8* @get_srq_wqe(%struct.hns_roce_srq*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @cpu_to_le64(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @hns_roce_write64(%struct.hns_roce_dev*, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
