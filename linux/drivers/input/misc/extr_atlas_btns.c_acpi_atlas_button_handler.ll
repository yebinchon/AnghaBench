; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_atlas_btns.c_acpi_atlas_button_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_atlas_btns.c_acpi_atlas_button_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_WRITE = common dso_local global i64 0, align 8
@input_dev = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@atlas_keymap = common dso_local global i32* null, align 8
@AE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"shrugged on unexpected function: function=%x,address=%lx,value=%x\0A\00", align 1
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i64, i64*, i8*, i8*)* @acpi_atlas_button_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_atlas_button_handler(i64 %0, i32 %1, i64 %2, i64* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @ACPI_WRITE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %6
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 15
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, 16
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* @input_dev, align 4
  %28 = load i32, i32* @EV_MSC, align 4
  %29 = load i32, i32* @MSC_SCAN, align 4
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @input_event(i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* @input_dev, align 4
  %33 = load i32*, i32** @atlas_keymap, align 8
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %15, align 4
  %39 = call i32 @input_report_key(i32 %32, i32 %37, i32 %38)
  %40 = load i32, i32* @input_dev, align 4
  %41 = call i32 @input_sync(i32 %40)
  %42 = load i32, i32* @AE_OK, align 4
  store i32 %42, i32* %13, align 4
  br label %51

43:                                               ; preds = %6
  %44 = load i64, i64* %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64*, i64** %10, align 8
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @pr_warn(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %44, i64 %46, i64 %48)
  %50 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %43, %19
  %52 = load i32, i32* %13, align 4
  ret i32 %52
}

declare dso_local i32 @input_event(i32, i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @pr_warn(i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
