; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/tablet/extr_wacom_serial4.c_wacom_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/tablet/extr_wacom_serial4.c_wacom_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.wacom = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@DATA_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"throwing away %d bytes of garbage\0A\00", align 1
@PACKET_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8, i32)* @wacom_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_interrupt(%struct.serio* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.serio*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct.wacom*, align 8
  store %struct.serio* %0, %struct.serio** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  %9 = load %struct.serio*, %struct.serio** %5, align 8
  %10 = call %struct.wacom* @serio_get_drvdata(%struct.serio* %9)
  store %struct.wacom* %10, %struct.wacom** %8, align 8
  %11 = load i8, i8* %6, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 128
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.wacom*, %struct.wacom** %8, align 8
  %17 = getelementptr inbounds %struct.wacom, %struct.wacom* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  br label %18

18:                                               ; preds = %15, %3
  %19 = load i8, i8* %6, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 13
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load %struct.wacom*, %struct.wacom** %8, align 8
  %24 = getelementptr inbounds %struct.wacom, %struct.wacom* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 128
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %22
  %31 = load %struct.wacom*, %struct.wacom** %8, align 8
  %32 = call i32 @wacom_handle_response(%struct.wacom* %31)
  %33 = load %struct.wacom*, %struct.wacom** %8, align 8
  %34 = call i32 @wacom_clear_data_buf(%struct.wacom* %33)
  %35 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %35, i32* %4, align 4
  br label %87

36:                                               ; preds = %22, %18
  %37 = load %struct.wacom*, %struct.wacom** %8, align 8
  %38 = getelementptr inbounds %struct.wacom, %struct.wacom* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @DATA_SIZE, align 4
  %41 = sub nsw i32 %40, 2
  %42 = icmp sgt i32 %39, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %36
  %44 = load %struct.wacom*, %struct.wacom** %8, align 8
  %45 = getelementptr inbounds %struct.wacom, %struct.wacom* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.wacom*, %struct.wacom** %8, align 8
  %49 = getelementptr inbounds %struct.wacom, %struct.wacom* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dev_dbg(i32* %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.wacom*, %struct.wacom** %8, align 8
  %53 = call i32 @wacom_clear_data_buf(%struct.wacom* %52)
  br label %54

54:                                               ; preds = %43, %36
  %55 = load i8, i8* %6, align 1
  %56 = zext i8 %55 to i32
  %57 = load %struct.wacom*, %struct.wacom** %8, align 8
  %58 = getelementptr inbounds %struct.wacom, %struct.wacom* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.wacom*, %struct.wacom** %8, align 8
  %61 = getelementptr inbounds %struct.wacom, %struct.wacom* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %59, i64 %64
  store i32 %56, i32* %65, align 4
  %66 = load %struct.wacom*, %struct.wacom** %8, align 8
  %67 = getelementptr inbounds %struct.wacom, %struct.wacom* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* @PACKET_LENGTH, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %54
  %73 = load %struct.wacom*, %struct.wacom** %8, align 8
  %74 = getelementptr inbounds %struct.wacom, %struct.wacom* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 128
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load %struct.wacom*, %struct.wacom** %8, align 8
  %82 = call i32 @wacom_handle_packet(%struct.wacom* %81)
  %83 = load %struct.wacom*, %struct.wacom** %8, align 8
  %84 = call i32 @wacom_clear_data_buf(%struct.wacom* %83)
  br label %85

85:                                               ; preds = %80, %72, %54
  %86 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %85, %30
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.wacom* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @wacom_handle_response(%struct.wacom*) #1

declare dso_local i32 @wacom_clear_data_buf(%struct.wacom*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @wacom_handle_packet(%struct.wacom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
