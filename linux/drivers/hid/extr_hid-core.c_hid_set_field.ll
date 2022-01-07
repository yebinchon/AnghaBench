; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_set_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_set_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_field = type { i32, i32, i64, i64*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"offset (%d) exceeds report_count (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"value %d is out of range\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hid_set_field(%struct.hid_field* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hid_field*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.hid_field* %0, %struct.hid_field** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %10 = icmp ne %struct.hid_field* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %76

12:                                               ; preds = %3
  %13 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %14 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %17 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %16, i32 0, i32 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %22 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @hid_dump_input(i32 %20, i64 %26, i64 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %31 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp uge i32 %29, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %12
  %35 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %36 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %35, i32 0, i32 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %43 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, i64, ...) @hid_err(i32 %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %41, i32 %44)
  store i32 -1, i32* %4, align 4
  br label %76

46:                                               ; preds = %12
  %47 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %48 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %46
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @s32ton(i64 %53, i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = call i64 @snto32(i32 %55, i32 %56)
  %58 = icmp ne i64 %52, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %51
  %60 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %61 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %60, i32 0, i32 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %7, align 8
  %66 = call i32 (i32, i8*, i64, ...) @hid_err(i32 %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %65)
  store i32 -1, i32* %4, align 4
  br label %76

67:                                               ; preds = %51
  br label %68

68:                                               ; preds = %67, %46
  %69 = load i64, i64* %7, align 8
  %70 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %71 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %70, i32 0, i32 3
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  store i64 %69, i64* %75, align 8
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %68, %59, %34, %11
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @hid_dump_input(i32, i64, i64) #1

declare dso_local i32 @hid_err(i32, i8*, i64, ...) #1

declare dso_local i64 @snto32(i32, i32) #1

declare dso_local i32 @s32ton(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
