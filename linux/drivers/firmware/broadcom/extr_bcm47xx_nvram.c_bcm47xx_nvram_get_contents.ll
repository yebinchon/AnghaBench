; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/broadcom/extr_bcm47xx_nvram.c_bcm47xx_nvram_get_contents.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/broadcom/extr_bcm47xx_nvram.c_bcm47xx_nvram_get_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nvram_len = common dso_local global i32 0, align 4
@nvram_buf = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @bcm47xx_nvram_get_contents(i64* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i64* %0, i64** %3, align 8
  %6 = load i32, i32* @nvram_len, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = call i32 (...) @nvram_init()
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i8* null, i8** %2, align 8
  br label %33

13:                                               ; preds = %8
  br label %14

14:                                               ; preds = %13, %1
  %15 = load i32, i32* @nvram_len, align 4
  %16 = sext i32 %15 to i64
  %17 = sub i64 %16, 4
  %18 = load i64*, i64** %3, align 8
  store i64 %17, i64* %18, align 8
  %19 = load i64*, i64** %3, align 8
  %20 = load i64, i64* %19, align 8
  %21 = call i8* @vmalloc(i64 %20)
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  store i8* null, i8** %2, align 8
  br label %33

25:                                               ; preds = %14
  %26 = load i8*, i8** %5, align 8
  %27 = load i32*, i32** @nvram_buf, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = load i64*, i64** %3, align 8
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @memcpy(i8* %26, i32* %28, i64 %30)
  %32 = load i8*, i8** %5, align 8
  store i8* %32, i8** %2, align 8
  br label %33

33:                                               ; preds = %25, %24, %12
  %34 = load i8*, i8** %2, align 8
  ret i8* %34
}

declare dso_local i32 @nvram_init(...) #1

declare dso_local i8* @vmalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
