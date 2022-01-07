; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_e752x_edac.c_e752x_check_hub_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_e752x_edac.c_e752x_check_hub_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e752x_error_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e752x_error_info*, i32*, i32)* @e752x_check_hub_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e752x_check_hub_interface(%struct.e752x_error_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.e752x_error_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e752x_error_info* %0, %struct.e752x_error_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %9 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %11, 127
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 127
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 43
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, 43
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @hub_error(i32 1, i32 %22, i32* %23, i32 %24)
  br label %26

26:                                               ; preds = %20, %14
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 84
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, 84
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @hub_error(i32 0, i32 %32, i32* %33, i32 %34)
  br label %36

36:                                               ; preds = %30, %26
  br label %37

37:                                               ; preds = %36, %3
  %38 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %39 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, 127
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 127
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, 43
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, 43
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @hub_error(i32 1, i32 %52, i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %50, %44
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 84
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, 84
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @hub_error(i32 0, i32 %62, i32* %63, i32 %64)
  br label %66

66:                                               ; preds = %60, %56
  br label %67

67:                                               ; preds = %66, %37
  ret void
}

declare dso_local i32 @hub_error(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
