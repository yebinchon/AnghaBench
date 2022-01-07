; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_ib_resize_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_ib_resize_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32, i64, i32 }
%struct.ib_udata = type { i32 }
%struct.mlx4_ib_dev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mlx4_ib_cq = type { i32, i32*, %struct.TYPE_9__*, i32, %struct.TYPE_7__, %struct.mlx4_ib_cq_buf, i32*, i32 }
%struct.TYPE_9__ = type { i32, %struct.mlx4_ib_cq_buf }
%struct.TYPE_7__ = type { i32 }
%struct.mlx4_ib_cq_buf = type { %struct.mlx4_mtt }
%struct.mlx4_mtt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_resize_cq(%struct.ib_cq* %0, i32 %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_udata*, align 8
  %7 = alloca %struct.mlx4_ib_dev*, align 8
  %8 = alloca %struct.mlx4_ib_cq*, align 8
  %9 = alloca %struct.mlx4_mtt, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx4_ib_cq_buf, align 4
  %13 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_udata* %2, %struct.ib_udata** %6, align 8
  %14 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %15 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.mlx4_ib_dev* @to_mdev(i32 %16)
  store %struct.mlx4_ib_dev* %17, %struct.mlx4_ib_dev** %7, align 8
  %18 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %19 = call %struct.mlx4_ib_cq* @to_mcq(%struct.ib_cq* %18)
  store %struct.mlx4_ib_cq* %19, %struct.mlx4_ib_cq** %8, align 8
  %20 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %21 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %34, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %28 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %26, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25, %3
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %11, align 4
  br label %251

37:                                               ; preds = %25
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i32 @roundup_pow_of_two(i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %43 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  %46 = icmp eq i32 %41, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %251

48:                                               ; preds = %37
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %51 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  %57 = icmp sgt i32 %49, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %11, align 4
  br label %251

61:                                               ; preds = %48
  %62 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %63 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %68 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.ib_udata*, %struct.ib_udata** %6, align 8
  %71 = call i32 @mlx4_alloc_resize_umem(%struct.mlx4_ib_dev* %67, %struct.mlx4_ib_cq* %68, i32 %69, %struct.ib_udata* %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %251

75:                                               ; preds = %66
  br label %95

76:                                               ; preds = %61
  %77 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %78 = call i32 @mlx4_ib_get_outstanding_cqes(%struct.mlx4_ib_cq* %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %11, align 4
  br label %251

86:                                               ; preds = %76
  %87 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %88 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @mlx4_alloc_resize_buf(%struct.mlx4_ib_dev* %87, %struct.mlx4_ib_cq* %88, i32 %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %251

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %94, %75
  %96 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %97 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %97, i32 0, i32 0
  %99 = bitcast %struct.mlx4_mtt* %9 to i8*
  %100 = bitcast %struct.mlx4_mtt* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %99, i8* align 8 %100, i64 4, i1 false)
  %101 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %102 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %101, i32 0, i32 0
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %105 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %104, i32 0, i32 7
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %108 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %107, i32 0, i32 2
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %110, i32 0, i32 0
  %112 = call i32 @mlx4_cq_resize(%struct.TYPE_8__* %103, i32* %105, i32 %106, %struct.mlx4_mtt* %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %95
  br label %212

116:                                              ; preds = %95
  %117 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %118 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %117, i32 0, i32 0
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = call i32 @mlx4_mtt_cleanup(%struct.TYPE_8__* %119, %struct.mlx4_mtt* %9)
  %121 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %122 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %159

125:                                              ; preds = %116
  %126 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %127 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %126, i32 0, i32 5
  %128 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %129 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %128, i32 0, i32 2
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = bitcast %struct.mlx4_ib_cq_buf* %127 to i8*
  %133 = bitcast %struct.mlx4_ib_cq_buf* %131 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %132, i8* align 4 %133, i64 4, i1 false)
  %134 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %135 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %134, i32 0, i32 2
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %140 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  store i32 %138, i32* %141, align 4
  %142 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %143 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %142, i32 0, i32 6
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @ib_umem_release(i32* %144)
  %146 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %147 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %150 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %149, i32 0, i32 6
  store i32* %148, i32** %150, align 8
  %151 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %152 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %151, i32 0, i32 2
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %152, align 8
  %154 = call i32 @kfree(%struct.TYPE_9__* %153)
  %155 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %156 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %155, i32 0, i32 2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %156, align 8
  %157 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %158 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %157, i32 0, i32 1
  store i32* null, i32** %158, align 8
  br label %211

159:                                              ; preds = %116
  store i32 0, i32* %13, align 4
  %160 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %161 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %160, i32 0, i32 3
  %162 = call i32 @spin_lock_irq(i32* %161)
  %163 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %164 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %163, i32 0, i32 2
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %164, align 8
  %166 = icmp ne %struct.TYPE_9__* %165, null
  br i1 %166, label %167, label %200

167:                                              ; preds = %159
  %168 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %169 = call i32 @mlx4_ib_cq_resize_copy_cqes(%struct.mlx4_ib_cq* %168)
  %170 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %171 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %170, i32 0, i32 5
  %172 = bitcast %struct.mlx4_ib_cq_buf* %12 to i8*
  %173 = bitcast %struct.mlx4_ib_cq_buf* %171 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %172, i8* align 8 %173, i64 4, i1 false)
  %174 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %175 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %13, align 4
  %178 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %179 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %178, i32 0, i32 5
  %180 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %181 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %180, i32 0, i32 2
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 1
  %184 = bitcast %struct.mlx4_ib_cq_buf* %179 to i8*
  %185 = bitcast %struct.mlx4_ib_cq_buf* %183 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %184, i8* align 4 %185, i64 4, i1 false)
  %186 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %187 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %186, i32 0, i32 2
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %192 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  store i32 %190, i32* %193, align 4
  %194 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %195 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %194, i32 0, i32 2
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %195, align 8
  %197 = call i32 @kfree(%struct.TYPE_9__* %196)
  %198 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %199 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %198, i32 0, i32 2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %199, align 8
  br label %200

200:                                              ; preds = %167, %159
  %201 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %202 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %201, i32 0, i32 3
  %203 = call i32 @spin_unlock_irq(i32* %202)
  %204 = load i32, i32* %13, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %200
  %207 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %208 = load i32, i32* %13, align 4
  %209 = call i32 @mlx4_ib_free_cq_buf(%struct.mlx4_ib_dev* %207, %struct.mlx4_ib_cq_buf* %12, i32 %208)
  br label %210

210:                                              ; preds = %206, %200
  br label %211

211:                                              ; preds = %210, %125
  br label %251

212:                                              ; preds = %115
  %213 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %214 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %213, i32 0, i32 0
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %214, align 8
  %216 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %217 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %216, i32 0, i32 2
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %219, i32 0, i32 0
  %221 = call i32 @mlx4_mtt_cleanup(%struct.TYPE_8__* %215, %struct.mlx4_mtt* %220)
  %222 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %223 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %238, label %226

226:                                              ; preds = %212
  %227 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %228 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %229 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %228, i32 0, i32 2
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 1
  %232 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %233 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %232, i32 0, i32 2
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @mlx4_ib_free_cq_buf(%struct.mlx4_ib_dev* %227, %struct.mlx4_ib_cq_buf* %231, i32 %236)
  br label %238

238:                                              ; preds = %226, %212
  %239 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %240 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %239, i32 0, i32 2
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %240, align 8
  %242 = call i32 @kfree(%struct.TYPE_9__* %241)
  %243 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %244 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %243, i32 0, i32 2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %244, align 8
  %245 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %246 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = call i32 @ib_umem_release(i32* %247)
  %249 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %250 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %249, i32 0, i32 1
  store i32* null, i32** %250, align 8
  br label %251

251:                                              ; preds = %238, %211, %93, %83, %74, %58, %47, %34
  %252 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %253 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %252, i32 0, i32 0
  %254 = call i32 @mutex_unlock(i32* %253)
  %255 = load i32, i32* %11, align 4
  ret i32 %255
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx4_ib_cq* @to_mcq(%struct.ib_cq*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @mlx4_alloc_resize_umem(%struct.mlx4_ib_dev*, %struct.mlx4_ib_cq*, i32, %struct.ib_udata*) #1

declare dso_local i32 @mlx4_ib_get_outstanding_cqes(%struct.mlx4_ib_cq*) #1

declare dso_local i32 @mlx4_alloc_resize_buf(%struct.mlx4_ib_dev*, %struct.mlx4_ib_cq*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mlx4_cq_resize(%struct.TYPE_8__*, i32*, i32, %struct.mlx4_mtt*) #1

declare dso_local i32 @mlx4_mtt_cleanup(%struct.TYPE_8__*, %struct.mlx4_mtt*) #1

declare dso_local i32 @ib_umem_release(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_9__*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @mlx4_ib_cq_resize_copy_cqes(%struct.mlx4_ib_cq*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mlx4_ib_free_cq_buf(%struct.mlx4_ib_dev*, %struct.mlx4_ib_cq_buf*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
