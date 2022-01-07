; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_flag_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_flag_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flag_table = type { i32, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bits 0x%llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32, %struct.flag_table*, i32)* @flag_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @flag_string(i8* %0, i32 %1, i32 %2, %struct.flag_table* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.flag_table*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [32 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.flag_table* %3, %struct.flag_table** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %13, align 8
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %93

22:                                               ; preds = %5
  %23 = load i32, i32* %14, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %25

25:                                               ; preds = %62, %22
  %26 = load i32, i32* %16, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %65

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.flag_table*, %struct.flag_table** %10, align 8
  %32 = load i32, i32* %16, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.flag_table, %struct.flag_table* %31, i64 %33
  %35 = getelementptr inbounds %struct.flag_table, %struct.flag_table* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %30, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %29
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.flag_table*, %struct.flag_table** %10, align 8
  %42 = load i32, i32* %16, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.flag_table, %struct.flag_table* %41, i64 %43
  %45 = getelementptr inbounds %struct.flag_table, %struct.flag_table* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @append_str(i8* %40, i8** %13, i32* %14, i8* %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %65

51:                                               ; preds = %39
  %52 = load %struct.flag_table*, %struct.flag_table** %10, align 8
  %53 = load i32, i32* %16, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.flag_table, %struct.flag_table* %52, i64 %54
  %56 = getelementptr inbounds %struct.flag_table, %struct.flag_table* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %51, %29
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %16, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %16, align 4
  br label %25

65:                                               ; preds = %50, %25
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @snprintf(i8* %72, i32 32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %77 = call i32 @append_str(i8* %75, i8** %13, i32* %14, i8* %76)
  store i32 %77, i32* %15, align 4
  br label %78

78:                                               ; preds = %71, %68, %65
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load i32, i32* %14, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i8*, i8** %13, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 -1
  store i8* %86, i8** %13, align 8
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i8*, i8** %13, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %13, align 8
  store i8 42, i8* %88, align 1
  br label %90

90:                                               ; preds = %87, %78
  %91 = load i8*, i8** %13, align 8
  store i8 0, i8* %91, align 1
  %92 = load i8*, i8** %7, align 8
  store i8* %92, i8** %6, align 8
  br label %93

93:                                               ; preds = %90, %21
  %94 = load i8*, i8** %6, align 8
  ret i8* %94
}

declare dso_local i32 @append_str(i8*, i8**, i32*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
