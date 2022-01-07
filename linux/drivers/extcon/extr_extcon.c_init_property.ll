; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon.c_init_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon.c_init_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.extcon_dev = type { %struct.extcon_cable* }
%struct.extcon_cable = type { i32, i32, i32, i32 }

@extcon_info = common dso_local global %struct.TYPE_2__* null, align 8
@EXTCON_TYPE_USB = common dso_local global i32 0, align 4
@EXTCON_TYPE_CHG = common dso_local global i32 0, align 4
@EXTCON_TYPE_JACK = common dso_local global i32 0, align 4
@EXTCON_TYPE_DISP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.extcon_dev*, i32, i32)* @init_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_property(%struct.extcon_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.extcon_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.extcon_cable*, align 8
  store %struct.extcon_dev* %0, %struct.extcon_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @extcon_info, align 8
  %10 = load i32, i32* %5, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %16 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %15, i32 0, i32 0
  %17 = load %struct.extcon_cable*, %struct.extcon_cable** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.extcon_cable, %struct.extcon_cable* %17, i64 %19
  store %struct.extcon_cable* %20, %struct.extcon_cable** %8, align 8
  %21 = load i32, i32* @EXTCON_TYPE_USB, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load %struct.extcon_cable*, %struct.extcon_cable** %8, align 8
  %27 = getelementptr inbounds %struct.extcon_cable, %struct.extcon_cable* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @memset(i32 %28, i32 0, i32 4)
  br label %30

30:                                               ; preds = %25, %3
  %31 = load i32, i32* @EXTCON_TYPE_CHG, align 4
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.extcon_cable*, %struct.extcon_cable** %8, align 8
  %37 = getelementptr inbounds %struct.extcon_cable, %struct.extcon_cable* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @memset(i32 %38, i32 0, i32 4)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load i32, i32* @EXTCON_TYPE_JACK, align 4
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.extcon_cable*, %struct.extcon_cable** %8, align 8
  %47 = getelementptr inbounds %struct.extcon_cable, %struct.extcon_cable* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memset(i32 %48, i32 0, i32 4)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i32, i32* @EXTCON_TYPE_DISP, align 4
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.extcon_cable*, %struct.extcon_cable** %8, align 8
  %57 = getelementptr inbounds %struct.extcon_cable, %struct.extcon_cable* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @memset(i32 %58, i32 0, i32 4)
  br label %60

60:                                               ; preds = %55, %50
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
