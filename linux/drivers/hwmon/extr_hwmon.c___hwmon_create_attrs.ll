; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_hwmon.c___hwmon_create_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_hwmon.c___hwmon_create_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute = type { i32 }
%struct.device = type { i32 }
%struct.hwmon_chip_info = type { i64*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.attribute** (%struct.device*, i8*, %struct.hwmon_chip_info*)* @__hwmon_create_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.attribute** @__hwmon_create_attrs(%struct.device* %0, i8* %1, %struct.hwmon_chip_info* %2) #0 {
  %4 = alloca %struct.attribute**, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hwmon_chip_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.attribute**, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.hwmon_chip_info* %2, %struct.hwmon_chip_info** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %35, %3
  %14 = load %struct.hwmon_chip_info*, %struct.hwmon_chip_info** %7, align 8
  %15 = getelementptr inbounds %struct.hwmon_chip_info, %struct.hwmon_chip_info* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %13
  %23 = load %struct.hwmon_chip_info*, %struct.hwmon_chip_info** %7, align 8
  %24 = getelementptr inbounds %struct.hwmon_chip_info, %struct.hwmon_chip_info* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @hwmon_num_channel_attrs(i64 %29)
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %22
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %13

38:                                               ; preds = %13
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.attribute** @ERR_PTR(i32 %43)
  store %struct.attribute** %44, %struct.attribute*** %4, align 8
  br label %99

45:                                               ; preds = %38
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.attribute** @devm_kcalloc(%struct.device* %46, i32 %48, i32 8, i32 %49)
  store %struct.attribute** %50, %struct.attribute*** %12, align 8
  %51 = load %struct.attribute**, %struct.attribute*** %12, align 8
  %52 = icmp ne %struct.attribute** %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %45
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  %56 = call %struct.attribute** @ERR_PTR(i32 %55)
  store %struct.attribute** %56, %struct.attribute*** %4, align 8
  br label %99

57:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %94, %57
  %59 = load %struct.hwmon_chip_info*, %struct.hwmon_chip_info** %7, align 8
  %60 = getelementptr inbounds %struct.hwmon_chip_info, %struct.hwmon_chip_info* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %97

67:                                               ; preds = %58
  %68 = load %struct.device*, %struct.device** %5, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load %struct.attribute**, %struct.attribute*** %12, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.attribute*, %struct.attribute** %70, i64 %72
  %74 = load %struct.hwmon_chip_info*, %struct.hwmon_chip_info** %7, align 8
  %75 = getelementptr inbounds %struct.hwmon_chip_info, %struct.hwmon_chip_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.hwmon_chip_info*, %struct.hwmon_chip_info** %7, align 8
  %78 = getelementptr inbounds %struct.hwmon_chip_info, %struct.hwmon_chip_info* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @hwmon_genattrs(%struct.device* %68, i8* %69, %struct.attribute** %73, i32 %76, i64 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %67
  %88 = load i32, i32* %8, align 4
  %89 = call %struct.attribute** @ERR_PTR(i32 %88)
  store %struct.attribute** %89, %struct.attribute*** %4, align 8
  br label %99

90:                                               ; preds = %67
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %58

97:                                               ; preds = %58
  %98 = load %struct.attribute**, %struct.attribute*** %12, align 8
  store %struct.attribute** %98, %struct.attribute*** %4, align 8
  br label %99

99:                                               ; preds = %97, %87, %53, %41
  %100 = load %struct.attribute**, %struct.attribute*** %4, align 8
  ret %struct.attribute** %100
}

declare dso_local i64 @hwmon_num_channel_attrs(i64) #1

declare dso_local %struct.attribute** @ERR_PTR(i32) #1

declare dso_local %struct.attribute** @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @hwmon_genattrs(%struct.device*, i8*, %struct.attribute**, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
