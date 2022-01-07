; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_e752x_edac.c_e752x_check_sysbus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_e752x_edac.c_e752x_check_sysbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e752x_error_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e752x_error_info*, i32*, i32)* @e752x_check_sysbus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e752x_check_sysbus(%struct.e752x_error_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.e752x_error_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e752x_error_info* %0, %struct.e752x_error_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %10 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.e752x_error_info*, %struct.e752x_error_info** %4, align 8
  %13 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 16
  %16 = add nsw i32 %11, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %65

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = ashr i32 %21, 16
  %23 = and i32 %22, 1023
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, 1023
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 135
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 135
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @sysbus_error(i32 1, i32 %31, i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %20
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 888
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, 888
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @sysbus_error(i32 0, i32 %41, i32* %42, i32 %43)
  br label %45

45:                                               ; preds = %39, %35
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, 135
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, 135
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @sysbus_error(i32 1, i32 %51, i32* %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %45
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, 888
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, 888
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @sysbus_error(i32 0, i32 %61, i32* %62, i32 %63)
  br label %65

65:                                               ; preds = %19, %59, %55
  ret void
}

declare dso_local i32 @sysbus_error(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
