; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_w83795_check_dynamic_in_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_w83795_check_dynamic_in_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.i2c_client = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.w83795_data = type { i32 }

@W83795_REG_VID_CTRL = common dso_local global i32 0, align 4
@w83795_in = common dso_local global %struct.TYPE_6__** null, align 8
@S_IRUGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed to set in%d limits read-only (%d, %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"in%d limits set dynamically from VID\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @w83795_check_dynamic_in_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w83795_check_dynamic_in_limits(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.w83795_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %9 = call %struct.w83795_data* @i2c_get_clientdata(%struct.i2c_client* %8)
  store %struct.w83795_data* %9, %struct.w83795_data** %3, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %11 = load i32, i32* @W83795_REG_VID_CTRL, align 4
  %12 = call i32 @w83795_read(%struct.i2c_client* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 7
  %19 = icmp eq i32 %18, 7
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %1
  br label %87

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = ashr i32 %22, 3
  %24 = and i32 %23, 7
  %25 = load %struct.w83795_data*, %struct.w83795_data** %3, align 8
  %26 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %84, %21
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %87

30:                                               ; preds = %27
  %31 = load %struct.w83795_data*, %struct.w83795_data** %3, align 8
  %32 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = shl i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  br label %84

39:                                               ; preds = %30
  %40 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @w83795_in, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %43, i64 %45
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* @S_IRUGO, align 4
  %52 = call i32 @sysfs_chmod_file(i32* %42, i32* %50, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @w83795_in, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %56, i64 %58
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 3
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* @S_IRUGO, align 4
  %65 = call i32 @sysfs_chmod_file(i32* %55, i32* %63, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %39
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68, %39
  %72 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 0
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @dev_warn(%struct.TYPE_7__* %73, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %75, i32 %76)
  br label %83

78:                                               ; preds = %68
  %79 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %80 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %79, i32 0, i32 0
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @dev_info(%struct.TYPE_7__* %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %78, %71
  br label %84

84:                                               ; preds = %83, %38
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %27

87:                                               ; preds = %20, %27
  ret void
}

declare dso_local %struct.w83795_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @w83795_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @sysfs_chmod_file(i32*, i32*, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_7__*, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_7__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
