; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_try_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_try_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32 }
%struct.psmouse_protocol = type { i64 (%struct.psmouse.0*)*, i32, i32 }
%struct.psmouse.0 = type opaque

@PSMOUSE_IMEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32, i32*, i32, i32)* @psmouse_try_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psmouse_try_protocol(%struct.psmouse* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.psmouse*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.psmouse_protocol*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.psmouse_protocol* @__psmouse_protocol_by_type(i32 %13)
  store %struct.psmouse_protocol* %14, %struct.psmouse_protocol** %12, align 8
  %15 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %12, align 8
  %16 = icmp ne %struct.psmouse_protocol* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %60

18:                                               ; preds = %5
  %19 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %12, align 8
  %20 = getelementptr inbounds %struct.psmouse_protocol, %struct.psmouse_protocol* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %23 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %12, align 8
  %24 = getelementptr inbounds %struct.psmouse_protocol, %struct.psmouse_protocol* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @psmouse_do_detect(i32 %21, %struct.psmouse* %22, i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %60

30:                                               ; preds = %18
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %30
  %34 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %12, align 8
  %35 = getelementptr inbounds %struct.psmouse_protocol, %struct.psmouse_protocol* %34, i32 0, i32 0
  %36 = load i64 (%struct.psmouse.0*)*, i64 (%struct.psmouse.0*)** %35, align 8
  %37 = icmp ne i64 (%struct.psmouse.0*)* %36, null
  br i1 %37, label %38, label %59

38:                                               ; preds = %33
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %38
  %42 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %12, align 8
  %43 = getelementptr inbounds %struct.psmouse_protocol, %struct.psmouse_protocol* %42, i32 0, i32 0
  %44 = load i64 (%struct.psmouse.0*)*, i64 (%struct.psmouse.0*)** %43, align 8
  %45 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %46 = bitcast %struct.psmouse* %45 to %struct.psmouse.0*
  %47 = call i64 %44(%struct.psmouse.0* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PSMOUSE_IMEX, align 4
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @PSMOUSE_IMEX, align 4
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %49
  store i32 0, i32* %6, align 4
  br label %60

58:                                               ; preds = %41
  br label %59

59:                                               ; preds = %58, %38, %33, %30
  store i32 1, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %57, %29, %17
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.psmouse_protocol* @__psmouse_protocol_by_type(i32) #1

declare dso_local i32 @psmouse_do_detect(i32, %struct.psmouse*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
