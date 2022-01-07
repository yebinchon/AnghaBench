; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_qp.c_hns_roce_set_kernel_sq_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_qp.c_hns_roce_set_kernel_sq_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_5__, %struct.device* }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i32, i32 }
%struct.device = type { i32 }
%struct.ib_qp_cap = type { i64, i64, i64 }
%struct.hns_roce_qp = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"SQ WR or sge or inline data error!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"while setting kernel sq size, sq.wqe_cnt too large\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"set extend sge parameters fail\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, %struct.ib_qp_cap*, %struct.hns_roce_qp*)* @hns_roce_set_kernel_sq_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_set_kernel_sq_size(%struct.hns_roce_dev* %0, %struct.ib_qp_cap* %1, %struct.hns_roce_qp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca %struct.ib_qp_cap*, align 8
  %7 = alloca %struct.hns_roce_qp*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %5, align 8
  store %struct.ib_qp_cap* %1, %struct.ib_qp_cap** %6, align 8
  store %struct.hns_roce_qp* %2, %struct.hns_roce_qp** %7, align 8
  %13 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %14 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %13, i32 0, i32 1
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %6, align 8
  %17 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %20 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %18, %22
  br i1 %23, label %42, label %24

24:                                               ; preds = %3
  %25 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %6, align 8
  %26 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %29 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %27, %31
  br i1 %32, label %42, label %33

33:                                               ; preds = %24
  %34 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %6, align 8
  %35 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %38 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %36, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %33, %24, %3
  %43 = load %struct.device*, %struct.device** %8, align 8
  %44 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %237

47:                                               ; preds = %33
  %48 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %49 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ilog2(i32 %51)
  %53 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %54 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %57 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %47
  %62 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %6, align 8
  %63 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %66 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @max(i64 %64, i64 %68)
  store i64 %69, i64* %10, align 8
  br label %74

70:                                               ; preds = %47
  %71 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %6, align 8
  %72 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %10, align 8
  br label %74

74:                                               ; preds = %70, %61
  %75 = load i64, i64* %10, align 8
  %76 = call i8* @roundup_pow_of_two(i64 %75)
  %77 = ptrtoint i8* %76 to i32
  %78 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %79 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  %81 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %82 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %87 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %85, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %74
  %92 = load %struct.device*, %struct.device** %8, align 8
  %93 = call i32 @dev_err(%struct.device* %92, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %237

96:                                               ; preds = %74
  %97 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %6, align 8
  %98 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @max(i64 1, i64 %99)
  store i64 %100, i64* %10, align 8
  %101 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %102 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp sle i64 %104, 2
  br i1 %105, label %106, label %113

106:                                              ; preds = %96
  %107 = load i64, i64* %10, align 8
  %108 = call i8* @roundup_pow_of_two(i64 %107)
  %109 = ptrtoint i8* %108 to i64
  %110 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %111 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  store i64 %109, i64* %112, align 8
  br label %118

113:                                              ; preds = %96
  %114 = load i64, i64* %10, align 8
  %115 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %116 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  store i64 %114, i64* %117, align 8
  br label %118

118:                                              ; preds = %113, %106
  %119 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %120 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %121 = call i32 @set_extend_sge_param(%struct.hns_roce_dev* %119, %struct.hns_roce_qp* %120)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load %struct.device*, %struct.device** %8, align 8
  %126 = call i32 @dev_err(%struct.device* %125, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %127 = load i32, i32* %12, align 4
  store i32 %127, i32* %4, align 4
  br label %237

128:                                              ; preds = %118
  %129 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %130 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @PAGE_SHIFT, align 4
  %134 = add nsw i32 %132, %133
  %135 = shl i32 1, %134
  %136 = sext i32 %135 to i64
  store i64 %136, i64* %9, align 8
  %137 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %138 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 4
  store i64 0, i64* %139, align 8
  %140 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %141 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %145 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = shl i32 %143, %147
  %149 = load i64, i64* %9, align 8
  %150 = call i32 @HNS_ROCE_ALOGN_UP(i32 %148, i64 %149)
  store i32 %150, i32* %11, align 4
  %151 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %152 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp sgt i64 %154, 2
  br i1 %155, label %156, label %198

156:                                              ; preds = %128
  %157 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %158 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %198

162:                                              ; preds = %156
  %163 = load i64, i64* %9, align 8
  %164 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %165 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = shl i32 1, %167
  %169 = sext i32 %168 to i64
  %170 = sdiv i64 %163, %169
  %171 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %172 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = call i64 @max(i64 %170, i64 %175)
  %177 = trunc i64 %176 to i32
  %178 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %179 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  store i32 %177, i32* %180, align 4
  %181 = load i32, i32* %11, align 4
  %182 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %183 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 2
  store i32 %181, i32* %184, align 4
  %185 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %186 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %190 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = shl i32 %188, %192
  %194 = load i64, i64* %9, align 8
  %195 = call i32 @HNS_ROCE_ALOGN_UP(i32 %193, i64 %194)
  %196 = load i32, i32* %11, align 4
  %197 = add nsw i32 %196, %195
  store i32 %197, i32* %11, align 4
  br label %198

198:                                              ; preds = %162, %156, %128
  %199 = load i32, i32* %11, align 4
  %200 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %201 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  store i32 %199, i32* %202, align 8
  %203 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %204 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %208 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = shl i32 %206, %210
  %212 = load i64, i64* %9, align 8
  %213 = call i32 @HNS_ROCE_ALOGN_UP(i32 %211, i64 %212)
  %214 = load i32, i32* %11, align 4
  %215 = add nsw i32 %214, %213
  store i32 %215, i32* %11, align 4
  %216 = load i32, i32* %11, align 4
  %217 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %218 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %217, i32 0, i32 0
  store i32 %216, i32* %218, align 8
  %219 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %220 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = sext i32 %222 to i64
  %224 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %225 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 3
  store i64 %223, i64* %226, align 8
  %227 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %6, align 8
  %228 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %227, i32 0, i32 0
  store i64 %223, i64* %228, align 8
  %229 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %230 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %6, align 8
  %234 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %233, i32 0, i32 1
  store i64 %232, i64* %234, align 8
  %235 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %6, align 8
  %236 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %235, i32 0, i32 2
  store i64 0, i64* %236, align 8
  store i32 0, i32* %4, align 4
  br label %237

237:                                              ; preds = %198, %124, %91, %42
  %238 = load i32, i32* %4, align 4
  ret i32 %238
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i8* @roundup_pow_of_two(i64) #1

declare dso_local i32 @set_extend_sge_param(%struct.hns_roce_dev*, %struct.hns_roce_qp*) #1

declare dso_local i32 @HNS_ROCE_ALOGN_UP(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
