; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_show_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_show_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxt_object = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"Instance %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"\09[%2u]: %02x (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.mxt_object*, i32, i32*)* @mxt_show_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxt_show_instance(i8* %0, i32 %1, %struct.mxt_object* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mxt_object*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.mxt_object* %2, %struct.mxt_object** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load %struct.mxt_object*, %struct.mxt_object** %8, align 8
  %13 = call i32 @mxt_obj_instances(%struct.mxt_object* %12)
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %30

15:                                               ; preds = %5
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i64, i64* @PAGE_SIZE, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = sub nsw i64 %20, %22
  %24 = load i32, i32* %9, align 4
  %25 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %19, i64 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %15, %5
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %61, %30
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.mxt_object*, %struct.mxt_object** %8, align 8
  %34 = call i32 @mxt_obj_size(%struct.mxt_object* %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %31
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i64, i64* @PAGE_SIZE, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = sub nsw i64 %41, %43
  %45 = load i32, i32* %11, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %40, i64 %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %50, i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %36
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %31

64:                                               ; preds = %31
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i64, i64* @PAGE_SIZE, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = sub nsw i64 %69, %71
  %73 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %68, i64 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @mxt_obj_instances(%struct.mxt_object*) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @mxt_obj_size(%struct.mxt_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
