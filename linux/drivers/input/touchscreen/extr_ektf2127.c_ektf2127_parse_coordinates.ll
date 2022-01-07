; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ektf2127.c_ektf2127_parse_coordinates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ektf2127.c_ektf2127_parse_coordinates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_mt_pos = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.input_mt_pos*)* @ektf2127_parse_coordinates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ektf2127_parse_coordinates(i32* %0, i32 %1, %struct.input_mt_pos* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_mt_pos*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.input_mt_pos* %2, %struct.input_mt_pos** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %79, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %82

13:                                               ; preds = %9
  %14 = load i32, i32* %8, align 4
  %15 = mul nsw i32 %14, 3
  %16 = add nsw i32 2, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 15
  %23 = load %struct.input_mt_pos*, %struct.input_mt_pos** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %23, i64 %25
  %27 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %26, i32 0, i32 0
  store i32 %22, i32* %27, align 4
  %28 = load %struct.input_mt_pos*, %struct.input_mt_pos** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %28, i64 %30
  %32 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 8
  store i32 %34, i32* %32, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.input_mt_pos*, %struct.input_mt_pos** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %41, i64 %43
  %45 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %40
  store i32 %47, i32* %45, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 240
  %54 = load %struct.input_mt_pos*, %struct.input_mt_pos** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %54, i64 %56
  %58 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %57, i32 0, i32 1
  store i32 %53, i32* %58, align 4
  %59 = load %struct.input_mt_pos*, %struct.input_mt_pos** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %59, i64 %61
  %63 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 4
  store i32 %65, i32* %63, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.input_mt_pos*, %struct.input_mt_pos** %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %72, i64 %74
  %76 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %71
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %13
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %9

82:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
