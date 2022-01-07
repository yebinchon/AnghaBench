; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_set_kernel_sq_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_set_kernel_sq_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.ib_qp_cap = type { i32, i32, i32 }
%struct.mlx4_ib_qp = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@MLX4_IB_SQ_MAX_SPARE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX4_IB_QPT_SMI = common dso_local global i32 0, align 4
@MLX4_IB_QPT_GSI = common dso_local global i32 0, align 4
@MLX4_IB_QPT_PROXY_SMI_OWNER = common dso_local global i32 0, align 4
@MLX4_IB_QPT_TUN_SMI_OWNER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_dev*, %struct.ib_qp_cap*, i32, %struct.mlx4_ib_qp*)* @set_kernel_sq_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_kernel_sq_size(%struct.mlx4_ib_dev* %0, %struct.ib_qp_cap* %1, i32 %2, %struct.mlx4_ib_qp* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_ib_dev*, align 8
  %7 = alloca %struct.ib_qp_cap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_ib_qp*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %6, align 8
  store %struct.ib_qp_cap* %1, %struct.ib_qp_cap** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.mlx4_ib_qp* %3, %struct.mlx4_ib_qp** %9, align 8
  %11 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %7, align 8
  %12 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %15 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MLX4_IB_SQ_MAX_SPARE, align 4
  %21 = sub nsw i32 %19, %20
  %22 = icmp sgt i32 %13, %21
  br i1 %22, label %61, label %23

23:                                               ; preds = %4
  %24 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %7, align 8
  %25 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %28 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %34 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @min(i32 %32, i32 %38)
  %40 = icmp sgt i32 %26, %39
  br i1 %40, label %61, label %41

41:                                               ; preds = %23
  %42 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %7, align 8
  %43 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %47 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @send_wqe_overhead(i32 %45, i32 %48)
  %50 = add nsw i32 %44, %49
  %51 = sext i32 %50 to i64
  %52 = add i64 %51, 4
  %53 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %54 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp ugt i64 %52, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %41, %23, %4
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %272

64:                                               ; preds = %41
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @MLX4_IB_QPT_SMI, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %79, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @MLX4_IB_QPT_GSI, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %79, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @MLX4_IB_QPT_PROXY_SMI_OWNER, align 4
  %75 = load i32, i32* @MLX4_IB_QPT_TUN_SMI_OWNER, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %72, %68, %64
  %80 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %7, align 8
  %81 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 2
  %84 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %85 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp sgt i32 %83, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %79
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %272

94:                                               ; preds = %79, %72
  %95 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %7, align 8
  %96 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = mul i64 %98, 4
  %100 = trunc i64 %99 to i32
  %101 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %7, align 8
  %102 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = add i64 %104, 4
  %106 = trunc i64 %105 to i32
  %107 = call i32 @max(i32 %100, i32 %106)
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %110 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @send_wqe_overhead(i32 %108, i32 %111)
  %113 = add nsw i32 %107, %112
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %116 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %115, i32 0, i32 0
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = icmp sgt i32 %114, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %94
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %5, align 4
  br label %272

125:                                              ; preds = %94
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @roundup_pow_of_two(i32 %126)
  %128 = call i32 @ilog2(i32 %127)
  %129 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %130 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  store i32 %128, i32* %131, align 4
  %132 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %133 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @MLX4_IB_SQ_HEADROOM(i32 %135)
  %137 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %138 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 4
  %139 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %7, align 8
  %140 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %143 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %141, %144
  %146 = call i32 @roundup_pow_of_two(i32 %145)
  %147 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %148 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  store i32 %146, i32* %149, align 4
  %150 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %151 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %150, i32 0, i32 0
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %157 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = shl i32 1, %159
  %161 = call i32 @min(i32 %155, i32 %160)
  %162 = load i32, i32* %8, align 4
  %163 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %164 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @send_wqe_overhead(i32 %162, i32 %165)
  %167 = sub nsw i32 %161, %166
  %168 = sext i32 %167 to i64
  %169 = udiv i64 %168, 4
  %170 = trunc i64 %169 to i32
  %171 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %172 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 2
  store i32 %170, i32* %173, align 4
  %174 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %175 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %179 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = shl i32 %177, %181
  %183 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %184 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %188 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = shl i32 %186, %190
  %192 = add nsw i32 %182, %191
  %193 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %194 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 4
  %195 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %196 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %200 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp sgt i32 %198, %202
  br i1 %203, label %204, label %220

204:                                              ; preds = %125
  %205 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %206 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 2
  store i32 0, i32* %207, align 4
  %208 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %209 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %208, i32 0, i32 3
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %213 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = shl i32 %211, %215
  %217 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %218 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 3
  store i32 %216, i32* %219, align 4
  br label %236

220:                                              ; preds = %125
  %221 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %222 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %226 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = shl i32 %224, %228
  %230 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %231 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 2
  store i32 %229, i32* %232, align 4
  %233 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %234 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 3
  store i32 0, i32* %235, align 4
  br label %236

236:                                              ; preds = %220, %204
  %237 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %238 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %242 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = sub nsw i32 %240, %243
  %245 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %246 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 4
  store i32 %244, i32* %247, align 4
  %248 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %7, align 8
  %249 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %248, i32 0, i32 0
  store i32 %244, i32* %249, align 4
  %250 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %251 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %255 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %254, i32 0, i32 0
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %261 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %260, i32 0, i32 0
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @min(i32 %259, i32 %265)
  %267 = call i32 @min(i32 %253, i32 %266)
  %268 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %7, align 8
  %269 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %268, i32 0, i32 1
  store i32 %267, i32* %269, align 4
  %270 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %7, align 8
  %271 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %270, i32 0, i32 2
  store i32 0, i32* %271, align 4
  store i32 0, i32* %5, align 4
  br label %272

272:                                              ; preds = %236, %122, %91, %61
  %273 = load i32, i32* %5, align 4
  ret i32 %273
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @send_wqe_overhead(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @MLX4_IB_SQ_HEADROOM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
