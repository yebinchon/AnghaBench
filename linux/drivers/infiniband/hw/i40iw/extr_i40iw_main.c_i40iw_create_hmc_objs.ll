; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_create_hmc_objs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_create_hmc_objs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i32, %struct.i40iw_sc_dev }
%struct.i40iw_sc_dev = type { %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 (i32, i32, i32, i32, i32)* }
%struct.i40iw_hmc_create_obj_info = type { i32, i64, i64, i32, i32, %struct.TYPE_6__* }

@IW_HMC_OBJ_TYPE_NUM = common dso_local global i32 0, align 4
@iw_hmc_obj_types = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"create obj type %d status = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_device*, i32)* @i40iw_create_hmc_objs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_create_hmc_objs(%struct.i40iw_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_sc_dev*, align 8
  %7 = alloca %struct.i40iw_hmc_create_obj_info, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i40iw_device* %0, %struct.i40iw_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %11 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %10, i32 0, i32 1
  store %struct.i40iw_sc_dev* %11, %struct.i40iw_sc_dev** %6, align 8
  %12 = call i32 @memset(%struct.i40iw_hmc_create_obj_info* %7, i32 0, i32 40)
  %13 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %14 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.i40iw_hmc_create_obj_info, %struct.i40iw_hmc_create_obj_info* %7, i32 0, i32 5
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %16, align 8
  %17 = load i32, i32* %5, align 4
  %18 = getelementptr inbounds %struct.i40iw_hmc_create_obj_info, %struct.i40iw_hmc_create_obj_info* %7, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %20 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.i40iw_hmc_create_obj_info, %struct.i40iw_hmc_create_obj_info* %7, i32 0, i32 4
  store i32 %21, i32* %22, align 4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %59, %2
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @IW_HMC_OBJ_TYPE_NUM, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %62

27:                                               ; preds = %23
  %28 = load i64*, i64** @iw_hmc_obj_types, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.i40iw_hmc_create_obj_info, %struct.i40iw_hmc_create_obj_info* %7, i32 0, i32 1
  store i64 %32, i64* %33, align 8
  %34 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %35 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.i40iw_hmc_create_obj_info, %struct.i40iw_hmc_create_obj_info* %7, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.i40iw_hmc_create_obj_info, %struct.i40iw_hmc_create_obj_info* %7, i32 0, i32 3
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.i40iw_hmc_create_obj_info, %struct.i40iw_hmc_create_obj_info* %7, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %47 = call i32 @i40iw_create_hmc_obj_type(%struct.i40iw_sc_dev* %46, %struct.i40iw_hmc_create_obj_info* %7)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %27
  %51 = load i64*, i64** @iw_hmc_obj_types, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %55, i32 %56)
  br label %62

58:                                               ; preds = %27
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %23

62:                                               ; preds = %50, %23
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %62
  %66 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %67 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %66, i32 0, i32 3
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %69, align 8
  %71 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %72 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %75 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 %70(i32 %73, i32 0, i32 %76, i32 1, i32 1)
  store i32 %77, i32* %3, align 4
  br label %98

78:                                               ; preds = %62
  br label %79

79:                                               ; preds = %82, %78
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %79
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %9, align 4
  %85 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %86 = load i64*, i64** @iw_hmc_obj_types, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %92 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @i40iw_close_hmc_objects_type(%struct.i40iw_sc_dev* %85, i64 %90, %struct.TYPE_6__* %93, i32 %94, i32 0)
  br label %79

96:                                               ; preds = %79
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %65
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @memset(%struct.i40iw_hmc_create_obj_info*, i32, i32) #1

declare dso_local i32 @i40iw_create_hmc_obj_type(%struct.i40iw_sc_dev*, %struct.i40iw_hmc_create_obj_info*) #1

declare dso_local i32 @i40iw_pr_err(i8*, i64, i32) #1

declare dso_local i32 @i40iw_close_hmc_objects_type(%struct.i40iw_sc_dev*, i64, %struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
