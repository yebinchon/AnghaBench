; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen3.c_cyapa_gen3_bl_enter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen3.c_cyapa_gen3_bl_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i64, i32, i32* }

@CYAPA_STATE_BL_IDLE = common dso_local global i64 0, align 8
@CYAPA_STATE_OP = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@CYAPA_STATE_NO_DEVICE = common dso_local global i64 0, align 8
@CYAPA_CMD_SOFT_RESET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@REG_BL_STATUS = common dso_local global i64 0, align 8
@BL_STATUS_WATCHDOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*)* @cyapa_gen3_bl_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_gen3_bl_enter(%struct.cyapa* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cyapa*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %3, align 8
  %6 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %7 = call i32 @cyapa_poll_state(%struct.cyapa* %6, i32 500)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %103

12:                                               ; preds = %1
  %13 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %14 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CYAPA_STATE_BL_IDLE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %103

19:                                               ; preds = %12
  %20 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %21 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CYAPA_STATE_OP, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %103

28:                                               ; preds = %19
  %29 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %30 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %29, i32 0, i32 1
  store i32 0, i32* %30, align 8
  %31 = load i64, i64* @CYAPA_STATE_NO_DEVICE, align 8
  %32 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %33 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %35 = load i32, i32* @CYAPA_CMD_SOFT_RESET, align 4
  %36 = call i32 @cyapa_write_byte(%struct.cyapa* %34, i32 %35, i32 1)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %103

42:                                               ; preds = %28
  %43 = call i32 @usleep_range(i32 25000, i32 50000)
  store i32 2000, i32* %5, align 4
  br label %44

44:                                               ; preds = %80, %42
  %45 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %46 = call i32 @cyapa_poll_state(%struct.cyapa* %45, i32 500)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @ETIMEDOUT, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %5, align 4
  %56 = sub nsw i32 %55, 500
  store i32 %56, i32* %5, align 4
  br label %80

57:                                               ; preds = %49
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %103

59:                                               ; preds = %44
  %60 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %61 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @CYAPA_STATE_BL_IDLE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %59
  %66 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %67 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @REG_BL_STATUS, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @BL_STATUS_WATCHDOG, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %65
  br label %83

76:                                               ; preds = %65, %59
  %77 = call i32 @msleep(i32 100)
  %78 = load i32, i32* %5, align 4
  %79 = sub nsw i32 %78, 100
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %76, %54
  %81 = load i32, i32* %5, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %44, label %83

83:                                               ; preds = %80, %75
  %84 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %85 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @CYAPA_STATE_BL_IDLE, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %99, label %89

89:                                               ; preds = %83
  %90 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %91 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* @REG_BL_STATUS, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @BL_STATUS_WATCHDOG, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %89, %83
  %100 = load i32, i32* @EAGAIN, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %103

102:                                              ; preds = %89
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %102, %99, %57, %39, %25, %18, %10
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @cyapa_poll_state(%struct.cyapa*, i32) #1

declare dso_local i32 @cyapa_write_byte(%struct.cyapa*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
