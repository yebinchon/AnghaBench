; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_sysfs.c_qib_verbs_unregister_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_sysfs.c_qib_verbs_unregister_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, %struct.qib_pportdata* }
%struct.qib_pportdata = type { i32, i32, i32, i64 }

@qib_cc_table_size = common dso_local global i64 0, align 8
@cc_setting_bin_attr = common dso_local global i32 0, align 4
@cc_table_bin_attr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_verbs_unregister_sysfs(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %42, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %8 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %45

11:                                               ; preds = %5
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %13 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %12, i32 0, i32 1
  %14 = load %struct.qib_pportdata*, %struct.qib_pportdata** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %14, i64 %16
  store %struct.qib_pportdata* %17, %struct.qib_pportdata** %3, align 8
  %18 = load i64, i64* @qib_cc_table_size, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %11
  %21 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %22 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %27 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %26, i32 0, i32 2
  %28 = call i32 @sysfs_remove_bin_file(i32* %27, i32* @cc_setting_bin_attr)
  %29 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %30 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %29, i32 0, i32 2
  %31 = call i32 @sysfs_remove_bin_file(i32* %30, i32* @cc_table_bin_attr)
  %32 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %33 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %32, i32 0, i32 2
  %34 = call i32 @kobject_put(i32* %33)
  br label %35

35:                                               ; preds = %25, %20, %11
  %36 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %37 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %36, i32 0, i32 1
  %38 = call i32 @kobject_put(i32* %37)
  %39 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %40 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %39, i32 0, i32 0
  %41 = call i32 @kobject_put(i32* %40)
  br label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %5

45:                                               ; preds = %5
  ret void
}

declare dso_local i32 @sysfs_remove_bin_file(i32*, i32*) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
