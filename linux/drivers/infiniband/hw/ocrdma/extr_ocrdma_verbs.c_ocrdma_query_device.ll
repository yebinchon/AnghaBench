; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_query_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_query_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_device_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_udata = type { i64, i64 }
%struct.ocrdma_dev = type { %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@OCRDMA_MAX_AH = common dso_local global i32 0, align 4
@IB_DEVICE_CURR_QP_STATE_MOD = common dso_local global i32 0, align 4
@IB_DEVICE_RC_RNR_NAK_GEN = common dso_local global i32 0, align 4
@IB_DEVICE_SHUTDOWN_PORT = common dso_local global i32 0, align 4
@IB_DEVICE_SYS_IMAGE_GUID = common dso_local global i32 0, align 4
@IB_DEVICE_LOCAL_DMA_LKEY = common dso_local global i32 0, align 4
@IB_DEVICE_MEM_MGT_EXTENSIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_query_device(%struct.ib_device* %0, %struct.ib_device_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.ib_device_attr*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.ocrdma_dev*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store %struct.ib_device_attr* %1, %struct.ib_device_attr** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %9 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %10 = call %struct.ocrdma_dev* @get_ocrdma_dev(%struct.ib_device* %9)
  store %struct.ocrdma_dev* %10, %struct.ocrdma_dev** %8, align 8
  %11 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %12 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %17 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15, %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %199

23:                                               ; preds = %15
  %24 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %25 = call i32 @memset(%struct.ib_device_attr* %24, i32 0, i32 136)
  %26 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %27 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %26, i32 0, i32 29
  %28 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %29 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 18
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = call i32 @min(i32 8, i32 4)
  %34 = call i32 @memcpy(i32* %27, i32* %32, i32 %33)
  %35 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %36 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %37 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %36, i32 0, i32 28
  %38 = call i32 @ocrdma_get_guid(%struct.ocrdma_dev* %35, i32* %37)
  %39 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %40 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 17
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %44 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %43, i32 0, i32 27
  store i32 %42, i32* %44, align 8
  %45 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %46 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %45, i32 0, i32 0
  store i32 268431360, i32* %46, align 8
  %47 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %48 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %54 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %53, i32 0, i32 26
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %56 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %62 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %61, i32 0, i32 25
  store i32 %60, i32* %62, align 8
  %63 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %64 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %67 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %66, i32 0, i32 24
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %69 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 16
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %73 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %72, i32 0, i32 23
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @OCRDMA_MAX_AH, align 4
  %75 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %76 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %75, i32 0, i32 22
  store i32 %74, i32* %76, align 4
  %77 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %78 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 15
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %82 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %81, i32 0, i32 21
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @IB_DEVICE_CURR_QP_STATE_MOD, align 4
  %84 = load i32, i32* @IB_DEVICE_RC_RNR_NAK_GEN, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @IB_DEVICE_SHUTDOWN_PORT, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @IB_DEVICE_SYS_IMAGE_GUID, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @IB_DEVICE_LOCAL_DMA_LKEY, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @IB_DEVICE_MEM_MGT_EXTENSIONS, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %95 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %97 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 14
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %101 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %100, i32 0, i32 20
  store i32 %99, i32* %101, align 4
  %102 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %103 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 13
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %107 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %106, i32 0, i32 19
  store i32 %105, i32* %107, align 8
  %108 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %109 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 12
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %113 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %112, i32 0, i32 18
  store i32 %111, i32* %113, align 4
  %114 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %115 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 11
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %119 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %118, i32 0, i32 17
  store i32 %117, i32* %119, align 8
  %120 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %121 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 10
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %125 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %124, i32 0, i32 16
  store i32 %123, i32* %125, align 4
  %126 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %127 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 9
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %131 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %130, i32 0, i32 15
  store i32 %129, i32* %131, align 8
  %132 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %133 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %137 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %136, i32 0, i32 14
  store i32 %135, i32* %137, align 4
  %138 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %139 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 7
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %143 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %142, i32 0, i32 13
  store i32 %141, i32* %143, align 8
  %144 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %145 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %144, i32 0, i32 12
  store i64 0, i64* %145, align 8
  %146 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %147 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %146, i32 0, i32 11
  store i64 0, i64* %147, align 8
  %148 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %149 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %148, i32 0, i32 10
  store i64 0, i64* %149, align 8
  %150 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %151 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %155 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @min(i32 %153, i32 %157)
  %159 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %160 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %159, i32 0, i32 9
  store i32 %158, i32* %160, align 4
  %161 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %162 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %166 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 8
  %167 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %168 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %172 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %171, i32 0, i32 8
  store i32 %170, i32* %172, align 8
  %173 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %174 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %178 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %177, i32 0, i32 7
  store i32 %176, i32* %178, align 4
  %179 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %180 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %184 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %183, i32 0, i32 6
  store i32 %182, i32* %184, align 8
  %185 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %186 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %190 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %189, i32 0, i32 5
  store i32 %188, i32* %190, align 4
  %191 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %192 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %196 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %195, i32 0, i32 4
  store i32 %194, i32* %196, align 8
  %197 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %198 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %197, i32 0, i32 3
  store i32 1, i32* %198, align 4
  store i32 0, i32* %4, align 4
  br label %199

199:                                              ; preds = %23, %20
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

declare dso_local %struct.ocrdma_dev* @get_ocrdma_dev(%struct.ib_device*) #1

declare dso_local i32 @memset(%struct.ib_device_attr*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ocrdma_get_guid(%struct.ocrdma_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
