; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_buttons_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_buttons_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ims_pcu = type { %struct.ims_pcu_buttons }
%struct.ims_pcu_buttons = type { i16*, %struct.input_dev* }
%struct.input_dev = type { i32 }

@KEY_RESERVED = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ims_pcu*, i64)* @ims_pcu_buttons_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ims_pcu_buttons_report(%struct.ims_pcu* %0, i64 %1) #0 {
  %3 = alloca %struct.ims_pcu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ims_pcu_buttons*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  store %struct.ims_pcu* %0, %struct.ims_pcu** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %10 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %9, i32 0, i32 0
  store %struct.ims_pcu_buttons* %10, %struct.ims_pcu_buttons** %5, align 8
  %11 = load %struct.ims_pcu_buttons*, %struct.ims_pcu_buttons** %5, align 8
  %12 = getelementptr inbounds %struct.ims_pcu_buttons, %struct.ims_pcu_buttons* %11, i32 0, i32 1
  %13 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  store %struct.input_dev* %13, %struct.input_dev** %6, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %40, %2
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 32
  br i1 %16, label %17, label %43

17:                                               ; preds = %14
  %18 = load %struct.ims_pcu_buttons*, %struct.ims_pcu_buttons** %5, align 8
  %19 = getelementptr inbounds %struct.ims_pcu_buttons, %struct.ims_pcu_buttons* %18, i32 0, i32 0
  %20 = load i16*, i16** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i16, i16* %20, i64 %22
  %24 = load i16, i16* %23, align 2
  store i16 %24, i16* %8, align 2
  %25 = load i16, i16* %8, align 2
  %26 = zext i16 %25 to i32
  %27 = load i16, i16* @KEY_RESERVED, align 2
  %28 = zext i16 %27 to i32
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %17
  %31 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %32 = load i16, i16* %8, align 2
  %33 = load i64, i64* %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = shl i64 1, %35
  %37 = and i64 %33, %36
  %38 = call i32 @input_report_key(%struct.input_dev* %31, i16 zeroext %32, i64 %37)
  br label %39

39:                                               ; preds = %30, %17
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %14

43:                                               ; preds = %14
  %44 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %45 = call i32 @input_sync(%struct.input_dev* %44)
  ret void
}

declare dso_local i32 @input_report_key(%struct.input_dev*, i16 zeroext, i64) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
