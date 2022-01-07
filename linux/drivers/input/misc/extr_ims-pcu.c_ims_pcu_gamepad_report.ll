; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_gamepad_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_gamepad_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ims_pcu = type { %struct.ims_pcu_gamepad* }
%struct.ims_pcu_gamepad = type { %struct.input_dev* }
%struct.input_dev = type { i32 }

@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_A = common dso_local global i32 0, align 4
@BTN_B = common dso_local global i32 0, align 4
@BTN_X = common dso_local global i32 0, align 4
@BTN_Y = common dso_local global i32 0, align 4
@BTN_START = common dso_local global i32 0, align 4
@BTN_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ims_pcu*, i32)* @ims_pcu_gamepad_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ims_pcu_gamepad_report(%struct.ims_pcu* %0, i32 %1) #0 {
  %3 = alloca %struct.ims_pcu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ims_pcu_gamepad*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ims_pcu* %0, %struct.ims_pcu** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %10 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %9, i32 0, i32 0
  %11 = load %struct.ims_pcu_gamepad*, %struct.ims_pcu_gamepad** %10, align 8
  store %struct.ims_pcu_gamepad* %11, %struct.ims_pcu_gamepad** %5, align 8
  %12 = load %struct.ims_pcu_gamepad*, %struct.ims_pcu_gamepad** %5, align 8
  %13 = getelementptr inbounds %struct.ims_pcu_gamepad, %struct.ims_pcu_gamepad* %12, i32 0, i32 0
  %14 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  store %struct.input_dev* %14, %struct.input_dev** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 16384
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 8192
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = sub nsw i32 %20, %26
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 4096
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, 2048
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = sub nsw i32 %33, %39
  store i32 %40, i32* %8, align 4
  %41 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %42 = load i32, i32* @ABS_X, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @input_report_abs(%struct.input_dev* %41, i32 %42, i32 %43)
  %45 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %46 = load i32, i32* @ABS_Y, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @input_report_abs(%struct.input_dev* %45, i32 %46, i32 %47)
  %49 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %50 = load i32, i32* @BTN_A, align 4
  %51 = load i32, i32* %4, align 4
  %52 = and i32 %51, 128
  %53 = call i32 @input_report_key(%struct.input_dev* %49, i32 %50, i32 %52)
  %54 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %55 = load i32, i32* @BTN_B, align 4
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %56, 256
  %58 = call i32 @input_report_key(%struct.input_dev* %54, i32 %55, i32 %57)
  %59 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %60 = load i32, i32* @BTN_X, align 4
  %61 = load i32, i32* %4, align 4
  %62 = and i32 %61, 512
  %63 = call i32 @input_report_key(%struct.input_dev* %59, i32 %60, i32 %62)
  %64 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %65 = load i32, i32* @BTN_Y, align 4
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, 1024
  %68 = call i32 @input_report_key(%struct.input_dev* %64, i32 %65, i32 %67)
  %69 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %70 = load i32, i32* @BTN_START, align 4
  %71 = load i32, i32* %4, align 4
  %72 = and i32 %71, 32768
  %73 = call i32 @input_report_key(%struct.input_dev* %69, i32 %70, i32 %72)
  %74 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %75 = load i32, i32* @BTN_SELECT, align 4
  %76 = load i32, i32* %4, align 4
  %77 = and i32 %76, 65536
  %78 = call i32 @input_report_key(%struct.input_dev* %74, i32 %75, i32 %77)
  %79 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %80 = call i32 @input_sync(%struct.input_dev* %79)
  ret void
}

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
