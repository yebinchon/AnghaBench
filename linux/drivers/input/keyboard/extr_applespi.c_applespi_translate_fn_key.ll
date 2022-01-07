; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_applespi_translate_fn_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_applespi_translate_fn_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.applespi_key_translation = type { i32, i32 }

@applespi_fn_codes = common dso_local global i32 0, align 4
@APPLE_FLAG_FKEY = common dso_local global i32 0, align 4
@fnmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @applespi_translate_fn_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @applespi_translate_fn_key(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.applespi_key_translation*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @applespi_fn_codes, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.applespi_key_translation* @applespi_find_translation(i32 %7, i32 %8)
  store %struct.applespi_key_translation* %9, %struct.applespi_key_translation** %5, align 8
  %10 = load %struct.applespi_key_translation*, %struct.applespi_key_translation** %5, align 8
  %11 = icmp ne %struct.applespi_key_translation* %10, null
  br i1 %11, label %12, label %47

12:                                               ; preds = %2
  %13 = load %struct.applespi_key_translation*, %struct.applespi_key_translation** %5, align 8
  %14 = getelementptr inbounds %struct.applespi_key_translation, %struct.applespi_key_translation* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @APPLE_FLAG_FKEY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %12
  %20 = load i32, i32* @fnmode, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* @fnmode, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %28, %25
  %33 = phi i1 [ false, %25 ], [ %31, %28 ]
  br label %34

34:                                               ; preds = %32, %22
  %35 = phi i1 [ true, %22 ], [ %33, %32 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %6, align 4
  br label %39

37:                                               ; preds = %12
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.applespi_key_translation*, %struct.applespi_key_translation** %5, align 8
  %44 = getelementptr inbounds %struct.applespi_key_translation, %struct.applespi_key_translation* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %39
  br label %47

47:                                               ; preds = %46, %2
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.applespi_key_translation* @applespi_find_translation(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
