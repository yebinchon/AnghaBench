; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru3.c_abituguru3_read_increment_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru3.c_abituguru3_read_increment_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abituguru3_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.abituguru3_data*, i32, i32, i32, i32*, i32)* @abituguru3_read_increment_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abituguru3_read_increment_offset(%struct.abituguru3_data* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.abituguru3_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.abituguru3_data* %0, %struct.abituguru3_data** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %16

16:                                               ; preds = %49, %6
  %17 = load i32, i32* %14, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %16
  %21 = load %struct.abituguru3_data*, %struct.abituguru3_data** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %14, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* %11, align 4
  %27 = load i32*, i32** %12, align 8
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %11, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = call i32 @abituguru3_read(%struct.abituguru3_data* %21, i32 %22, i32 %25, i32 %26, i32* %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %20
  %38 = load i32, i32* %15, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* %15, align 4
  store i32 %41, i32* %7, align 4
  br label %56

42:                                               ; preds = %37
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %11, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32, i32* %15, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* %7, align 4
  br label %56

48:                                               ; preds = %20
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %14, align 4
  br label %16

52:                                               ; preds = %16
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %11, align 4
  %55 = mul nsw i32 %53, %54
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %52, %42, %40
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @abituguru3_read(%struct.abituguru3_data*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
