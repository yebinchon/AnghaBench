; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_cpc925_edac.c_cpc925_del_edac_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_cpc925_edac.c_cpc925_del_edac_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpc925_dev_info = type { i32, i32 (%struct.cpc925_dev_info*)*, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@cpc925_devs = common dso_local global %struct.cpc925_dev_info* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"Successfully deleted edac device for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cpc925_del_edac_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpc925_del_edac_devices() #0 {
  %1 = alloca %struct.cpc925_dev_info*, align 8
  %2 = load %struct.cpc925_dev_info*, %struct.cpc925_dev_info** @cpc925_devs, align 8
  %3 = getelementptr inbounds %struct.cpc925_dev_info, %struct.cpc925_dev_info* %2, i64 0
  store %struct.cpc925_dev_info* %3, %struct.cpc925_dev_info** %1, align 8
  br label %4

4:                                                ; preds = %45, %0
  %5 = load %struct.cpc925_dev_info*, %struct.cpc925_dev_info** %1, align 8
  %6 = getelementptr inbounds %struct.cpc925_dev_info, %struct.cpc925_dev_info* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %48

9:                                                ; preds = %4
  %10 = load %struct.cpc925_dev_info*, %struct.cpc925_dev_info** %1, align 8
  %11 = getelementptr inbounds %struct.cpc925_dev_info, %struct.cpc925_dev_info* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = load %struct.cpc925_dev_info*, %struct.cpc925_dev_info** %1, align 8
  %16 = getelementptr inbounds %struct.cpc925_dev_info, %struct.cpc925_dev_info* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @edac_device_del_device(i32 %19)
  %21 = load %struct.cpc925_dev_info*, %struct.cpc925_dev_info** %1, align 8
  %22 = getelementptr inbounds %struct.cpc925_dev_info, %struct.cpc925_dev_info* %21, i32 0, i32 3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = call i32 @edac_device_free_ctl_info(%struct.TYPE_2__* %23)
  %25 = load %struct.cpc925_dev_info*, %struct.cpc925_dev_info** %1, align 8
  %26 = getelementptr inbounds %struct.cpc925_dev_info, %struct.cpc925_dev_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @platform_device_unregister(i32 %27)
  br label %29

29:                                               ; preds = %14, %9
  %30 = load %struct.cpc925_dev_info*, %struct.cpc925_dev_info** %1, align 8
  %31 = getelementptr inbounds %struct.cpc925_dev_info, %struct.cpc925_dev_info* %30, i32 0, i32 1
  %32 = load i32 (%struct.cpc925_dev_info*)*, i32 (%struct.cpc925_dev_info*)** %31, align 8
  %33 = icmp ne i32 (%struct.cpc925_dev_info*)* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.cpc925_dev_info*, %struct.cpc925_dev_info** %1, align 8
  %36 = getelementptr inbounds %struct.cpc925_dev_info, %struct.cpc925_dev_info* %35, i32 0, i32 1
  %37 = load i32 (%struct.cpc925_dev_info*)*, i32 (%struct.cpc925_dev_info*)** %36, align 8
  %38 = load %struct.cpc925_dev_info*, %struct.cpc925_dev_info** %1, align 8
  %39 = call i32 %37(%struct.cpc925_dev_info* %38)
  br label %40

40:                                               ; preds = %34, %29
  %41 = load %struct.cpc925_dev_info*, %struct.cpc925_dev_info** %1, align 8
  %42 = getelementptr inbounds %struct.cpc925_dev_info, %struct.cpc925_dev_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %40
  %46 = load %struct.cpc925_dev_info*, %struct.cpc925_dev_info** %1, align 8
  %47 = getelementptr inbounds %struct.cpc925_dev_info, %struct.cpc925_dev_info* %46, i32 1
  store %struct.cpc925_dev_info* %47, %struct.cpc925_dev_info** %1, align 8
  br label %4

48:                                               ; preds = %4
  ret void
}

declare dso_local i32 @edac_device_del_device(i32) #1

declare dso_local i32 @edac_device_free_ctl_info(%struct.TYPE_2__*) #1

declare dso_local i32 @platform_device_unregister(i32) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
