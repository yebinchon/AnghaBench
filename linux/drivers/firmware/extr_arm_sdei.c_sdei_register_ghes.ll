; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_sdei.c_sdei_register_ghes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_sdei.c_sdei_register_ghes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ghes = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@CONFIG_ACPI_APEI_GHES = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SDEI_EVENT_INFO_EV_PRIORITY = common dso_local global i32 0, align 4
@SDEI_EVENT_PRIORITY_CRITICAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdei_register_ghes(%struct.ghes* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ghes*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.ghes* %0, %struct.ghes** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @CONFIG_ACPI_APEI_GHES, align 4
  %13 = call i32 @IS_ENABLED(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %58

18:                                               ; preds = %3
  %19 = load %struct.ghes*, %struct.ghes** %5, align 8
  %20 = getelementptr inbounds %struct.ghes, %struct.ghes* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %58

30:                                               ; preds = %18
  %31 = load i64, i64* %10, align 8
  %32 = load i32, i32* @SDEI_EVENT_INFO_EV_PRIORITY, align 4
  %33 = call i32 @sdei_api_event_get_info(i64 %31, i32 %32, i64* %9)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %58

38:                                               ; preds = %30
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @SDEI_EVENT_PRIORITY_CRITICAL, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32*, i32** %7, align 8
  store i32* %43, i32** %11, align 8
  br label %46

44:                                               ; preds = %38
  %45 = load i32*, i32** %6, align 8
  store i32* %45, i32** %11, align 8
  br label %46

46:                                               ; preds = %44, %42
  %47 = load i64, i64* %10, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load %struct.ghes*, %struct.ghes** %5, align 8
  %50 = call i32 @sdei_event_register(i64 %47, i32* %48, %struct.ghes* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @sdei_event_enable(i64 %54)
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %53, %46
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %36, %27, %15
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @sdei_api_event_get_info(i64, i32, i64*) #1

declare dso_local i32 @sdei_event_register(i64, i32*, %struct.ghes*) #1

declare dso_local i32 @sdei_event_enable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
