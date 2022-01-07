; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_verbs.c_pvrdma_query_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_verbs.c_pvrdma_query_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_device_attr = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_udata = type { i64, i64 }
%struct.pvrdma_dev = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PVRDMA_ATOMIC_OP_COMP_SWAP = common dso_local global i32 0, align 4
@PVRDMA_ATOMIC_OP_FETCH_ADD = common dso_local global i32 0, align 4
@IB_ATOMIC_HCA = common dso_local global i32 0, align 4
@IB_ATOMIC_NONE = common dso_local global i32 0, align 4
@PVRDMA_BMME_FLAG_LOCAL_INV = common dso_local global i32 0, align 4
@PVRDMA_BMME_FLAG_REMOTE_INV = common dso_local global i32 0, align 4
@PVRDMA_BMME_FLAG_FAST_REG_WR = common dso_local global i32 0, align 4
@IB_DEVICE_MEM_MGT_EXTENSIONS = common dso_local global i32 0, align 4
@PVRDMA_MAX_FAST_REG_PAGES = common dso_local global i32 0, align 4
@IB_DEVICE_PORT_ACTIVE_EVENT = common dso_local global i32 0, align 4
@IB_DEVICE_RC_RNR_NAK_GEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvrdma_query_device(%struct.ib_device* %0, %struct.ib_device_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.ib_device_attr*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.pvrdma_dev*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store %struct.ib_device_attr* %1, %struct.ib_device_attr** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %9 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %10 = call %struct.pvrdma_dev* @to_vdev(%struct.ib_device* %9)
  store %struct.pvrdma_dev* %10, %struct.pvrdma_dev** %8, align 8
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
  br label %309

23:                                               ; preds = %15
  %24 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %25 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 25
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %31 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %30, i32 0, i32 27
  store i32 %29, i32* %31, align 8
  %32 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %33 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 24
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %39 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %38, i32 0, i32 26
  store i32 %37, i32* %39, align 4
  %40 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %41 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 23
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %47 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %46, i32 0, i32 25
  store i32 %45, i32* %47, align 8
  %48 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %49 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 22
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %55 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %54, i32 0, i32 24
  store i32 %53, i32* %55, align 4
  %56 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %57 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 21
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %63 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %62, i32 0, i32 23
  store i32 %61, i32* %63, align 8
  %64 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %65 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %70 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %69, i32 0, i32 22
  store i32 %68, i32* %70, align 4
  %71 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %72 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 20
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %78 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %77, i32 0, i32 21
  store i32 %76, i32* %78, align 8
  %79 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %80 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 19
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %86 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %85, i32 0, i32 20
  store i32 %84, i32* %86, align 4
  %87 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %88 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 18
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %94 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %93, i32 0, i32 19
  store i32 %92, i32* %94, align 8
  %95 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %96 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %102 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %104 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 17
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %110 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %109, i32 0, i32 18
  store i32 %108, i32* %110, align 4
  %111 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %112 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 17
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %118 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %117, i32 0, i32 17
  store i32 %116, i32* %118, align 8
  %119 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %120 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %121 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %120, i32 0, i32 0
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 17
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %127 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %126, i32 0, i32 0
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 16
  %131 = load i32, i32* %130, align 4
  %132 = call i8* @PVRDMA_GET_CAP(%struct.pvrdma_dev* %119, i32 %125, i32 %131)
  %133 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %134 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %133, i32 0, i32 16
  store i8* %132, i8** %134, align 8
  %135 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %136 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %135, i32 0, i32 0
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 15
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %142 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %141, i32 0, i32 15
  store i32 %140, i32* %142, align 4
  %143 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %144 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %143, i32 0, i32 0
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 14
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %150 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %149, i32 0, i32 14
  store i32 %148, i32* %150, align 8
  %151 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %152 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %151, i32 0, i32 0
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 13
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %158 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %157, i32 0, i32 13
  store i32 %156, i32* %158, align 4
  %159 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %160 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %159, i32 0, i32 0
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 12
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %166 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %165, i32 0, i32 12
  store i32 %164, i32* %166, align 8
  %167 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %168 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %167, i32 0, i32 0
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 11
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %174 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %173, i32 0, i32 11
  store i32 %172, i32* %174, align 4
  %175 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %176 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %175, i32 0, i32 0
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 10
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %182 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %181, i32 0, i32 10
  store i32 %180, i32* %182, align 8
  %183 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %184 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %183, i32 0, i32 0
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 9
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %190 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %189, i32 0, i32 9
  store i32 %188, i32* %190, align 4
  %191 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %192 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %191, i32 0, i32 0
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 8
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %198 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %197, i32 0, i32 8
  store i32 %196, i32* %198, align 8
  %199 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %200 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %199, i32 0, i32 0
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 7
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %206 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %205, i32 0, i32 7
  store i32 %204, i32* %206, align 4
  %207 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %208 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %207, i32 0, i32 0
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @PVRDMA_ATOMIC_OP_COMP_SWAP, align 4
  %214 = load i32, i32* @PVRDMA_ATOMIC_OP_FETCH_ADD, align 4
  %215 = or i32 %213, %214
  %216 = and i32 %212, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %23
  %219 = load i32, i32* @IB_ATOMIC_HCA, align 4
  br label %222

220:                                              ; preds = %23
  %221 = load i32, i32* @IB_ATOMIC_NONE, align 4
  br label %222

222:                                              ; preds = %220, %218
  %223 = phi i32 [ %219, %218 ], [ %221, %220 ]
  %224 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %225 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %224, i32 0, i32 5
  store i32 %223, i32* %225, align 4
  %226 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %227 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %226, i32 0, i32 5
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %230 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %229, i32 0, i32 6
  store i32 %228, i32* %230, align 8
  %231 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %232 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %231, i32 0, i32 0
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 6
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %238 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %237, i32 0, i32 4
  store i32 %236, i32* %238, align 8
  %239 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %240 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %239, i32 0, i32 0
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %246 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %245, i32 0, i32 3
  store i32 %244, i32* %246, align 4
  %247 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %248 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %247, i32 0, i32 0
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %254 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %253, i32 0, i32 2
  store i32 %252, i32* %254, align 8
  %255 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %256 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %255, i32 0, i32 0
  %257 = load %struct.TYPE_6__*, %struct.TYPE_6__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @PVRDMA_BMME_FLAG_LOCAL_INV, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %301

264:                                              ; preds = %222
  %265 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %266 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %265, i32 0, i32 0
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @PVRDMA_BMME_FLAG_REMOTE_INV, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %301

274:                                              ; preds = %264
  %275 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %276 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %275, i32 0, i32 0
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @PVRDMA_BMME_FLAG_FAST_REG_WR, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %301

284:                                              ; preds = %274
  %285 = load i32, i32* @IB_DEVICE_MEM_MGT_EXTENSIONS, align 4
  %286 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %287 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = or i32 %288, %285
  store i32 %289, i32* %287, align 8
  %290 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %291 = load i32, i32* @PVRDMA_MAX_FAST_REG_PAGES, align 4
  %292 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %293 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %292, i32 0, i32 0
  %294 = load %struct.TYPE_6__*, %struct.TYPE_6__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 4
  %298 = call i8* @PVRDMA_GET_CAP(%struct.pvrdma_dev* %290, i32 %291, i32 %297)
  %299 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %300 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %299, i32 0, i32 1
  store i8* %298, i8** %300, align 8
  br label %301

301:                                              ; preds = %284, %274, %264, %222
  %302 = load i32, i32* @IB_DEVICE_PORT_ACTIVE_EVENT, align 4
  %303 = load i32, i32* @IB_DEVICE_RC_RNR_NAK_GEN, align 4
  %304 = or i32 %302, %303
  %305 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %306 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = or i32 %307, %304
  store i32 %308, i32* %306, align 8
  store i32 0, i32* %4, align 4
  br label %309

309:                                              ; preds = %301, %20
  %310 = load i32, i32* %4, align 4
  ret i32 %310
}

declare dso_local %struct.pvrdma_dev* @to_vdev(%struct.ib_device*) #1

declare dso_local i8* @PVRDMA_GET_CAP(%struct.pvrdma_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
