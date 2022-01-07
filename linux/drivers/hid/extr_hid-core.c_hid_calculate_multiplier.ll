; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_calculate_multiplier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_calculate_multiplier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_field = type { i32*, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [52 x i8] c"unsupported Resolution Multiplier unit exponent %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"unsupported Resolution Multiplier %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_field*)* @hid_calculate_multiplier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_calculate_multiplier(%struct.hid_device* %0, %struct.hid_field* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_field*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_field* %1, %struct.hid_field** %5, align 8
  %12 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %13 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %17 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %20 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %23 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  %25 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %26 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %81

33:                                               ; preds = %2
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 %34, %35
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %37, %38
  %40 = sdiv i32 %36, %39
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = sub nsw i32 %41, %42
  %44 = mul nsw i32 %40, %43
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %6, align 4
  %47 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %48 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %33
  %55 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %56 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %57 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @hid_warn(%struct.hid_device* %55, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %54, %33
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  %66 = icmp sgt i32 %65, 255
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, -255
  br label %70

70:                                               ; preds = %67, %64, %61
  %71 = phi i1 [ true, %64 ], [ true, %61 ], [ %69, %67 ]
  %72 = zext i1 %71 to i32
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @hid_warn(%struct.hid_device* %76, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  store i32 1, i32* %6, align 4
  br label %79

79:                                               ; preds = %75, %70
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %32
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hid_warn(%struct.hid_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
