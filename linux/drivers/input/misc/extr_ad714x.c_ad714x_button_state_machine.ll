; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_ad714x_button_state_machine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_ad714x_button_state_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad714x_chip = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.ad714x_button_drv* }
%struct.ad714x_button_drv = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.ad714x_button_plat* }
%struct.ad714x_button_plat = type { i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"button %d touched\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"button %d released\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ad714x_chip*, i32)* @ad714x_button_state_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad714x_button_state_machine(%struct.ad714x_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.ad714x_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad714x_button_plat*, align 8
  %6 = alloca %struct.ad714x_button_drv*, align 8
  store %struct.ad714x_chip* %0, %struct.ad714x_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %8 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %7, i32 0, i32 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.ad714x_button_plat*, %struct.ad714x_button_plat** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ad714x_button_plat, %struct.ad714x_button_plat* %11, i64 %13
  store %struct.ad714x_button_plat* %14, %struct.ad714x_button_plat** %5, align 8
  %15 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %16 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.ad714x_button_drv*, %struct.ad714x_button_drv** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ad714x_button_drv, %struct.ad714x_button_drv* %19, i64 %21
  store %struct.ad714x_button_drv* %22, %struct.ad714x_button_drv** %6, align 8
  %23 = load %struct.ad714x_button_drv*, %struct.ad714x_button_drv** %6, align 8
  %24 = getelementptr inbounds %struct.ad714x_button_drv, %struct.ad714x_button_drv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %114 [
    i32 128, label %26
    i32 129, label %70
  ]

26:                                               ; preds = %2
  %27 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %28 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ad714x_button_plat*, %struct.ad714x_button_plat** %5, align 8
  %31 = getelementptr inbounds %struct.ad714x_button_plat, %struct.ad714x_button_plat* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %29, %32
  %34 = load %struct.ad714x_button_plat*, %struct.ad714x_button_plat** %5, align 8
  %35 = getelementptr inbounds %struct.ad714x_button_plat, %struct.ad714x_button_plat* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %69

38:                                               ; preds = %26
  %39 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %40 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ad714x_button_plat*, %struct.ad714x_button_plat** %5, align 8
  %43 = getelementptr inbounds %struct.ad714x_button_plat, %struct.ad714x_button_plat* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %41, %44
  %46 = load %struct.ad714x_button_plat*, %struct.ad714x_button_plat** %5, align 8
  %47 = getelementptr inbounds %struct.ad714x_button_plat, %struct.ad714x_button_plat* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %38
  %51 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %52 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @dev_dbg(i32 %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load %struct.ad714x_button_drv*, %struct.ad714x_button_drv** %6, align 8
  %57 = getelementptr inbounds %struct.ad714x_button_drv, %struct.ad714x_button_drv* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ad714x_button_plat*, %struct.ad714x_button_plat** %5, align 8
  %60 = getelementptr inbounds %struct.ad714x_button_plat, %struct.ad714x_button_plat* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @input_report_key(i32 %58, i32 %61, i32 1)
  %63 = load %struct.ad714x_button_drv*, %struct.ad714x_button_drv** %6, align 8
  %64 = getelementptr inbounds %struct.ad714x_button_drv, %struct.ad714x_button_drv* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @input_sync(i32 %65)
  %67 = load %struct.ad714x_button_drv*, %struct.ad714x_button_drv** %6, align 8
  %68 = getelementptr inbounds %struct.ad714x_button_drv, %struct.ad714x_button_drv* %67, i32 0, i32 0
  store i32 129, i32* %68, align 4
  br label %69

69:                                               ; preds = %50, %38, %26
  br label %115

70:                                               ; preds = %2
  %71 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %72 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ad714x_button_plat*, %struct.ad714x_button_plat** %5, align 8
  %75 = getelementptr inbounds %struct.ad714x_button_plat, %struct.ad714x_button_plat* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %73, %76
  %78 = load %struct.ad714x_button_plat*, %struct.ad714x_button_plat** %5, align 8
  %79 = getelementptr inbounds %struct.ad714x_button_plat, %struct.ad714x_button_plat* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %77, %80
  br i1 %81, label %94, label %82

82:                                               ; preds = %70
  %83 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %84 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ad714x_button_plat*, %struct.ad714x_button_plat** %5, align 8
  %87 = getelementptr inbounds %struct.ad714x_button_plat, %struct.ad714x_button_plat* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %85, %88
  %90 = load %struct.ad714x_button_plat*, %struct.ad714x_button_plat** %5, align 8
  %91 = getelementptr inbounds %struct.ad714x_button_plat, %struct.ad714x_button_plat* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %89, %92
  br i1 %93, label %94, label %113

94:                                               ; preds = %82, %70
  %95 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %96 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @dev_dbg(i32 %97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = load %struct.ad714x_button_drv*, %struct.ad714x_button_drv** %6, align 8
  %101 = getelementptr inbounds %struct.ad714x_button_drv, %struct.ad714x_button_drv* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ad714x_button_plat*, %struct.ad714x_button_plat** %5, align 8
  %104 = getelementptr inbounds %struct.ad714x_button_plat, %struct.ad714x_button_plat* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @input_report_key(i32 %102, i32 %105, i32 0)
  %107 = load %struct.ad714x_button_drv*, %struct.ad714x_button_drv** %6, align 8
  %108 = getelementptr inbounds %struct.ad714x_button_drv, %struct.ad714x_button_drv* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @input_sync(i32 %109)
  %111 = load %struct.ad714x_button_drv*, %struct.ad714x_button_drv** %6, align 8
  %112 = getelementptr inbounds %struct.ad714x_button_drv, %struct.ad714x_button_drv* %111, i32 0, i32 0
  store i32 128, i32* %112, align 4
  br label %113

113:                                              ; preds = %94, %82
  br label %115

114:                                              ; preds = %2
  br label %115

115:                                              ; preds = %114, %113, %69
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
