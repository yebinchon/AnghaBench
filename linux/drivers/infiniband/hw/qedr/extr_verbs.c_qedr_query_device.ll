; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_query_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_query_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_device_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_udata = type { i32 }
%struct.qedr_dev = type { i32, i32, %struct.qedr_device_attr }
%struct.qedr_device_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"qedr_query_device called with invalid params rdma_ctx=%p\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@IB_DEVICE_CURR_QP_STATE_MOD = common dso_local global i32 0, align 4
@IB_DEVICE_RC_RNR_NAK_GEN = common dso_local global i32 0, align 4
@IB_DEVICE_LOCAL_DMA_LKEY = common dso_local global i32 0, align 4
@IB_DEVICE_MEM_MGT_EXTENSIONS = common dso_local global i32 0, align 4
@QEDR_ROCE_PKEY_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedr_query_device(%struct.ib_device* %0, %struct.ib_device_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.ib_device_attr*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.qedr_dev*, align 8
  %9 = alloca %struct.qedr_device_attr*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store %struct.ib_device_attr* %1, %struct.ib_device_attr** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %10 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %11 = call %struct.qedr_dev* @get_qedr_dev(%struct.ib_device* %10)
  store %struct.qedr_dev* %11, %struct.qedr_dev** %8, align 8
  %12 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %13 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %12, i32 0, i32 2
  store %struct.qedr_device_attr* %13, %struct.qedr_device_attr** %9, align 8
  %14 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %15 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %3
  %19 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %20 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %21 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @DP_ERR(%struct.qedr_dev* %19, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %194

26:                                               ; preds = %3
  %27 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %28 = call i32 @memset(%struct.ib_device_attr* %27, i32 0, i32 120)
  %29 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %9, align 8
  %30 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %29, i32 0, i32 23
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %33 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %32, i32 0, i32 29
  store i32 %31, i32* %33, align 4
  %34 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %9, align 8
  %35 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %34, i32 0, i32 22
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %38 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %37, i32 0, i32 28
  store i32 %36, i32* %38, align 4
  %39 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %9, align 8
  %40 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %39, i32 0, i32 21
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %43 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %42, i32 0, i32 27
  store i32 %41, i32* %43, align 4
  %44 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %9, align 8
  %45 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %44, i32 0, i32 20
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %48 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %47, i32 0, i32 26
  store i32 %46, i32* %48, align 4
  %49 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %9, align 8
  %50 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %49, i32 0, i32 19
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %53 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %52, i32 0, i32 25
  store i32 %51, i32* %53, align 4
  %54 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %9, align 8
  %55 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %54, i32 0, i32 18
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %58 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %57, i32 0, i32 24
  store i32 %56, i32* %58, align 4
  %59 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %9, align 8
  %60 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %59, i32 0, i32 17
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %63 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %62, i32 0, i32 23
  store i32 %61, i32* %63, align 4
  %64 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %9, align 8
  %65 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %64, i32 0, i32 16
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %68 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %67, i32 0, i32 22
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @u32, align 4
  %70 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %9, align 8
  %71 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %70, i32 0, i32 15
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %9, align 8
  %74 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %73, i32 0, i32 14
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @max_t(i32 %69, i32 %72, i32 %75)
  %77 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %78 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %77, i32 0, i32 21
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @IB_DEVICE_CURR_QP_STATE_MOD, align 4
  %80 = load i32, i32* @IB_DEVICE_RC_RNR_NAK_GEN, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @IB_DEVICE_LOCAL_DMA_LKEY, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @IB_DEVICE_MEM_MGT_EXTENSIONS, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %87 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %9, align 8
  %89 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %88, i32 0, i32 13
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %92 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %91, i32 0, i32 20
  store i32 %90, i32* %92, align 4
  %93 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %9, align 8
  %94 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %93, i32 0, i32 13
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %97 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %96, i32 0, i32 19
  store i32 %95, i32* %97, align 4
  %98 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %9, align 8
  %99 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %98, i32 0, i32 13
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %102 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %101, i32 0, i32 18
  store i32 %100, i32* %102, align 4
  %103 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %9, align 8
  %104 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %103, i32 0, i32 12
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %107 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %106, i32 0, i32 17
  store i32 %105, i32* %107, align 4
  %108 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %9, align 8
  %109 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %108, i32 0, i32 11
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %112 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %111, i32 0, i32 16
  store i32 %110, i32* %112, align 4
  %113 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %9, align 8
  %114 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %117 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %9, align 8
  %119 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %118, i32 0, i32 10
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %122 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %121, i32 0, i32 15
  store i32 %120, i32* %122, align 4
  %123 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %9, align 8
  %124 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %123, i32 0, i32 9
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %127 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %126, i32 0, i32 14
  store i32 %125, i32* %127, align 4
  %128 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %129 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %132 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %131, i32 0, i32 13
  store i32 %130, i32* %132, align 4
  %133 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %9, align 8
  %134 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %137 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %136, i32 0, i32 12
  store i32 %135, i32* %137, align 4
  %138 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %139 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %138, i32 0, i32 2
  store i32 16, i32* %139, align 4
  %140 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %9, align 8
  %141 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %140, i32 0, i32 7
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @fls(i32 %142)
  %144 = sub nsw i32 %143, 1
  %145 = shl i32 1, %144
  %146 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %147 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %146, i32 0, i32 3
  store i32 %145, i32* %147, align 4
  %148 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %9, align 8
  %149 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @fls(i32 %150)
  %152 = sub nsw i32 %151, 1
  %153 = shl i32 1, %152
  %154 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %155 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @min(i32 %153, i32 %156)
  %158 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %159 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %158, i32 0, i32 11
  store i32 %157, i32* %159, align 4
  %160 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %9, align 8
  %161 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %164 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %163, i32 0, i32 10
  store i32 %162, i32* %164, align 4
  %165 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %9, align 8
  %166 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %169 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %168, i32 0, i32 9
  store i32 %167, i32* %169, align 4
  %170 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %9, align 8
  %171 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %174 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %173, i32 0, i32 8
  store i32 %172, i32* %174, align 4
  %175 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %9, align 8
  %176 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %179 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %178, i32 0, i32 7
  store i32 %177, i32* %179, align 4
  %180 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %9, align 8
  %181 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = sdiv i32 %182, 8
  %184 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %185 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %184, i32 0, i32 4
  store i32 %183, i32* %185, align 4
  %186 = load i32, i32* @QEDR_ROCE_PKEY_MAX, align 4
  %187 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %188 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %187, i32 0, i32 6
  store i32 %186, i32* %188, align 4
  %189 = load %struct.qedr_device_attr*, %struct.qedr_device_attr** %9, align 8
  %190 = getelementptr inbounds %struct.qedr_device_attr, %struct.qedr_device_attr* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %193 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %192, i32 0, i32 5
  store i32 %191, i32* %193, align 4
  store i32 0, i32* %4, align 4
  br label %194

194:                                              ; preds = %26, %18
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

declare dso_local %struct.qedr_dev* @get_qedr_dev(%struct.ib_device*) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, i32) #1

declare dso_local i32 @memset(%struct.ib_device_attr*, i32, i32) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
