; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-dust.c_dust_ctr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-dust.c_dust_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i8*, i32, i32, %struct.dust_device*, i32, i32 }
%struct.dust_device = type { i32, i32, i64, i32, i32, i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Invalid argument count\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid block size parameter\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Block size must be at least 512\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Block size must be a power of 2\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Block size is too large\00", align 1
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"%llu%c\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Invalid device offset sector\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"Cannot allocate context\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"Device lookup failed\00", align 1
@RB_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**)* @dust_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dust_ctr(%struct.dm_target* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.dust_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i64 2097152, i64* %13, align 8
  %15 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %16 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %13, align 8
  %19 = call i64 @min(i32 %17, i64 %18)
  store i64 %19, i64* %14, align 8
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 3
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %24 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %157

27:                                               ; preds = %3
  %28 = load i8**, i8*** %7, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 2
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @kstrtouint(i8* %30, i32 10, i32* %11)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %33, %27
  %37 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %38 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %38, align 8
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %157

41:                                               ; preds = %33
  %42 = load i32, i32* %11, align 4
  %43 = icmp ult i32 %42, 512
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %46 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %45, i32 0, i32 0
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8** %46, align 8
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %157

49:                                               ; preds = %41
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @is_power_of_2(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %55 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %54, i32 0, i32 0
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8** %55, align 8
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %157

58:                                               ; preds = %49
  %59 = load i32, i32* %11, align 4
  %60 = call i64 @to_sector(i32 %59)
  %61 = load i64, i64* %14, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %65 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %64, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8** %65, align 8
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %157

68:                                               ; preds = %58
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @SECTOR_SHIFT, align 4
  %71 = lshr i32 %69, %70
  store i32 %71, i32* %12, align 4
  %72 = load i8**, i8*** %7, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @sscanf(i8* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64* %9, i8* %10)
  %76 = icmp ne i32 %75, 1
  br i1 %76, label %81, label %77

77:                                               ; preds = %68
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %9, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %77, %68
  %82 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %83 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %82, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8** %83, align 8
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %157

86:                                               ; preds = %77
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call %struct.dust_device* @kzalloc(i32 56, i32 %87)
  store %struct.dust_device* %88, %struct.dust_device** %8, align 8
  %89 = load %struct.dust_device*, %struct.dust_device** %8, align 8
  %90 = icmp eq %struct.dust_device* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %93 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %92, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8** %93, align 8
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %157

96:                                               ; preds = %86
  %97 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %98 = load i8**, i8*** %7, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 0
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %102 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @dm_table_get_mode(i32 %103)
  %105 = load %struct.dust_device*, %struct.dust_device** %8, align 8
  %106 = getelementptr inbounds %struct.dust_device, %struct.dust_device* %105, i32 0, i32 9
  %107 = call i64 @dm_get_device(%struct.dm_target* %97, i8* %100, i32 %104, i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %96
  %110 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %111 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %110, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8** %111, align 8
  %112 = load %struct.dust_device*, %struct.dust_device** %8, align 8
  %113 = call i32 @kfree(%struct.dust_device* %112)
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  br label %157

116:                                              ; preds = %96
  %117 = load i32, i32* %12, align 4
  %118 = load %struct.dust_device*, %struct.dust_device** %8, align 8
  %119 = getelementptr inbounds %struct.dust_device, %struct.dust_device* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.dust_device*, %struct.dust_device** %8, align 8
  %122 = getelementptr inbounds %struct.dust_device, %struct.dust_device* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load i64, i64* %9, align 8
  %124 = load %struct.dust_device*, %struct.dust_device** %8, align 8
  %125 = getelementptr inbounds %struct.dust_device, %struct.dust_device* %124, i32 0, i32 2
  store i64 %123, i64* %125, align 8
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @__ffs(i32 %126)
  %128 = load %struct.dust_device*, %struct.dust_device** %8, align 8
  %129 = getelementptr inbounds %struct.dust_device, %struct.dust_device* %128, i32 0, i32 8
  store i32 %127, i32* %129, align 4
  %130 = load %struct.dust_device*, %struct.dust_device** %8, align 8
  %131 = getelementptr inbounds %struct.dust_device, %struct.dust_device* %130, i32 0, i32 3
  store i32 0, i32* %131, align 8
  %132 = load i32, i32* @RB_ROOT, align 4
  %133 = load %struct.dust_device*, %struct.dust_device** %8, align 8
  %134 = getelementptr inbounds %struct.dust_device, %struct.dust_device* %133, i32 0, i32 7
  store i32 %132, i32* %134, align 8
  %135 = load %struct.dust_device*, %struct.dust_device** %8, align 8
  %136 = getelementptr inbounds %struct.dust_device, %struct.dust_device* %135, i32 0, i32 6
  store i64 0, i64* %136, align 8
  %137 = load %struct.dust_device*, %struct.dust_device** %8, align 8
  %138 = getelementptr inbounds %struct.dust_device, %struct.dust_device* %137, i32 0, i32 5
  %139 = call i32 @spin_lock_init(i32* %138)
  %140 = load %struct.dust_device*, %struct.dust_device** %8, align 8
  %141 = getelementptr inbounds %struct.dust_device, %struct.dust_device* %140, i32 0, i32 4
  store i32 0, i32* %141, align 4
  %142 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %143 = load %struct.dust_device*, %struct.dust_device** %8, align 8
  %144 = getelementptr inbounds %struct.dust_device, %struct.dust_device* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i64 @dm_set_target_max_io_len(%struct.dm_target* %142, i32 %145)
  %147 = icmp ne i64 %146, 0
  %148 = zext i1 %147 to i32
  %149 = call i32 @BUG_ON(i32 %148)
  %150 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %151 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %150, i32 0, i32 1
  store i32 1, i32* %151, align 8
  %152 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %153 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %152, i32 0, i32 2
  store i32 1, i32* %153, align 4
  %154 = load %struct.dust_device*, %struct.dust_device** %8, align 8
  %155 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %156 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %155, i32 0, i32 3
  store %struct.dust_device* %154, %struct.dust_device** %156, align 8
  store i32 0, i32* %4, align 4
  br label %157

157:                                              ; preds = %116, %109, %91, %81, %63, %53, %44, %36, %22
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i64 @min(i32, i64) #1

declare dso_local i64 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i64 @to_sector(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i8*) #1

declare dso_local %struct.dust_device* @kzalloc(i32, i32) #1

declare dso_local i64 @dm_get_device(%struct.dm_target*, i8*, i32, i32*) #1

declare dso_local i32 @dm_table_get_mode(i32) #1

declare dso_local i32 @kfree(%struct.dust_device*) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @dm_set_target_max_io_len(%struct.dm_target*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
