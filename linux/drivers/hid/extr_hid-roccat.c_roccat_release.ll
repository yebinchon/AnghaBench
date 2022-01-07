; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat.c_roccat_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat.c_roccat_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roccat_reader = type { i32, i64, i32, i32, i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.roccat_reader* }
%struct.roccat_device = type { i32, i64, i32, i32, i32 }

@devices_lock = common dso_local global i32 0, align 4
@devices = common dso_local global %struct.roccat_reader** null, align 8
@.str = private unnamed_addr constant [43 x i8] c"roccat device with minor %d doesn't exist\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PM_HINT_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @roccat_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @roccat_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.roccat_reader*, align 8
  %8 = alloca %struct.roccat_device*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32 @iminor(%struct.inode* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.roccat_reader*, %struct.roccat_reader** %12, align 8
  store %struct.roccat_reader* %13, %struct.roccat_reader** %7, align 8
  %14 = call i32 @mutex_lock(i32* @devices_lock)
  %15 = load %struct.roccat_reader**, %struct.roccat_reader*** @devices, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.roccat_reader*, %struct.roccat_reader** %15, i64 %17
  %19 = load %struct.roccat_reader*, %struct.roccat_reader** %18, align 8
  %20 = bitcast %struct.roccat_reader* %19 to %struct.roccat_device*
  store %struct.roccat_device* %20, %struct.roccat_device** %8, align 8
  %21 = load %struct.roccat_device*, %struct.roccat_device** %8, align 8
  %22 = icmp ne %struct.roccat_device* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = call i32 @mutex_unlock(i32* @devices_lock)
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @pr_emerg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %68

29:                                               ; preds = %2
  %30 = load %struct.roccat_device*, %struct.roccat_device** %8, align 8
  %31 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %30, i32 0, i32 3
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.roccat_reader*, %struct.roccat_reader** %7, align 8
  %34 = getelementptr inbounds %struct.roccat_reader, %struct.roccat_reader* %33, i32 0, i32 4
  %35 = call i32 @list_del(i32* %34)
  %36 = load %struct.roccat_device*, %struct.roccat_device** %8, align 8
  %37 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %36, i32 0, i32 3
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.roccat_reader*, %struct.roccat_reader** %7, align 8
  %40 = call i32 @kfree(%struct.roccat_reader* %39)
  %41 = load %struct.roccat_device*, %struct.roccat_device** %8, align 8
  %42 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %66, label %46

46:                                               ; preds = %29
  %47 = load %struct.roccat_device*, %struct.roccat_device** %8, align 8
  %48 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load %struct.roccat_device*, %struct.roccat_device** %8, align 8
  %53 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @PM_HINT_NORMAL, align 4
  %56 = call i32 @hid_hw_power(i32 %54, i32 %55)
  %57 = load %struct.roccat_device*, %struct.roccat_device** %8, align 8
  %58 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @hid_hw_close(i32 %59)
  br label %65

61:                                               ; preds = %46
  %62 = load %struct.roccat_device*, %struct.roccat_device** %8, align 8
  %63 = bitcast %struct.roccat_device* %62 to %struct.roccat_reader*
  %64 = call i32 @kfree(%struct.roccat_reader* %63)
  br label %65

65:                                               ; preds = %61, %51
  br label %66

66:                                               ; preds = %65, %29
  %67 = call i32 @mutex_unlock(i32* @devices_lock)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %23
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_emerg(i8*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.roccat_reader*) #1

declare dso_local i32 @hid_hw_power(i32, i32) #1

declare dso_local i32 @hid_hw_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
