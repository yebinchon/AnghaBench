; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_remote_attach_battery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_remote_attach_battery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom = type { %struct.wacom_remote*, %struct.TYPE_6__ }
%struct.wacom_remote = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@WACOM_STATUS_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom*, i32)* @wacom_remote_attach_battery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_remote_attach_battery(%struct.wacom* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wacom*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wacom_remote*, align 8
  %7 = alloca i32, align 4
  store %struct.wacom* %0, %struct.wacom** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.wacom*, %struct.wacom** %4, align 8
  %9 = getelementptr inbounds %struct.wacom, %struct.wacom* %8, i32 0, i32 0
  %10 = load %struct.wacom_remote*, %struct.wacom_remote** %9, align 8
  store %struct.wacom_remote* %10, %struct.wacom_remote** %6, align 8
  %11 = load %struct.wacom_remote*, %struct.wacom_remote** %6, align 8
  %12 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

21:                                               ; preds = %2
  %22 = load %struct.wacom_remote*, %struct.wacom_remote** %6, align 8
  %23 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %63

33:                                               ; preds = %21
  %34 = load %struct.wacom*, %struct.wacom** %4, align 8
  %35 = getelementptr inbounds %struct.wacom, %struct.wacom* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @WACOM_STATUS_UNKNOWN, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %63

46:                                               ; preds = %33
  %47 = load %struct.wacom*, %struct.wacom** %4, align 8
  %48 = load %struct.wacom*, %struct.wacom** %4, align 8
  %49 = getelementptr inbounds %struct.wacom, %struct.wacom* %48, i32 0, i32 0
  %50 = load %struct.wacom_remote*, %struct.wacom_remote** %49, align 8
  %51 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = call i32 @__wacom_initialize_battery(%struct.wacom* %47, %struct.TYPE_8__* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %46
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %63

62:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %60, %45, %32, %20
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @__wacom_initialize_battery(%struct.wacom*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
