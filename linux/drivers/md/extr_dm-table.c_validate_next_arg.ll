; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_validate_next_arg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_validate_next_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_arg = type { i32, i32, i8* }
%struct.dm_arg_set = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%u%c\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_arg*, %struct.dm_arg_set*, i32*, i8**, i32)* @validate_next_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_next_arg(%struct.dm_arg* %0, %struct.dm_arg_set* %1, i32* %2, i8** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_arg*, align 8
  %8 = alloca %struct.dm_arg_set*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  store %struct.dm_arg* %0, %struct.dm_arg** %7, align 8
  store %struct.dm_arg_set* %1, %struct.dm_arg_set** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.dm_arg_set*, %struct.dm_arg_set** %8, align 8
  %15 = call i8* @dm_shift_arg(%struct.dm_arg_set* %14)
  store i8* %15, i8** %12, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %47

18:                                               ; preds = %5
  %19 = load i8*, i8** %12, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @sscanf(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %20, i8* %13)
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %47, label %23

23:                                               ; preds = %18
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dm_arg*, %struct.dm_arg** %7, align 8
  %27 = getelementptr inbounds %struct.dm_arg, %struct.dm_arg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %47, label %30

30:                                               ; preds = %23
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dm_arg*, %struct.dm_arg** %7, align 8
  %34 = getelementptr inbounds %struct.dm_arg, %struct.dm_arg* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ugt i32 %32, %35
  br i1 %36, label %47, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load %struct.dm_arg_set*, %struct.dm_arg_set** %8, align 8
  %42 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp ult i32 %43, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %40, %30, %23, %18, %5
  %48 = load %struct.dm_arg*, %struct.dm_arg** %7, align 8
  %49 = getelementptr inbounds %struct.dm_arg, %struct.dm_arg* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = load i8**, i8*** %10, align 8
  store i8* %50, i8** %51, align 8
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %55

54:                                               ; preds = %40, %37
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %47
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i8* @dm_shift_arg(%struct.dm_arg_set*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
