; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-linear.c_linear_ctr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-linear.c_linear_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i8*, i32, i32, i32, i32, i32, %struct.linear_c*, i32 }
%struct.linear_c = type { i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Invalid argument count\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot allocate linear context\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%llu%c\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Invalid device sector\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Device lookup failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**)* @linear_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linear_ctr(%struct.dm_target* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.linear_c*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 2
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %16 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %82

19:                                               ; preds = %3
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.linear_c* @kmalloc(i32 16, i32 %20)
  store %struct.linear_c* %21, %struct.linear_c** %8, align 8
  %22 = load %struct.linear_c*, %struct.linear_c** %8, align 8
  %23 = icmp eq %struct.linear_c* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %26 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8** %26, align 8
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %82

29:                                               ; preds = %19
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %11, align 4
  %32 = load i8**, i8*** %7, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @sscanf(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64* %9, i8* %10)
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37, %29
  %42 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %43 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %42, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %43, align 8
  br label %78

44:                                               ; preds = %37
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.linear_c*, %struct.linear_c** %8, align 8
  %47 = getelementptr inbounds %struct.linear_c, %struct.linear_c* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %49 = load i8**, i8*** %7, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %53 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dm_table_get_mode(i32 %54)
  %56 = load %struct.linear_c*, %struct.linear_c** %8, align 8
  %57 = getelementptr inbounds %struct.linear_c, %struct.linear_c* %56, i32 0, i32 1
  %58 = call i32 @dm_get_device(%struct.dm_target* %48, i8* %51, i32 %55, i32* %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %44
  %62 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %63 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %62, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8** %63, align 8
  br label %78

64:                                               ; preds = %44
  %65 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %66 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %65, i32 0, i32 1
  store i32 1, i32* %66, align 8
  %67 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %68 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %67, i32 0, i32 2
  store i32 1, i32* %68, align 4
  %69 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %70 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %69, i32 0, i32 3
  store i32 1, i32* %70, align 8
  %71 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %72 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %71, i32 0, i32 4
  store i32 1, i32* %72, align 4
  %73 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %74 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %73, i32 0, i32 5
  store i32 1, i32* %74, align 8
  %75 = load %struct.linear_c*, %struct.linear_c** %8, align 8
  %76 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %77 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %76, i32 0, i32 6
  store %struct.linear_c* %75, %struct.linear_c** %77, align 8
  store i32 0, i32* %4, align 4
  br label %82

78:                                               ; preds = %61, %41
  %79 = load %struct.linear_c*, %struct.linear_c** %8, align 8
  %80 = call i32 @kfree(%struct.linear_c* %79)
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %78, %64, %24, %14
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.linear_c* @kmalloc(i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i8*) #1

declare dso_local i32 @dm_get_device(%struct.dm_target*, i8*, i32, i32*) #1

declare dso_local i32 @dm_table_get_mode(i32) #1

declare dso_local i32 @kfree(%struct.linear_c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
