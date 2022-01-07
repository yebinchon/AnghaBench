; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_srq.c_rvt_create_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_srq.c_rvt_create_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_srq_init_attr = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.ib_udata = type { i32 }
%struct.rvt_dev_info = type { i64, i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64, i64, i64 }
%struct.rvt_srq = type { %struct.TYPE_11__, %struct.TYPE_12__*, i32 }
%struct.TYPE_11__ = type { i64, i64, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@IB_SRQT_BASIC = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvt_create_srq(%struct.ib_srq* %0, %struct.ib_srq_init_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_srq*, align 8
  %6 = alloca %struct.ib_srq_init_attr*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.rvt_dev_info*, align 8
  %9 = alloca %struct.rvt_srq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ib_srq* %0, %struct.ib_srq** %5, align 8
  store %struct.ib_srq_init_attr* %1, %struct.ib_srq_init_attr** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %13 = load %struct.ib_srq*, %struct.ib_srq** %5, align 8
  %14 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.rvt_dev_info* @ib_to_rvt(i32 %15)
  store %struct.rvt_dev_info* %16, %struct.rvt_dev_info** %8, align 8
  %17 = load %struct.ib_srq*, %struct.ib_srq** %5, align 8
  %18 = call %struct.rvt_srq* @ibsrq_to_rvtsrq(%struct.ib_srq* %17)
  store %struct.rvt_srq* %18, %struct.rvt_srq** %9, align 8
  %19 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %20 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IB_SRQT_BASIC, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %221

27:                                               ; preds = %3
  %28 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %29 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %61, label %33

33:                                               ; preds = %27
  %34 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %35 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %8, align 8
  %39 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %37, %42
  br i1 %43, label %61, label %44

44:                                               ; preds = %33
  %45 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %46 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %44
  %51 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %52 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %8, align 8
  %56 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %54, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %50, %44, %33, %27
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %221

64:                                               ; preds = %50
  %65 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %66 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 1
  %70 = load %struct.rvt_srq*, %struct.rvt_srq** %9, align 8
  %71 = getelementptr inbounds %struct.rvt_srq, %struct.rvt_srq* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  store i64 %69, i64* %72, align 8
  %73 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %74 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.rvt_srq*, %struct.rvt_srq** %9, align 8
  %78 = getelementptr inbounds %struct.rvt_srq, %struct.rvt_srq* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  store i64 %76, i64* %79, align 8
  %80 = load %struct.rvt_srq*, %struct.rvt_srq** %9, align 8
  %81 = getelementptr inbounds %struct.rvt_srq, %struct.rvt_srq* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = mul i64 4, %83
  %85 = add i64 %84, 4
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %10, align 4
  %87 = load %struct.rvt_srq*, %struct.rvt_srq** %9, align 8
  %88 = getelementptr inbounds %struct.rvt_srq, %struct.rvt_srq* %87, i32 0, i32 0
  %89 = load %struct.rvt_srq*, %struct.rvt_srq** %9, align 8
  %90 = getelementptr inbounds %struct.rvt_srq, %struct.rvt_srq* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = mul nsw i64 %92, %94
  %96 = trunc i64 %95 to i32
  %97 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %8, align 8
  %98 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %102 = call i64 @rvt_alloc_rq(%struct.TYPE_11__* %88, i32 %96, i32 %100, %struct.ib_udata* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %64
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %11, align 4
  br label %219

107:                                              ; preds = %64
  %108 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %109 = icmp ne %struct.ib_udata* %108, null
  br i1 %109, label %110, label %154

110:                                              ; preds = %107
  %111 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %112 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = icmp uge i64 %114, 4
  br i1 %115, label %116, label %154

116:                                              ; preds = %110
  %117 = load %struct.rvt_srq*, %struct.rvt_srq** %9, align 8
  %118 = getelementptr inbounds %struct.rvt_srq, %struct.rvt_srq* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = mul nsw i64 %120, %122
  %124 = add i64 4, %123
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %12, align 4
  %126 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %8, align 8
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %129 = load %struct.rvt_srq*, %struct.rvt_srq** %9, align 8
  %130 = getelementptr inbounds %struct.rvt_srq, %struct.rvt_srq* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call %struct.TYPE_12__* @rvt_create_mmap_info(%struct.rvt_dev_info* %126, i32 %127, %struct.ib_udata* %128, i32 %132)
  %134 = load %struct.rvt_srq*, %struct.rvt_srq** %9, align 8
  %135 = getelementptr inbounds %struct.rvt_srq, %struct.rvt_srq* %134, i32 0, i32 1
  store %struct.TYPE_12__* %133, %struct.TYPE_12__** %135, align 8
  %136 = load %struct.rvt_srq*, %struct.rvt_srq** %9, align 8
  %137 = getelementptr inbounds %struct.rvt_srq, %struct.rvt_srq* %136, i32 0, i32 1
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = icmp ne %struct.TYPE_12__* %138, null
  br i1 %139, label %143, label %140

140:                                              ; preds = %116
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %11, align 4
  br label %215

143:                                              ; preds = %116
  %144 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %145 = load %struct.rvt_srq*, %struct.rvt_srq** %9, align 8
  %146 = getelementptr inbounds %struct.rvt_srq, %struct.rvt_srq* %145, i32 0, i32 1
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  %149 = call i32 @ib_copy_to_udata(%struct.ib_udata* %144, i32* %148, i32 4)
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* %11, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %143
  br label %210

153:                                              ; preds = %143
  br label %154

154:                                              ; preds = %153, %110, %107
  %155 = load %struct.rvt_srq*, %struct.rvt_srq** %9, align 8
  %156 = getelementptr inbounds %struct.rvt_srq, %struct.rvt_srq* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 2
  %158 = call i32 @spin_lock_init(i32* %157)
  %159 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %160 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.rvt_srq*, %struct.rvt_srq** %9, align 8
  %164 = getelementptr inbounds %struct.rvt_srq, %struct.rvt_srq* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  %165 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %8, align 8
  %166 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %165, i32 0, i32 3
  %167 = call i32 @spin_lock(i32* %166)
  %168 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %8, align 8
  %169 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %8, align 8
  %172 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %170, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %154
  %178 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %8, align 8
  %179 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %178, i32 0, i32 3
  %180 = call i32 @spin_unlock(i32* %179)
  %181 = load i32, i32* @ENOMEM, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %11, align 4
  br label %210

183:                                              ; preds = %154
  %184 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %8, align 8
  %185 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = add nsw i64 %186, 1
  store i64 %187, i64* %185, align 8
  %188 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %8, align 8
  %189 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %188, i32 0, i32 3
  %190 = call i32 @spin_unlock(i32* %189)
  %191 = load %struct.rvt_srq*, %struct.rvt_srq** %9, align 8
  %192 = getelementptr inbounds %struct.rvt_srq, %struct.rvt_srq* %191, i32 0, i32 1
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %192, align 8
  %194 = icmp ne %struct.TYPE_12__* %193, null
  br i1 %194, label %195, label %209

195:                                              ; preds = %183
  %196 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %8, align 8
  %197 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %196, i32 0, i32 1
  %198 = call i32 @spin_lock_irq(i32* %197)
  %199 = load %struct.rvt_srq*, %struct.rvt_srq** %9, align 8
  %200 = getelementptr inbounds %struct.rvt_srq, %struct.rvt_srq* %199, i32 0, i32 1
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %8, align 8
  %204 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %203, i32 0, i32 2
  %205 = call i32 @list_add(i32* %202, i32* %204)
  %206 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %8, align 8
  %207 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %206, i32 0, i32 1
  %208 = call i32 @spin_unlock_irq(i32* %207)
  br label %209

209:                                              ; preds = %195, %183
  store i32 0, i32* %4, align 4
  br label %221

210:                                              ; preds = %177, %152
  %211 = load %struct.rvt_srq*, %struct.rvt_srq** %9, align 8
  %212 = getelementptr inbounds %struct.rvt_srq, %struct.rvt_srq* %211, i32 0, i32 1
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %212, align 8
  %214 = call i32 @kfree(%struct.TYPE_12__* %213)
  br label %215

215:                                              ; preds = %210, %140
  %216 = load %struct.rvt_srq*, %struct.rvt_srq** %9, align 8
  %217 = getelementptr inbounds %struct.rvt_srq, %struct.rvt_srq* %216, i32 0, i32 0
  %218 = call i32 @rvt_free_rq(%struct.TYPE_11__* %217)
  br label %219

219:                                              ; preds = %215, %104
  %220 = load i32, i32* %11, align 4
  store i32 %220, i32* %4, align 4
  br label %221

221:                                              ; preds = %219, %209, %61, %24
  %222 = load i32, i32* %4, align 4
  ret i32 %222
}

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(i32) #1

declare dso_local %struct.rvt_srq* @ibsrq_to_rvtsrq(%struct.ib_srq*) #1

declare dso_local i64 @rvt_alloc_rq(%struct.TYPE_11__*, i32, i32, %struct.ib_udata*) #1

declare dso_local %struct.TYPE_12__* @rvt_create_mmap_info(%struct.rvt_dev_info*, i32, %struct.ib_udata*, i32) #1

declare dso_local i32 @ib_copy_to_udata(%struct.ib_udata*, i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_12__*) #1

declare dso_local i32 @rvt_free_rq(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
