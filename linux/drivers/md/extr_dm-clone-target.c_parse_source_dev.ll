; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_parse_source_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_parse_source_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clone = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.dm_arg_set = type { i32 }

@FMODE_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Error opening source device\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Device size larger than source device\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clone*, %struct.dm_arg_set*, i8**)* @parse_source_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_source_dev(%struct.clone* %0, %struct.dm_arg_set* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clone*, align 8
  %6 = alloca %struct.dm_arg_set*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.clone* %0, %struct.clone** %5, align 8
  store %struct.dm_arg_set* %1, %struct.dm_arg_set** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load %struct.clone*, %struct.clone** %5, align 8
  %11 = getelementptr inbounds %struct.clone, %struct.clone* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = load %struct.dm_arg_set*, %struct.dm_arg_set** %6, align 8
  %14 = call i32 @dm_shift_arg(%struct.dm_arg_set* %13)
  %15 = load i32, i32* @FMODE_READ, align 4
  %16 = load %struct.clone*, %struct.clone** %5, align 8
  %17 = getelementptr inbounds %struct.clone, %struct.clone* %16, i32 0, i32 0
  %18 = call i32 @dm_get_device(%struct.TYPE_3__* %12, i32 %14, i32 %15, i32* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %48

24:                                               ; preds = %3
  %25 = load %struct.clone*, %struct.clone** %5, align 8
  %26 = getelementptr inbounds %struct.clone, %struct.clone* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @get_dev_size(i32 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.clone*, %struct.clone** %5, align 8
  %31 = getelementptr inbounds %struct.clone, %struct.clone* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %29, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %24
  %37 = load %struct.clone*, %struct.clone** %5, align 8
  %38 = getelementptr inbounds %struct.clone, %struct.clone* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load %struct.clone*, %struct.clone** %5, align 8
  %41 = getelementptr inbounds %struct.clone, %struct.clone* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dm_put_device(%struct.TYPE_3__* %39, i32 %42)
  %44 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8** %44, align 8
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %48

47:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %36, %21
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @dm_get_device(%struct.TYPE_3__*, i32, i32, i32*) #1

declare dso_local i32 @dm_shift_arg(%struct.dm_arg_set*) #1

declare dso_local i64 @get_dev_size(i32) #1

declare dso_local i32 @dm_put_device(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
