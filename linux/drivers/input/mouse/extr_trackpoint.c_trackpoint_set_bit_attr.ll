; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_trackpoint.c_trackpoint_set_bit_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_trackpoint.c_trackpoint_set_bit_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32, %struct.trackpoint_data* }
%struct.trackpoint_data = type { i32 }
%struct.trackpoint_attr_data = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i8*, i8*, i64)* @trackpoint_set_bit_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trackpoint_set_bit_attr(%struct.psmouse* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.psmouse*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.trackpoint_data*, align 8
  %11 = alloca %struct.trackpoint_attr_data*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %16 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %15, i32 0, i32 1
  %17 = load %struct.trackpoint_data*, %struct.trackpoint_data** %16, align 8
  store %struct.trackpoint_data* %17, %struct.trackpoint_data** %10, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.trackpoint_attr_data*
  store %struct.trackpoint_attr_data* %19, %struct.trackpoint_attr_data** %11, align 8
  %20 = load %struct.trackpoint_data*, %struct.trackpoint_data** %10, align 8
  %21 = bitcast %struct.trackpoint_data* %20 to i8*
  %22 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %11, align 8
  %23 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr i8, i8* %21, i64 %25
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %12, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @kstrtobool(i8* %28, i32* %13)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %5, align 4
  br label %71

34:                                               ; preds = %4
  %35 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %11, align 8
  %36 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i32*, i32** %12, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load i32, i32* %13, align 4
  %51 = load i32*, i32** %12, align 8
  store i32 %50, i32* %51, align 4
  %52 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %53 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %52, i32 0, i32 0
  %54 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %11, align 8
  %55 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.trackpoint_attr_data*, %struct.trackpoint_attr_data** %11, align 8
  %58 = getelementptr inbounds %struct.trackpoint_attr_data, %struct.trackpoint_attr_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @trackpoint_toggle_bit(i32* %53, i32 %56, i32 %59)
  store i32 %60, i32* %14, align 4
  br label %61

61:                                               ; preds = %49, %44
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = sext i32 %62 to i64
  br label %68

66:                                               ; preds = %61
  %67 = load i64, i64* %9, align 8
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i64 [ %65, %64 ], [ %67, %66 ]
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %68, %32
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @kstrtobool(i8*, i32*) #1

declare dso_local i32 @trackpoint_toggle_bit(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
