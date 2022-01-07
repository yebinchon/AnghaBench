; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-sbefifo.c_sbefifo_send_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-sbefifo.c_sbefifo_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbefifo = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"sending command (%zd words, cmd=%04x)\0A\00", align 1
@SBEFIFO_TIMEOUT_START_CMD = common dso_local global i32 0, align 4
@SBEFIFO_TIMEOUT_IN_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"  status=%08x vacant=%zd chunk=%zd\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"FSI error %d writing UP FIFO\0A\00", align 1
@SBEFIFO_UP = common dso_local global i32 0, align 4
@SBEFIFO_EOT_RAISE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"FSI error %d writing EOT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbefifo*, i32*, i64)* @sbefifo_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbefifo_send_command(%struct.sbefifo* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sbefifo*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sbefifo* %0, %struct.sbefifo** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.sbefifo*, %struct.sbefifo** %5, align 8
  %17 = getelementptr inbounds %struct.sbefifo, %struct.sbefifo* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %8, align 8
  store i64 0, i64* %11, align 8
  %20 = load i64, i64* %7, align 8
  store i64 %20, i64* %12, align 8
  %21 = load %struct.device*, %struct.device** %8, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @be32_to_cpu(i32 %25)
  %27 = sext i32 %26 to i64
  %28 = call i32 (%struct.device*, i8*, i64, i64, ...) @dev_vdbg(%struct.device* %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %22, i64 %27)
  %29 = load i32, i32* @SBEFIFO_TIMEOUT_START_CMD, align 4
  %30 = call i64 @msecs_to_jiffies(i32 %29)
  store i64 %30, i64* %13, align 8
  br label %31

31:                                               ; preds = %74, %3
  %32 = load i64, i64* %12, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %81

34:                                               ; preds = %31
  %35 = load %struct.sbefifo*, %struct.sbefifo** %5, align 8
  %36 = load i64, i64* %13, align 8
  %37 = call i32 @sbefifo_wait(%struct.sbefifo* %35, i32 1, i32* %14, i64 %36)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %15, align 4
  store i32 %41, i32* %4, align 4
  br label %107

42:                                               ; preds = %34
  %43 = load i32, i32* @SBEFIFO_TIMEOUT_IN_CMD, align 4
  %44 = call i64 @msecs_to_jiffies(i32 %43)
  store i64 %44, i64* %13, align 8
  %45 = load i32, i32* %14, align 4
  %46 = call i64 @sbefifo_vacant(i32 %45)
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* %12, align 8
  %49 = call i64 @min(i64 %47, i64 %48)
  store i64 %49, i64* %10, align 8
  store i64 %49, i64* %9, align 8
  %50 = load %struct.device*, %struct.device** %8, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i32 (%struct.device*, i8*, i64, i64, ...) @dev_vdbg(%struct.device* %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %52, i64 %53, i64 %54)
  br label %56

56:                                               ; preds = %73, %42
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %57, -1
  store i64 %58, i64* %9, align 8
  %59 = icmp ne i64 %57, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load %struct.sbefifo*, %struct.sbefifo** %5, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %6, align 8
  %64 = load i32, i32* %62, align 4
  %65 = call i32 @sbefifo_up_write(%struct.sbefifo* %61, i32 %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = load %struct.device*, %struct.device** %8, align 8
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @dev_err(%struct.device* %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %15, align 4
  store i32 %72, i32* %4, align 4
  br label %107

73:                                               ; preds = %60
  br label %56

74:                                               ; preds = %56
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* %12, align 8
  %77 = sub i64 %76, %75
  store i64 %77, i64* %12, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* %11, align 8
  %80 = sub i64 %79, %78
  store i64 %80, i64* %11, align 8
  br label %31

81:                                               ; preds = %31
  %82 = load i64, i64* %11, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %81
  %85 = load %struct.sbefifo*, %struct.sbefifo** %5, align 8
  %86 = load i64, i64* %13, align 8
  %87 = call i32 @sbefifo_wait(%struct.sbefifo* %85, i32 1, i32* %14, i64 %86)
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %15, align 4
  store i32 %91, i32* %4, align 4
  br label %107

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %81
  %94 = load %struct.sbefifo*, %struct.sbefifo** %5, align 8
  %95 = load i32, i32* @SBEFIFO_UP, align 4
  %96 = load i32, i32* @SBEFIFO_EOT_RAISE, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @sbefifo_regw(%struct.sbefifo* %94, i32 %97, i32 0)
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %93
  %102 = load %struct.device*, %struct.device** %8, align 8
  %103 = load i32, i32* %15, align 4
  %104 = call i32 @dev_err(%struct.device* %102, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %101, %93
  %106 = load i32, i32* %15, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %105, %90, %68, %40
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @dev_vdbg(%struct.device*, i8*, i64, i64, ...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @sbefifo_wait(%struct.sbefifo*, i32, i32*, i64) #1

declare dso_local i64 @sbefifo_vacant(i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @sbefifo_up_write(%struct.sbefifo*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @sbefifo_regw(%struct.sbefifo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
