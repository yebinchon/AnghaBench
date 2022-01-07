; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_query_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_query_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_device_attr = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_udata = type { i64, i64 }
%struct.ib_smp = type { i64, i32 }
%struct.mthca_dev = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i64, i64, i64, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_SMP_ATTR_NODE_INFO = common dso_local global i32 0, align 4
@DEV_LIM_FLAG_ATOMIC = common dso_local global i32 0, align 4
@IB_ATOMIC_HCA = common dso_local global i32 0, align 4
@IB_ATOMIC_NONE = common dso_local global i32 0, align 4
@MTHCA_QP_PER_MGM = common dso_local global i32 0, align 4
@MTHCA_FLAG_SINAI_OPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.ib_device_attr*, %struct.ib_udata*)* @mthca_query_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_query_device(%struct.ib_device* %0, %struct.ib_device_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.ib_device_attr*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.ib_smp*, align 8
  %9 = alloca %struct.ib_smp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mthca_dev*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store %struct.ib_device_attr* %1, %struct.ib_device_attr** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %8, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %9, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %10, align 4
  %14 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %15 = call %struct.mthca_dev* @to_mdev(%struct.ib_device* %14)
  store %struct.mthca_dev* %15, %struct.mthca_dev** %11, align 8
  %16 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %17 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %22 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %301

28:                                               ; preds = %20
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.ib_smp* @kzalloc(i32 16, i32 %29)
  store %struct.ib_smp* %30, %struct.ib_smp** %8, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.ib_smp* @kmalloc(i32 16, i32 %31)
  store %struct.ib_smp* %32, %struct.ib_smp** %9, align 8
  %33 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %34 = icmp ne %struct.ib_smp* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %37 = icmp ne %struct.ib_smp* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35, %28
  br label %295

39:                                               ; preds = %35
  %40 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %41 = call i32 @memset(%struct.ib_device_attr* %40, i32 0, i32 152)
  %42 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %43 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %46 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %45, i32 0, i32 29
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %48 = call i32 @init_query_mad(%struct.ib_smp* %47)
  %49 = load i32, i32* @IB_SMP_ATTR_NODE_INFO, align 4
  %50 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %51 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %53 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %54 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %55 = call i32 @mthca_MAD_IFC(%struct.mthca_dev* %52, i32 1, i32 1, i32 1, i32* null, i32* null, %struct.ib_smp* %53, %struct.ib_smp* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %39
  br label %295

59:                                               ; preds = %39
  %60 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %61 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %64 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %63, i32 0, i32 28
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %66 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 36
  %69 = inttoptr i64 %68 to i32*
  %70 = call i32 @be32_to_cpup(i32* %69)
  %71 = and i32 %70, 16777215
  %72 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %73 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %75 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 30
  %78 = inttoptr i64 %77 to i32*
  %79 = call i32 @be16_to_cpup(i32* %78)
  %80 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %81 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %80, i32 0, i32 27
  store i32 %79, i32* %81, align 8
  %82 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %83 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 32
  %86 = inttoptr i64 %85 to i32*
  %87 = call i32 @be32_to_cpup(i32* %86)
  %88 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %89 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %91 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %90, i32 0, i32 26
  %92 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %93 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 4
  %96 = call i32 @memcpy(i32* %91, i64 %95, i32 8)
  %97 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %98 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %97, i32 0, i32 2
  store i64 -1, i64* %98, align 8
  %99 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %100 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 21
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %104 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %103, i32 0, i32 25
  store i32 %102, i32* %104, align 8
  %105 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %106 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %110 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %108, %112
  %114 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %115 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 8
  %116 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %117 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 20
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %121 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %120, i32 0, i32 24
  store i32 %119, i32* %121, align 4
  %122 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %123 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 19
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %127 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %126, i32 0, i32 23
  store i32 %125, i32* %127, align 8
  %128 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %129 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 19
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %133 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %132, i32 0, i32 22
  store i32 %131, i32* %133, align 4
  %134 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %135 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 19
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %139 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %138, i32 0, i32 21
  store i32 %137, i32* %139, align 8
  %140 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %141 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 18
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %145 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 17
  %147 = load i64, i64* %146, align 8
  %148 = sub nsw i64 %143, %147
  %149 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %150 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %149, i32 0, i32 20
  store i64 %148, i64* %150, align 8
  %151 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %152 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 16
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %156 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %155, i32 0, i32 19
  store i32 %154, i32* %156, align 8
  %157 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %158 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 5
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %162 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 15
  %164 = load i64, i64* %163, align 8
  %165 = sub nsw i64 %160, %164
  %166 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %167 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %166, i32 0, i32 18
  store i64 %165, i64* %167, align 8
  %168 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %169 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 14
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %173 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 13
  %175 = load i64, i64* %174, align 8
  %176 = sub nsw i64 %171, %175
  %177 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %178 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %177, i32 0, i32 17
  store i64 %176, i64* %178, align 8
  %179 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %180 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = shl i32 1, %182
  %184 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %185 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %184, i32 0, i32 4
  store i32 %183, i32* %185, align 4
  %186 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %187 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 12
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %191 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %190, i32 0, i32 16
  store i32 %189, i32* %191, align 8
  %192 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %193 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %196 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = mul nsw i32 %194, %197
  %199 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %200 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %199, i32 0, i32 5
  store i32 %198, i32* %200, align 8
  %201 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %202 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 11
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %206 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 10
  %208 = load i64, i64* %207, align 8
  %209 = sub nsw i64 %204, %208
  %210 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %211 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %210, i32 0, i32 15
  store i64 %209, i64* %211, align 8
  %212 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %213 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 9
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %217 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %216, i32 0, i32 14
  store i32 %215, i32* %217, align 4
  %218 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %219 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 8
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %223 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %222, i32 0, i32 13
  store i32 %221, i32* %223, align 8
  %224 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %225 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 7
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %229 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %228, i32 0, i32 12
  store i32 %227, i32* %229, align 4
  %230 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %231 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @DEV_LIM_FLAG_ATOMIC, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %59
  %238 = load i32, i32* @IB_ATOMIC_HCA, align 4
  br label %241

239:                                              ; preds = %59
  %240 = load i32, i32* @IB_ATOMIC_NONE, align 4
  br label %241

241:                                              ; preds = %239, %237
  %242 = phi i32 [ %238, %237 ], [ %240, %239 ]
  %243 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %244 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %243, i32 0, i32 11
  store i32 %242, i32* %244, align 8
  %245 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %246 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 6
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %250 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %249, i32 0, i32 10
  store i32 %248, i32* %250, align 4
  %251 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %252 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %256 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = add nsw i32 %254, %258
  %260 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %261 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %260, i32 0, i32 6
  store i32 %259, i32* %261, align 4
  %262 = load i32, i32* @MTHCA_QP_PER_MGM, align 4
  %263 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %264 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %263, i32 0, i32 7
  store i32 %262, i32* %264, align 8
  %265 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %266 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %265, i32 0, i32 7
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %269 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %268, i32 0, i32 6
  %270 = load i32, i32* %269, align 4
  %271 = mul nsw i32 %267, %270
  %272 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %273 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %272, i32 0, i32 8
  store i32 %271, i32* %273, align 4
  %274 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %275 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @MTHCA_FLAG_SINAI_OPT, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %241
  %281 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %282 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %281, i32 0, i32 9
  store i32 255, i32* %282, align 8
  br label %294

283:                                              ; preds = %241
  %284 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %285 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 5
  %287 = load i64, i64* %286, align 8
  %288 = call i32 @ilog2(i64 %287)
  %289 = sub nsw i32 32, %288
  %290 = shl i32 1, %289
  %291 = sub nsw i32 %290, 1
  %292 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %293 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %292, i32 0, i32 9
  store i32 %291, i32* %293, align 8
  br label %294

294:                                              ; preds = %283, %280
  store i32 0, i32* %10, align 4
  br label %295

295:                                              ; preds = %294, %58, %38
  %296 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %297 = call i32 @kfree(%struct.ib_smp* %296)
  %298 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %299 = call i32 @kfree(%struct.ib_smp* %298)
  %300 = load i32, i32* %10, align 4
  store i32 %300, i32* %4, align 4
  br label %301

301:                                              ; preds = %295, %25
  %302 = load i32, i32* %4, align 4
  ret i32 %302
}

declare dso_local %struct.mthca_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local %struct.ib_smp* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_smp* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.ib_device_attr*, i32, i32) #1

declare dso_local i32 @init_query_mad(%struct.ib_smp*) #1

declare dso_local i32 @mthca_MAD_IFC(%struct.mthca_dev*, i32, i32, i32, i32*, i32*, %struct.ib_smp*, %struct.ib_smp*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @be16_to_cpup(i32*) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @ilog2(i64) #1

declare dso_local i32 @kfree(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
