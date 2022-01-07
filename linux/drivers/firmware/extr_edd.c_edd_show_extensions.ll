; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_edd.c_edd_show_extensions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_edd.c_edd_show_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edd_device = type { i32 }
%struct.edd_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EDD_EXT_FIXED_DISK_ACCESS = common dso_local global i32 0, align 4
@left = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Fixed disk access\0A\00", align 1
@EDD_EXT_DEVICE_LOCKING_AND_EJECTING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Device locking and ejecting\0A\00", align 1
@EDD_EXT_ENHANCED_DISK_DRIVE_SUPPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Enhanced Disk Drive support\0A\00", align 1
@EDD_EXT_64BIT_EXTENSIONS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"64-bit extensions\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edd_device*, i8*)* @edd_show_extensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edd_show_extensions(%struct.edd_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.edd_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.edd_info*, align 8
  %7 = alloca i8*, align 8
  store %struct.edd_device* %0, %struct.edd_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  store i8* %8, i8** %7, align 8
  %9 = load %struct.edd_device*, %struct.edd_device** %4, align 8
  %10 = icmp ne %struct.edd_device* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %88

14:                                               ; preds = %2
  %15 = load %struct.edd_device*, %struct.edd_device** %4, align 8
  %16 = call %struct.edd_info* @edd_dev_get_info(%struct.edd_device* %15)
  store %struct.edd_info* %16, %struct.edd_info** %6, align 8
  %17 = load %struct.edd_info*, %struct.edd_info** %6, align 8
  %18 = icmp ne %struct.edd_info* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %14
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %88

25:                                               ; preds = %19
  %26 = load %struct.edd_info*, %struct.edd_info** %6, align 8
  %27 = getelementptr inbounds %struct.edd_info, %struct.edd_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @EDD_EXT_FIXED_DISK_ACCESS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* @left, align 4
  %35 = call i32 @scnprintf(i8* %33, i32 %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %36 = load i8*, i8** %7, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %7, align 8
  br label %39

39:                                               ; preds = %32, %25
  %40 = load %struct.edd_info*, %struct.edd_info** %6, align 8
  %41 = getelementptr inbounds %struct.edd_info, %struct.edd_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @EDD_EXT_DEVICE_LOCKING_AND_EJECTING, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* @left, align 4
  %49 = call i32 @scnprintf(i8* %47, i32 %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i8*, i8** %7, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %7, align 8
  br label %53

53:                                               ; preds = %46, %39
  %54 = load %struct.edd_info*, %struct.edd_info** %6, align 8
  %55 = getelementptr inbounds %struct.edd_info, %struct.edd_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @EDD_EXT_ENHANCED_DISK_DRIVE_SUPPORT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* @left, align 4
  %63 = call i32 @scnprintf(i8* %61, i32 %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i8*, i8** %7, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %7, align 8
  br label %67

67:                                               ; preds = %60, %53
  %68 = load %struct.edd_info*, %struct.edd_info** %6, align 8
  %69 = getelementptr inbounds %struct.edd_info, %struct.edd_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @EDD_EXT_64BIT_EXTENSIONS, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* @left, align 4
  %77 = call i32 @scnprintf(i8* %75, i32 %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i8*, i8** %7, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %7, align 8
  br label %81

81:                                               ; preds = %74, %67
  %82 = load i8*, i8** %7, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = ptrtoint i8* %82 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %81, %22, %11
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.edd_info* @edd_dev_get_info(%struct.edd_device*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
