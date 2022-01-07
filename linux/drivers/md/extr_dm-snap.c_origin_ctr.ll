; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_origin_ctr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_origin_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i8*, i32, %struct.dm_origin*, i32 }
%struct.dm_origin = type { %struct.dm_target*, i32 }

@.str = private unnamed_addr constant [38 x i8] c"origin: incorrect number of arguments\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Cannot allocate private origin structure\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Cannot get target device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**)* @origin_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @origin_ctr(%struct.dm_target* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_origin*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %14 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %58

17:                                               ; preds = %3
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.dm_origin* @kmalloc(i32 16, i32 %18)
  store %struct.dm_origin* %19, %struct.dm_origin** %9, align 8
  %20 = load %struct.dm_origin*, %struct.dm_origin** %9, align 8
  %21 = icmp ne %struct.dm_origin* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %24 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8** %24, align 8
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %56

27:                                               ; preds = %17
  %28 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %29 = load i8**, i8*** %7, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %33 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dm_table_get_mode(i32 %34)
  %36 = load %struct.dm_origin*, %struct.dm_origin** %9, align 8
  %37 = getelementptr inbounds %struct.dm_origin, %struct.dm_origin* %36, i32 0, i32 1
  %38 = call i32 @dm_get_device(%struct.dm_target* %28, i8* %31, i32 %35, i32* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %27
  %42 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %43 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %42, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8** %43, align 8
  br label %53

44:                                               ; preds = %27
  %45 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %46 = load %struct.dm_origin*, %struct.dm_origin** %9, align 8
  %47 = getelementptr inbounds %struct.dm_origin, %struct.dm_origin* %46, i32 0, i32 0
  store %struct.dm_target* %45, %struct.dm_target** %47, align 8
  %48 = load %struct.dm_origin*, %struct.dm_origin** %9, align 8
  %49 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %50 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %49, i32 0, i32 2
  store %struct.dm_origin* %48, %struct.dm_origin** %50, align 8
  %51 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %52 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %51, i32 0, i32 1
  store i32 1, i32* %52, align 8
  store i32 0, i32* %4, align 4
  br label %58

53:                                               ; preds = %41
  %54 = load %struct.dm_origin*, %struct.dm_origin** %9, align 8
  %55 = call i32 @kfree(%struct.dm_origin* %54)
  br label %56

56:                                               ; preds = %53, %22
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %44, %12
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.dm_origin* @kmalloc(i32, i32) #1

declare dso_local i32 @dm_get_device(%struct.dm_target*, i8*, i32, i32*) #1

declare dso_local i32 @dm_table_get_mode(i32) #1

declare dso_local i32 @kfree(%struct.dm_origin*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
