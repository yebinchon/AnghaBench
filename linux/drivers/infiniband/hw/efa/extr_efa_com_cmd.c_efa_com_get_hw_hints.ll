; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com_cmd.c_efa_com_get_hw_hints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com_cmd.c_efa_com_get_hw_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_com_dev = type { i32 }
%struct.efa_com_get_hw_hints_result = type { i32, i32, i32, i32 }
%struct.efa_admin_get_feature_resp = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@EFA_ADMIN_HW_HINTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to get hw hints %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efa_com_get_hw_hints(%struct.efa_com_dev* %0, %struct.efa_com_get_hw_hints_result* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efa_com_dev*, align 8
  %5 = alloca %struct.efa_com_get_hw_hints_result*, align 8
  %6 = alloca %struct.efa_admin_get_feature_resp, align 4
  %7 = alloca i32, align 4
  store %struct.efa_com_dev* %0, %struct.efa_com_dev** %4, align 8
  store %struct.efa_com_get_hw_hints_result* %1, %struct.efa_com_get_hw_hints_result** %5, align 8
  %8 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %9 = load i32, i32* @EFA_ADMIN_HW_HINTS, align 4
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
  %18 = call i32 @ibdev_err_ratelimited(i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %45

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.efa_admin_get_feature_resp, %struct.efa_admin_get_feature_resp* %6, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.efa_com_get_hw_hints_result*, %struct.efa_com_get_hw_hints_result** %5, align 8
  %26 = getelementptr inbounds %struct.efa_com_get_hw_hints_result, %struct.efa_com_get_hw_hints_result* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = getelementptr inbounds %struct.efa_admin_get_feature_resp, %struct.efa_admin_get_feature_resp* %6, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.efa_com_get_hw_hints_result*, %struct.efa_com_get_hw_hints_result** %5, align 8
  %32 = getelementptr inbounds %struct.efa_com_get_hw_hints_result, %struct.efa_com_get_hw_hints_result* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = getelementptr inbounds %struct.efa_admin_get_feature_resp, %struct.efa_admin_get_feature_resp* %6, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.efa_com_get_hw_hints_result*, %struct.efa_com_get_hw_hints_result** %5, align 8
  %38 = getelementptr inbounds %struct.efa_com_get_hw_hints_result, %struct.efa_com_get_hw_hints_result* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds %struct.efa_admin_get_feature_resp, %struct.efa_admin_get_feature_resp* %6, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.efa_com_get_hw_hints_result*, %struct.efa_com_get_hw_hints_result** %5, align 8
  %44 = getelementptr inbounds %struct.efa_com_get_hw_hints_result, %struct.efa_com_get_hw_hints_result* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %20, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @efa_com_get_feature(%struct.efa_com_dev*, %struct.efa_admin_get_feature_resp*, i32) #1

declare dso_local i32 @ibdev_err_ratelimited(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
