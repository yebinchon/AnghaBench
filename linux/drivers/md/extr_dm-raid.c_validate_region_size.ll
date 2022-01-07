; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_validate_region_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_validate_region_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i8* }

@.str = private unnamed_addr constant [44 x i8] c"Choosing default region size of %lu sectors\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Choosing default region size of 4MiB\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Supplied region size is too large\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"Supplied region_size (%lu sectors) below minimum (%lu)\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Supplied region size is too small\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Region size is not a power of 2\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Region size is smaller than the chunk size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raid_set*, i64)* @validate_region_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_region_size(%struct.raid_set* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.raid_set*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.raid_set* %0, %struct.raid_set** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %8 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sdiv i32 %11, 2097152
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %6, align 8
  %14 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %15 = call i64 @rs_is_raid0(%struct.raid_set* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %95

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %18
  %22 = load i64, i64* %6, align 8
  %23 = icmp ugt i64 %22, 8192
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @roundup_pow_of_two(i64 %25)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 (i8*, ...) @DMINFO(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %27)
  br label %31

29:                                               ; preds = %21
  %30 = call i32 (i8*, ...) @DMINFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i64 8192, i64* %5, align 8
  br label %31

31:                                               ; preds = %29, %24
  br label %88

32:                                               ; preds = %18
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %35 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = icmp ugt i64 %33, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %43 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8** %45, align 8
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %95

48:                                               ; preds = %32
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @DMERR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i64 %53, i64 %54)
  %56 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %57 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8** %59, align 8
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %95

62:                                               ; preds = %48
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @is_power_of_2(i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %62
  %67 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %68 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8** %70, align 8
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %95

73:                                               ; preds = %62
  %74 = load i64, i64* %5, align 8
  %75 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %76 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %74, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %82 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i8** %84, align 8
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %95

87:                                               ; preds = %73
  br label %88

88:                                               ; preds = %87, %31
  %89 = load i64, i64* %5, align 8
  %90 = call i32 @to_bytes(i64 %89)
  %91 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %92 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i32 %90, i32* %94, align 8
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %88, %80, %66, %52, %41, %17
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i64 @rs_is_raid0(%struct.raid_set*) #1

declare dso_local i64 @roundup_pow_of_two(i64) #1

declare dso_local i32 @DMINFO(i8*, ...) #1

declare dso_local i32 @DMERR(i8*, i64, i64) #1

declare dso_local i32 @is_power_of_2(i64) #1

declare dso_local i32 @to_bytes(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
