; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elecom.c_mouse_button_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elecom.c_mouse_button_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Fixing up Elecom mouse button count\0A\00", align 1
@MOUSE_BUTTONS_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, i32*, i32, i32)* @mouse_button_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mouse_button_fixup(%struct.hid_device* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ult i32 %9, 32
  br i1 %10, label %36, label %11

11:                                               ; preds = %4
  %12 = load i32*, i32** %6, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 12
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 149
  br i1 %15, label %36, label %16

16:                                               ; preds = %11
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 14
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 117
  br i1 %20, label %36, label %21

21:                                               ; preds = %16
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 15
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 20
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 41
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 30
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 117
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %26, %21, %16, %11, %4
  br label %54

37:                                               ; preds = %31
  %38 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %39 = call i32 @hid_info(%struct.hid_device* %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @MOUSE_BUTTONS_MAX, align 4
  %42 = call i32 @clamp(i32 %40, i32 0, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 13
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 21
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @MOUSE_BUTTONS_MAX, align 4
  %50 = load i32, i32* %8, align 4
  %51 = sub nsw i32 %49, %50
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 31
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %37, %36
  ret void
}

declare dso_local i32 @hid_info(%struct.hid_device*, i8*) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
