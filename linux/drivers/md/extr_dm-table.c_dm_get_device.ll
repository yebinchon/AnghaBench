; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_get_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_get_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.dm_table* }
%struct.dm_table = type { i32, i32 }
%struct.dm_dev = type { i32 }
%struct.dm_dev_internal = type { %struct.dm_dev*, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_get_device(%struct.dm_target* %0, i8* %1, i32 %2, %struct.dm_dev** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_dev**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dm_dev_internal*, align 8
  %13 = alloca %struct.dm_table*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.dm_dev** %3, %struct.dm_dev*** %9, align 8
  %14 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %15 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %14, i32 0, i32 0
  %16 = load %struct.dm_table*, %struct.dm_table** %15, align 8
  store %struct.dm_table* %16, %struct.dm_table** %13, align 8
  %17 = load %struct.dm_table*, %struct.dm_table** %13, align 8
  %18 = icmp ne %struct.dm_table* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @dm_get_dev_t(i8* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %103

29:                                               ; preds = %4
  %30 = load %struct.dm_table*, %struct.dm_table** %13, align 8
  %31 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %30, i32 0, i32 1
  %32 = load i32, i32* %11, align 4
  %33 = call %struct.dm_dev_internal* @find_device(i32* %31, i32 %32)
  store %struct.dm_dev_internal* %33, %struct.dm_dev_internal** %12, align 8
  %34 = load %struct.dm_dev_internal*, %struct.dm_dev_internal** %12, align 8
  %35 = icmp ne %struct.dm_dev_internal* %34, null
  br i1 %35, label %67, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.dm_dev_internal* @kmalloc(i32 16, i32 %37)
  store %struct.dm_dev_internal* %38, %struct.dm_dev_internal** %12, align 8
  %39 = load %struct.dm_dev_internal*, %struct.dm_dev_internal** %12, align 8
  %40 = icmp ne %struct.dm_dev_internal* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %103

44:                                               ; preds = %36
  %45 = load %struct.dm_table*, %struct.dm_table** %13, align 8
  %46 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.dm_dev_internal*, %struct.dm_dev_internal** %12, align 8
  %51 = getelementptr inbounds %struct.dm_dev_internal, %struct.dm_dev_internal* %50, i32 0, i32 0
  %52 = call i32 @dm_get_table_device(i32 %47, i32 %48, i32 %49, %struct.dm_dev** %51)
  store i32 %52, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load %struct.dm_dev_internal*, %struct.dm_dev_internal** %12, align 8
  %56 = call i32 @kfree(%struct.dm_dev_internal* %55)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %5, align 4
  br label %103

58:                                               ; preds = %44
  %59 = load %struct.dm_dev_internal*, %struct.dm_dev_internal** %12, align 8
  %60 = getelementptr inbounds %struct.dm_dev_internal, %struct.dm_dev_internal* %59, i32 0, i32 1
  %61 = call i32 @refcount_set(i32* %60, i32 1)
  %62 = load %struct.dm_dev_internal*, %struct.dm_dev_internal** %12, align 8
  %63 = getelementptr inbounds %struct.dm_dev_internal, %struct.dm_dev_internal* %62, i32 0, i32 2
  %64 = load %struct.dm_table*, %struct.dm_table** %13, align 8
  %65 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %64, i32 0, i32 1
  %66 = call i32 @list_add(i32* %63, i32* %65)
  br label %98

67:                                               ; preds = %29
  %68 = load %struct.dm_dev_internal*, %struct.dm_dev_internal** %12, align 8
  %69 = getelementptr inbounds %struct.dm_dev_internal, %struct.dm_dev_internal* %68, i32 0, i32 0
  %70 = load %struct.dm_dev*, %struct.dm_dev** %69, align 8
  %71 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.dm_dev_internal*, %struct.dm_dev_internal** %12, align 8
  %75 = getelementptr inbounds %struct.dm_dev_internal, %struct.dm_dev_internal* %74, i32 0, i32 0
  %76 = load %struct.dm_dev*, %struct.dm_dev** %75, align 8
  %77 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %73, %78
  %80 = icmp ne i32 %72, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %67
  %82 = load %struct.dm_dev_internal*, %struct.dm_dev_internal** %12, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.dm_table*, %struct.dm_table** %13, align 8
  %85 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @upgrade_mode(%struct.dm_dev_internal* %82, i32 %83, i32 %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %5, align 4
  br label %103

92:                                               ; preds = %81
  br label %93

93:                                               ; preds = %92, %67
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.dm_dev_internal*, %struct.dm_dev_internal** %12, align 8
  %96 = getelementptr inbounds %struct.dm_dev_internal, %struct.dm_dev_internal* %95, i32 0, i32 1
  %97 = call i32 @refcount_inc(i32* %96)
  br label %98

98:                                               ; preds = %94, %58
  %99 = load %struct.dm_dev_internal*, %struct.dm_dev_internal** %12, align 8
  %100 = getelementptr inbounds %struct.dm_dev_internal, %struct.dm_dev_internal* %99, i32 0, i32 0
  %101 = load %struct.dm_dev*, %struct.dm_dev** %100, align 8
  %102 = load %struct.dm_dev**, %struct.dm_dev*** %9, align 8
  store %struct.dm_dev* %101, %struct.dm_dev** %102, align 8
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %98, %90, %54, %41, %26
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dm_get_dev_t(i8*) #1

declare dso_local %struct.dm_dev_internal* @find_device(i32*, i32) #1

declare dso_local %struct.dm_dev_internal* @kmalloc(i32, i32) #1

declare dso_local i32 @dm_get_table_device(i32, i32, i32, %struct.dm_dev**) #1

declare dso_local i32 @kfree(%struct.dm_dev_internal*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @upgrade_mode(%struct.dm_dev_internal*, i32, i32) #1

declare dso_local i32 @refcount_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
