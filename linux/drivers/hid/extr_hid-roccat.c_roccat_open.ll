; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat.c_roccat_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat.c_roccat_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roccat_device = type { i32, i32, i32, i32, i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.roccat_reader* }
%struct.roccat_reader = type { i32, i32, %struct.roccat_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@devices_lock = common dso_local global i32 0, align 4
@devices = common dso_local global %struct.roccat_device** null, align 8
@.str = private unnamed_addr constant [43 x i8] c"roccat device with minor %d doesn't exist\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PM_HINT_FULLON = common dso_local global i32 0, align 4
@PM_HINT_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @roccat_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @roccat_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.roccat_reader*, align 8
  %8 = alloca %struct.roccat_device*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call i32 @iminor(%struct.inode* %10)
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.roccat_reader* @kzalloc(i32 16, i32 %12)
  store %struct.roccat_reader* %13, %struct.roccat_reader** %7, align 8
  %14 = load %struct.roccat_reader*, %struct.roccat_reader** %7, align 8
  %15 = icmp ne %struct.roccat_reader* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %103

19:                                               ; preds = %2
  %20 = call i32 @mutex_lock(i32* @devices_lock)
  %21 = load %struct.roccat_device**, %struct.roccat_device*** @devices, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.roccat_device*, %struct.roccat_device** %21, i64 %23
  %25 = load %struct.roccat_device*, %struct.roccat_device** %24, align 8
  store %struct.roccat_device* %25, %struct.roccat_device** %8, align 8
  %26 = load %struct.roccat_device*, %struct.roccat_device** %8, align 8
  %27 = icmp ne %struct.roccat_device* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @pr_emerg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  br label %94

33:                                               ; preds = %19
  %34 = load %struct.roccat_device*, %struct.roccat_device** %8, align 8
  %35 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.roccat_device*, %struct.roccat_device** %8, align 8
  %38 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = icmp ne i32 %39, 0
  br i1 %41, label %73, label %42

42:                                               ; preds = %33
  %43 = load %struct.roccat_device*, %struct.roccat_device** %8, align 8
  %44 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PM_HINT_FULLON, align 4
  %47 = call i32 @hid_hw_power(i32 %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load %struct.roccat_device*, %struct.roccat_device** %8, align 8
  %52 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %52, align 4
  br label %90

55:                                               ; preds = %42
  %56 = load %struct.roccat_device*, %struct.roccat_device** %8, align 8
  %57 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @hid_hw_open(i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %55
  %63 = load %struct.roccat_device*, %struct.roccat_device** %8, align 8
  %64 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @PM_HINT_NORMAL, align 4
  %67 = call i32 @hid_hw_power(i32 %65, i32 %66)
  %68 = load %struct.roccat_device*, %struct.roccat_device** %8, align 8
  %69 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %69, align 4
  br label %90

72:                                               ; preds = %55
  br label %73

73:                                               ; preds = %72, %33
  %74 = load %struct.roccat_device*, %struct.roccat_device** %8, align 8
  %75 = load %struct.roccat_reader*, %struct.roccat_reader** %7, align 8
  %76 = getelementptr inbounds %struct.roccat_reader, %struct.roccat_reader* %75, i32 0, i32 2
  store %struct.roccat_device* %74, %struct.roccat_device** %76, align 8
  %77 = load %struct.roccat_device*, %struct.roccat_device** %8, align 8
  %78 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.roccat_reader*, %struct.roccat_reader** %7, align 8
  %81 = getelementptr inbounds %struct.roccat_reader, %struct.roccat_reader* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.roccat_reader*, %struct.roccat_reader** %7, align 8
  %83 = getelementptr inbounds %struct.roccat_reader, %struct.roccat_reader* %82, i32 0, i32 0
  %84 = load %struct.roccat_device*, %struct.roccat_device** %8, align 8
  %85 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %84, i32 0, i32 1
  %86 = call i32 @list_add_tail(i32* %83, i32* %85)
  %87 = load %struct.roccat_reader*, %struct.roccat_reader** %7, align 8
  %88 = load %struct.file*, %struct.file** %5, align 8
  %89 = getelementptr inbounds %struct.file, %struct.file* %88, i32 0, i32 0
  store %struct.roccat_reader* %87, %struct.roccat_reader** %89, align 8
  br label %90

90:                                               ; preds = %73, %62, %50
  %91 = load %struct.roccat_device*, %struct.roccat_device** %8, align 8
  %92 = getelementptr inbounds %struct.roccat_device, %struct.roccat_device* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  br label %94

94:                                               ; preds = %90, %28
  %95 = call i32 @mutex_unlock(i32* @devices_lock)
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load %struct.roccat_reader*, %struct.roccat_reader** %7, align 8
  %100 = call i32 @kfree(%struct.roccat_reader* %99)
  br label %101

101:                                              ; preds = %98, %94
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %16
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local %struct.roccat_reader* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pr_emerg(i8*, i32) #1

declare dso_local i32 @hid_hw_power(i32, i32) #1

declare dso_local i32 @hid_hw_open(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.roccat_reader*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
