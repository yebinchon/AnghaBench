; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_applespi_remap_fn_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_applespi_remap_fn_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keyboard_protocol = type { i8, i32 }

@fnremap = common dso_local global i32 0, align 4
@applespi_controlcodes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.keyboard_protocol*)* @applespi_remap_fn_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @applespi_remap_fn_key(%struct.keyboard_protocol* %0) #0 {
  %2 = alloca %struct.keyboard_protocol*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store %struct.keyboard_protocol* %0, %struct.keyboard_protocol** %2, align 8
  %5 = load i32, i32* @fnremap, align 4
  %6 = sub nsw i32 %5, 1
  %7 = and i32 %6, 7
  %8 = call i32 @BIT(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @fnremap, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load i32, i32* @fnremap, align 4
  %13 = load i32*, i32** @applespi_controlcodes, align 8
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  %15 = icmp sgt i32 %12, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = load i32*, i32** @applespi_controlcodes, align 8
  %18 = load i32, i32* @fnremap, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %16, %11, %1
  br label %56

25:                                               ; preds = %16
  %26 = load %struct.keyboard_protocol*, %struct.keyboard_protocol** %2, align 8
  %27 = getelementptr inbounds %struct.keyboard_protocol, %struct.keyboard_protocol* %26, i32 0, i32 0
  %28 = load i8, i8* %27, align 4
  store i8 %28, i8* %3, align 1
  %29 = load %struct.keyboard_protocol*, %struct.keyboard_protocol** %2, align 8
  %30 = getelementptr inbounds %struct.keyboard_protocol, %struct.keyboard_protocol* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = trunc i32 %37 to i8
  %39 = load %struct.keyboard_protocol*, %struct.keyboard_protocol** %2, align 8
  %40 = getelementptr inbounds %struct.keyboard_protocol, %struct.keyboard_protocol* %39, i32 0, i32 0
  store i8 %38, i8* %40, align 4
  %41 = load i8, i8* %3, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %25
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.keyboard_protocol*, %struct.keyboard_protocol** %2, align 8
  %46 = getelementptr inbounds %struct.keyboard_protocol, %struct.keyboard_protocol* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %56

49:                                               ; preds = %25
  %50 = load i32, i32* %4, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.keyboard_protocol*, %struct.keyboard_protocol** %2, align 8
  %53 = getelementptr inbounds %struct.keyboard_protocol, %struct.keyboard_protocol* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %24, %49, %43
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
