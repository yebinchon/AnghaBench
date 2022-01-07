; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_atkbd.c_atkbd_show_force_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_atkbd.c_atkbd_show_force_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atkbd = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%*pbl\00", align 1
@ATKBD_KEYMAP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.atkbd*, i8*)* @atkbd_show_force_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @atkbd_show_force_release(%struct.atkbd* %0, i8* %1) #0 {
  %3 = alloca %struct.atkbd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.atkbd* %0, %struct.atkbd** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i64, i64* @PAGE_SIZE, align 8
  %8 = sub nsw i64 %7, 1
  %9 = load i32, i32* @ATKBD_KEYMAP_SIZE, align 4
  %10 = load %struct.atkbd*, %struct.atkbd** %3, align 8
  %11 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @scnprintf(i8* %6, i64 %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* %5, align 8
  %17 = getelementptr inbounds i8, i8* %14, i64 %15
  store i8 10, i8* %17, align 1
  %18 = load i8*, i8** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8 0, i8* %20, align 1
  %21 = load i64, i64* %5, align 8
  ret i64 %21
}

declare dso_local i64 @scnprintf(i8*, i64, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
