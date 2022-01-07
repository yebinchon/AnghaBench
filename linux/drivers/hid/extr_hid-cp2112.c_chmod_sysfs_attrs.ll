; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cp2112.c_chmod_sysfs_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cp2112.c_chmod_sysfs_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.attribute** }
%struct.attribute = type { i32 }
%struct.hid_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CP2112_LOCK_BYTE = common dso_local global i32 0, align 4
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"error reading lock byte: %d\0A\00", align 1
@cp2112_attr_group = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@S_IWUSR = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"error chmoding sysfs file %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*)* @chmod_sysfs_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chmod_sysfs_attrs(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca %struct.attribute**, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %7 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %8 = load i32, i32* @CP2112_LOCK_BYTE, align 4
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %10 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %11 = call i32 @cp2112_hid_get(%struct.hid_device* %7, i32 %8, i32* %9, i32 8, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 8
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @hid_err(%struct.hid_device* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %61

19:                                               ; preds = %1
  %20 = load %struct.attribute**, %struct.attribute*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cp2112_attr_group, i32 0, i32 0), align 8
  store %struct.attribute** %20, %struct.attribute*** %3, align 8
  br label %21

21:                                               ; preds = %58, %19
  %22 = load %struct.attribute**, %struct.attribute*** %3, align 8
  %23 = load %struct.attribute*, %struct.attribute** %22, align 8
  %24 = icmp ne %struct.attribute* %23, null
  br i1 %24, label %25, label %61

25:                                               ; preds = %21
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @S_IWUSR, align 4
  %32 = load i32, i32* @S_IRUGO, align 4
  %33 = or i32 %31, %32
  br label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @S_IRUGO, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi i32 [ %33, %30 ], [ %35, %34 ]
  store i32 %37, i32* %6, align 4
  %38 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %39 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.attribute**, %struct.attribute*** %3, align 8
  %42 = load %struct.attribute*, %struct.attribute** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @sysfs_chmod_file(i32* %40, %struct.attribute* %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %36
  %48 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %49 = load %struct.attribute**, %struct.attribute*** %3, align 8
  %50 = load %struct.attribute*, %struct.attribute** %49, align 8
  %51 = getelementptr inbounds %struct.attribute, %struct.attribute* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @hid_err(%struct.hid_device* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %47, %36
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %54
  %59 = load %struct.attribute**, %struct.attribute*** %3, align 8
  %60 = getelementptr inbounds %struct.attribute*, %struct.attribute** %59, i32 1
  store %struct.attribute** %60, %struct.attribute*** %3, align 8
  br label %21

61:                                               ; preds = %15, %21
  ret void
}

declare dso_local i32 @cp2112_hid_get(%struct.hid_device*, i32, i32*, i32, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, i32) #1

declare dso_local i32 @sysfs_chmod_file(i32*, %struct.attribute*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
