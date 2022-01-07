; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_sidewinder.c_sw_3dp_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_sidewinder.c_sw_3dp_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c" [PnP %d.%02d id %s rev %s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64)* @sw_3dp_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sw_3dp_id(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [8 x i8], align 1
  %9 = alloca [9 x i8], align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %23, %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 7
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = mul nsw i32 8, %15
  %17 = add nsw i32 24, %16
  %18 = call i32 @sw_get_bits(i8* %14, i32 %17, i32 8, i32 1)
  %19 = trunc i32 %18 to i8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %21
  store i8 %19, i8* %22, align 1
  br label %23

23:                                               ; preds = %13
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %10

26:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %40, %26
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 8
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = mul nsw i32 8, %32
  %34 = add nsw i32 88, %33
  %35 = call i32 @sw_get_bits(i8* %31, i32 %34, i32 8, i32 1)
  %36 = trunc i32 %35 to i8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 %38
  store i8 %36, i8* %39, align 1
  br label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %27

43:                                               ; preds = %27
  %44 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 8
  store i8 0, i8* %44, align 1
  %45 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 7
  store i8 0, i8* %45, align 1
  %46 = load i8*, i8** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @sw_get_bits(i8* %48, i32 8, i32 6, i32 1)
  %50 = shl i32 %49, 6
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @sw_get_bits(i8* %51, i32 16, i32 6, i32 1)
  %53 = or i32 %50, %52
  %54 = sdiv i32 %53, 100
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @sw_get_bits(i8* %55, i32 8, i32 6, i32 1)
  %57 = shl i32 %56, 6
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @sw_get_bits(i8* %58, i32 16, i32 6, i32 1)
  %60 = or i32 %57, %59
  %61 = srem i32 %60, 100
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %63 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %64 = call i32 @snprintf(i8* %46, i64 %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %61, i8* %62, i8* %63)
  ret void
}

declare dso_local i32 @sw_get_bits(i8*, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
