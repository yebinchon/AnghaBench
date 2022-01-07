; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_altera_edac.c_altr_create_edacdev_dbgfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_altera_edac.c_altr_create_edacdev_dbgfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { %struct.altr_edac_device_dev* }
%struct.altr_edac_device_dev = type { i32, i32 }
%struct.edac_device_prv_data = type { i32 }

@CONFIG_EDAC_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"altr_trigger\00", align 1
@S_IWUSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edac_device_ctl_info*, %struct.edac_device_prv_data*)* @altr_create_edacdev_dbgfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @altr_create_edacdev_dbgfs(%struct.edac_device_ctl_info* %0, %struct.edac_device_prv_data* %1) #0 {
  %3 = alloca %struct.edac_device_ctl_info*, align 8
  %4 = alloca %struct.edac_device_prv_data*, align 8
  %5 = alloca %struct.altr_edac_device_dev*, align 8
  store %struct.edac_device_ctl_info* %0, %struct.edac_device_ctl_info** %3, align 8
  store %struct.edac_device_prv_data* %1, %struct.edac_device_prv_data** %4, align 8
  %6 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %7 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %6, i32 0, i32 0
  %8 = load %struct.altr_edac_device_dev*, %struct.altr_edac_device_dev** %7, align 8
  store %struct.altr_edac_device_dev* %8, %struct.altr_edac_device_dev** %5, align 8
  %9 = load i32, i32* @CONFIG_EDAC_DEBUG, align 4
  %10 = call i32 @IS_ENABLED(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %41

13:                                               ; preds = %2
  %14 = load %struct.altr_edac_device_dev*, %struct.altr_edac_device_dev** %5, align 8
  %15 = getelementptr inbounds %struct.altr_edac_device_dev, %struct.altr_edac_device_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @edac_debugfs_create_dir(i32 %16)
  %18 = load %struct.altr_edac_device_dev*, %struct.altr_edac_device_dev** %5, align 8
  %19 = getelementptr inbounds %struct.altr_edac_device_dev, %struct.altr_edac_device_dev* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.altr_edac_device_dev*, %struct.altr_edac_device_dev** %5, align 8
  %21 = getelementptr inbounds %struct.altr_edac_device_dev, %struct.altr_edac_device_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  br label %41

25:                                               ; preds = %13
  %26 = load i32, i32* @S_IWUSR, align 4
  %27 = load %struct.altr_edac_device_dev*, %struct.altr_edac_device_dev** %5, align 8
  %28 = getelementptr inbounds %struct.altr_edac_device_dev, %struct.altr_edac_device_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %31 = load %struct.edac_device_prv_data*, %struct.edac_device_prv_data** %4, align 8
  %32 = getelementptr inbounds %struct.edac_device_prv_data, %struct.edac_device_prv_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @edac_debugfs_create_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29, %struct.edac_device_ctl_info* %30, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %25
  %37 = load %struct.altr_edac_device_dev*, %struct.altr_edac_device_dev** %5, align 8
  %38 = getelementptr inbounds %struct.altr_edac_device_dev, %struct.altr_edac_device_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @debugfs_remove_recursive(i32 %39)
  br label %41

41:                                               ; preds = %12, %24, %36, %25
  ret void
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @edac_debugfs_create_dir(i32) #1

declare dso_local i32 @edac_debugfs_create_file(i8*, i32, i32, %struct.edac_device_ctl_info*, i32) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
