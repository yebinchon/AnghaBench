; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-sbefifo.c_sbefifo_cleanup_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-sbefifo.c_sbefifo_cleanup_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbefifo = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"SBE state=%d\0A\00", align 1
@SBEFIFO_UP = common dso_local global i32 0, align 4
@SBEFIFO_STS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Cleanup: Reading UP status failed, rc=%d\0A\00", align 1
@SBEFIFO_DOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Cleanup: Reading DOWN status failed, rc=%d\0A\00", align 1
@SBEFIFO_STS_RESET_REQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Cleanup: FIFO reset request set, resetting\0A\00", align 1
@SBEFIFO_PERFORM_RESET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Cleanup: Reset reg write failed, rc=%d\0A\00", align 1
@SBEFIFO_STS_PARITY_ERR = common dso_local global i32 0, align 4
@SBEFIFO_STS_EMPTY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"Cleanup: FIFO not clean (up=0x%08x down=0x%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbefifo*)* @sbefifo_cleanup_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbefifo_cleanup_hw(%struct.sbefifo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sbefifo*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sbefifo* %0, %struct.sbefifo** %3, align 8
  %9 = load %struct.sbefifo*, %struct.sbefifo** %3, align 8
  %10 = getelementptr inbounds %struct.sbefifo, %struct.sbefifo* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.sbefifo*, %struct.sbefifo** %3, align 8
  %14 = call i32 @sbefifo_check_sbe_state(%struct.sbefifo* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @dev_dbg(%struct.device* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %2, align 4
  br label %110

22:                                               ; preds = %1
  %23 = load %struct.sbefifo*, %struct.sbefifo** %3, align 8
  %24 = getelementptr inbounds %struct.sbefifo, %struct.sbefifo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %107

28:                                               ; preds = %22
  %29 = load %struct.sbefifo*, %struct.sbefifo** %3, align 8
  %30 = load i32, i32* @SBEFIFO_UP, align 4
  %31 = load i32, i32* @SBEFIFO_STS, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @sbefifo_regr(%struct.sbefifo* %29, i32 %32, i32* %5)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load %struct.sbefifo*, %struct.sbefifo** %3, align 8
  %41 = getelementptr inbounds %struct.sbefifo, %struct.sbefifo* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %2, align 4
  br label %110

43:                                               ; preds = %28
  %44 = load %struct.sbefifo*, %struct.sbefifo** %3, align 8
  %45 = load i32, i32* @SBEFIFO_DOWN, align 4
  %46 = load i32, i32* @SBEFIFO_STS, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @sbefifo_regr(%struct.sbefifo* %44, i32 %47, i32* %6)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load %struct.sbefifo*, %struct.sbefifo** %3, align 8
  %56 = getelementptr inbounds %struct.sbefifo, %struct.sbefifo* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %2, align 4
  br label %110

58:                                               ; preds = %43
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @SBEFIFO_STS_RESET_REQ, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %58
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %64, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %66 = load %struct.sbefifo*, %struct.sbefifo** %3, align 8
  %67 = load i32, i32* @SBEFIFO_UP, align 4
  %68 = load i32, i32* @SBEFIFO_PERFORM_RESET, align 4
  %69 = call i32 @sbefifo_regw(%struct.sbefifo* %66, i32 %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %63
  %73 = load %struct.sbefifo*, %struct.sbefifo** %3, align 8
  %74 = getelementptr inbounds %struct.sbefifo, %struct.sbefifo* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @dev_err(%struct.device* %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %2, align 4
  br label %110

79:                                               ; preds = %63
  %80 = load %struct.sbefifo*, %struct.sbefifo** %3, align 8
  %81 = getelementptr inbounds %struct.sbefifo, %struct.sbefifo* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  store i32 0, i32* %2, align 4
  br label %110

82:                                               ; preds = %58
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %6, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @SBEFIFO_STS_PARITY_ERR, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store i32 1, i32* %7, align 4
  br label %90

90:                                               ; preds = %89, %82
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %6, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* @SBEFIFO_STS_EMPTY, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %90
  store i32 1, i32* %7, align 4
  br label %98

98:                                               ; preds = %97, %90
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  br label %110

102:                                              ; preds = %98
  %103 = load %struct.device*, %struct.device** %4, align 8
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %103, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %102, %27
  %108 = load %struct.sbefifo*, %struct.sbefifo** %3, align 8
  %109 = call i32 @sbefifo_request_reset(%struct.sbefifo* %108)
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %107, %101, %79, %72, %51, %36, %17
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @sbefifo_check_sbe_state(%struct.sbefifo*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @sbefifo_regr(%struct.sbefifo*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i32 @sbefifo_regw(%struct.sbefifo*, i32, i32) #1

declare dso_local i32 @sbefifo_request_reset(%struct.sbefifo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
