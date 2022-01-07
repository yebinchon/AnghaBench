; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com_cmd.c_efa_com_get_device_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com_cmd.c_efa_com_get_device_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_com_dev = type { i32, i32 }
%struct.efa_com_get_device_attr_result = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.efa_admin_get_feature_resp = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@EFA_ADMIN_DEVICE_ATTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to get device attributes %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed to get device attr api version [%u < 1]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EFA_ADMIN_QUEUE_ATTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to get queue attributes %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efa_com_get_device_attr(%struct.efa_com_dev* %0, %struct.efa_com_get_device_attr_result* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efa_com_dev*, align 8
  %5 = alloca %struct.efa_com_get_device_attr_result*, align 8
  %6 = alloca %struct.efa_admin_get_feature_resp, align 4
  %7 = alloca i32, align 4
  store %struct.efa_com_dev* %0, %struct.efa_com_dev** %4, align 8
  store %struct.efa_com_get_device_attr_result* %1, %struct.efa_com_get_device_attr_result** %5, align 8
  %8 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %9 = load i32, i32* @EFA_ADMIN_DEVICE_ATTR, align 4
  %10 = call i32 @efa_com_get_feature(%struct.efa_com_dev* %8, %struct.efa_admin_get_feature_resp* %6, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %15 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @ibdev_err_ratelimited(i32 %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %187

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.efa_admin_get_feature_resp, %struct.efa_admin_get_feature_resp* %6, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %5, align 8
  %26 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %25, i32 0, i32 21
  store i32 %24, i32* %26, align 4
  %27 = getelementptr inbounds %struct.efa_admin_get_feature_resp, %struct.efa_admin_get_feature_resp* %6, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %5, align 8
  %32 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %31, i32 0, i32 20
  store i32 %30, i32* %32, align 4
  %33 = getelementptr inbounds %struct.efa_admin_get_feature_resp, %struct.efa_admin_get_feature_resp* %6, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %5, align 8
  %38 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds %struct.efa_admin_get_feature_resp, %struct.efa_admin_get_feature_resp* %6, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %5, align 8
  %44 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %43, i32 0, i32 19
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.efa_admin_get_feature_resp, %struct.efa_admin_get_feature_resp* %6, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %5, align 8
  %50 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %49, i32 0, i32 18
  store i32 %48, i32* %50, align 4
  %51 = getelementptr inbounds %struct.efa_admin_get_feature_resp, %struct.efa_admin_get_feature_resp* %6, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %5, align 8
  %56 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %55, i32 0, i32 17
  store i32 %54, i32* %56, align 4
  %57 = getelementptr inbounds %struct.efa_admin_get_feature_resp, %struct.efa_admin_get_feature_resp* %6, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %5, align 8
  %62 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %61, i32 0, i32 16
  store i32 %60, i32* %62, align 4
  %63 = getelementptr inbounds %struct.efa_admin_get_feature_resp, %struct.efa_admin_get_feature_resp* %6, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %5, align 8
  %68 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %67, i32 0, i32 15
  store i32 %66, i32* %68, align 4
  %69 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %5, align 8
  %70 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %71, 1
  br i1 %72, label %73, label %83

73:                                               ; preds = %20
  %74 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %75 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %5, align 8
  %78 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ibdev_err_ratelimited(i32 %76, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %187

83:                                               ; preds = %20
  %84 = getelementptr inbounds %struct.efa_admin_get_feature_resp, %struct.efa_admin_get_feature_resp* %6, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %89 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %91 = load i32, i32* @EFA_ADMIN_QUEUE_ATTR, align 4
  %92 = call i32 @efa_com_get_feature(%struct.efa_com_dev* %90, %struct.efa_admin_get_feature_resp* %6, i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %83
  %96 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %97 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @ibdev_err_ratelimited(i32 %98, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %3, align 4
  br label %187

102:                                              ; preds = %83
  %103 = getelementptr inbounds %struct.efa_admin_get_feature_resp, %struct.efa_admin_get_feature_resp* %6, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 13
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %5, align 8
  %108 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %107, i32 0, i32 14
  store i32 %106, i32* %108, align 4
  %109 = getelementptr inbounds %struct.efa_admin_get_feature_resp, %struct.efa_admin_get_feature_resp* %6, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 12
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %5, align 8
  %114 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %113, i32 0, i32 13
  store i32 %112, i32* %114, align 4
  %115 = getelementptr inbounds %struct.efa_admin_get_feature_resp, %struct.efa_admin_get_feature_resp* %6, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 11
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %5, align 8
  %120 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %119, i32 0, i32 12
  store i32 %118, i32* %120, align 4
  %121 = getelementptr inbounds %struct.efa_admin_get_feature_resp, %struct.efa_admin_get_feature_resp* %6, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 10
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %5, align 8
  %126 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %125, i32 0, i32 11
  store i32 %124, i32* %126, align 4
  %127 = getelementptr inbounds %struct.efa_admin_get_feature_resp, %struct.efa_admin_get_feature_resp* %6, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 9
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %5, align 8
  %132 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %131, i32 0, i32 10
  store i32 %130, i32* %132, align 4
  %133 = getelementptr inbounds %struct.efa_admin_get_feature_resp, %struct.efa_admin_get_feature_resp* %6, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 8
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %5, align 8
  %138 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %137, i32 0, i32 9
  store i32 %136, i32* %138, align 4
  %139 = getelementptr inbounds %struct.efa_admin_get_feature_resp, %struct.efa_admin_get_feature_resp* %6, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 7
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %5, align 8
  %144 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %143, i32 0, i32 8
  store i32 %142, i32* %144, align 4
  %145 = getelementptr inbounds %struct.efa_admin_get_feature_resp, %struct.efa_admin_get_feature_resp* %6, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %5, align 8
  %150 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %149, i32 0, i32 7
  store i32 %148, i32* %150, align 4
  %151 = getelementptr inbounds %struct.efa_admin_get_feature_resp, %struct.efa_admin_get_feature_resp* %6, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %5, align 8
  %156 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %155, i32 0, i32 6
  store i32 %154, i32* %156, align 4
  %157 = getelementptr inbounds %struct.efa_admin_get_feature_resp, %struct.efa_admin_get_feature_resp* %6, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %5, align 8
  %162 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %161, i32 0, i32 5
  store i32 %160, i32* %162, align 4
  %163 = getelementptr inbounds %struct.efa_admin_get_feature_resp, %struct.efa_admin_get_feature_resp* %6, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %5, align 8
  %168 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %167, i32 0, i32 4
  store i32 %166, i32* %168, align 4
  %169 = getelementptr inbounds %struct.efa_admin_get_feature_resp, %struct.efa_admin_get_feature_resp* %6, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %5, align 8
  %174 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %173, i32 0, i32 3
  store i32 %172, i32* %174, align 4
  %175 = getelementptr inbounds %struct.efa_admin_get_feature_resp, %struct.efa_admin_get_feature_resp* %6, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %5, align 8
  %180 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 4
  %181 = getelementptr inbounds %struct.efa_admin_get_feature_resp, %struct.efa_admin_get_feature_resp* %6, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.efa_com_get_device_attr_result*, %struct.efa_com_get_device_attr_result** %5, align 8
  %186 = getelementptr inbounds %struct.efa_com_get_device_attr_result, %struct.efa_com_get_device_attr_result* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  store i32 0, i32* %3, align 4
  br label %187

187:                                              ; preds = %102, %95, %73, %13
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local i32 @efa_com_get_feature(%struct.efa_com_dev*, %struct.efa_admin_get_feature_resp*, i32) #1

declare dso_local i32 @ibdev_err_ratelimited(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
