; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_bpt_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_bpt_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { %struct.wacom_features }
%struct.wacom_features = type { i64, i32 }

@INTUOSHT2 = common dso_local global i64 0, align 8
@WACOM_DEVICETYPE_PEN = common dso_local global i32 0, align 4
@WACOM_PKGLEN_BBTOUCH = common dso_local global i64 0, align 8
@WACOM_PKGLEN_BBTOUCH3 = common dso_local global i64 0, align 8
@WACOM_PKGLEN_BBFUN = common dso_local global i64 0, align 8
@WACOM_PKGLEN_BBPEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom_wac*, i64)* @wacom_bpt_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_bpt_irq(%struct.wacom_wac* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wacom_wac*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.wacom_features*, align 8
  store %struct.wacom_wac* %0, %struct.wacom_wac** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %8 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %7, i32 0, i32 0
  store %struct.wacom_features* %8, %struct.wacom_features** %6, align 8
  %9 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %10 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @INTUOSHT2, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %16 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @WACOM_DEVICETYPE_PEN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %23 = call i32 @wacom_intuos_irq(%struct.wacom_wac* %22)
  store i32 %23, i32* %3, align 4
  br label %53

24:                                               ; preds = %14, %2
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @WACOM_PKGLEN_BBTOUCH, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %30 = call i32 @wacom_bpt_touch(%struct.wacom_wac* %29)
  store i32 %30, i32* %3, align 4
  br label %53

31:                                               ; preds = %24
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @WACOM_PKGLEN_BBTOUCH3, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %37 = call i32 @wacom_bpt3_touch(%struct.wacom_wac* %36)
  store i32 %37, i32* %3, align 4
  br label %53

38:                                               ; preds = %31
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @WACOM_PKGLEN_BBFUN, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @WACOM_PKGLEN_BBPEN, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42, %38
  %47 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %48 = call i32 @wacom_bpt_pen(%struct.wacom_wac* %47)
  store i32 %48, i32* %3, align 4
  br label %53

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %46, %35, %28, %21
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @wacom_intuos_irq(%struct.wacom_wac*) #1

declare dso_local i32 @wacom_bpt_touch(%struct.wacom_wac*) #1

declare dso_local i32 @wacom_bpt3_touch(%struct.wacom_wac*) #1

declare dso_local i32 @wacom_bpt_pen(%struct.wacom_wac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
