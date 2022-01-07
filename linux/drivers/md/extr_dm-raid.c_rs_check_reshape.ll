; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_rs_check_reshape.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_rs_check_reshape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { %struct.TYPE_4__*, %struct.mddev }
%struct.TYPE_4__ = type { i8* }
%struct.mddev = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Reshape not supported\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Can't reshape degraded raid set\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Convert request on recovering raid set prohibited\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"raid set already reshaping!\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Reshaping only supported for raid1/4/5/6/10\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raid_set*)* @rs_check_reshape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_check_reshape(%struct.raid_set* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.raid_set*, align 8
  %4 = alloca %struct.mddev*, align 8
  store %struct.raid_set* %0, %struct.raid_set** %3, align 8
  %5 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %6 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %5, i32 0, i32 1
  store %struct.mddev* %6, %struct.mddev** %4, align 8
  %7 = load %struct.mddev*, %struct.mddev** %4, align 8
  %8 = getelementptr inbounds %struct.mddev, %struct.mddev* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.mddev*, %struct.mddev** %4, align 8
  %13 = getelementptr inbounds %struct.mddev, %struct.mddev* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %20 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  br label %73

23:                                               ; preds = %11
  %24 = load %struct.mddev*, %struct.mddev** %4, align 8
  %25 = getelementptr inbounds %struct.mddev, %struct.mddev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %30 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8** %32, align 8
  br label %72

33:                                               ; preds = %23
  %34 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %35 = call i64 @rs_is_recovering(%struct.raid_set* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %39 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8** %41, align 8
  br label %71

42:                                               ; preds = %33
  %43 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %44 = call i64 @rs_is_reshaping(%struct.raid_set* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %48 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8** %50, align 8
  br label %70

51:                                               ; preds = %42
  %52 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %53 = call i64 @rs_is_raid1(%struct.raid_set* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %51
  %56 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %57 = call i64 @rs_is_raid10(%struct.raid_set* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %55
  %60 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %61 = call i64 @rs_is_raid456(%struct.raid_set* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %65 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8** %67, align 8
  br label %69

68:                                               ; preds = %59, %55, %51
  store i32 0, i32* %2, align 4
  br label %76

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %46
  br label %71

71:                                               ; preds = %70, %37
  br label %72

72:                                               ; preds = %71, %28
  br label %73

73:                                               ; preds = %72, %18
  %74 = load i32, i32* @EPERM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %73, %68
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i64 @rs_is_recovering(%struct.raid_set*) #1

declare dso_local i64 @rs_is_reshaping(%struct.raid_set*) #1

declare dso_local i64 @rs_is_raid1(%struct.raid_set*) #1

declare dso_local i64 @rs_is_raid10(%struct.raid_set*) #1

declare dso_local i64 @rs_is_raid456(%struct.raid_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
