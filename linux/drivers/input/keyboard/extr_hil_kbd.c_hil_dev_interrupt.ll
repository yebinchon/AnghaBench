; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_hil_kbd.c_hil_dev_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_hil_kbd.c_hil_dev_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.hil_dev = type { i32, i32*, i64 }

@HIL_PACKET_MAX_LENGTH = common dso_local global i32 0, align 4
@HIL_ERR_INT = common dso_local global i32 0, align 4
@HIL_PKT_CMD = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8, i32)* @hil_dev_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hil_dev_interrupt(%struct.serio* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.hil_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %10 = load %struct.serio*, %struct.serio** %4, align 8
  %11 = call %struct.hil_dev* @serio_get_drvdata(%struct.serio* %10)
  store %struct.hil_dev* %11, %struct.hil_dev** %7, align 8
  %12 = load %struct.hil_dev*, %struct.hil_dev** %7, align 8
  %13 = icmp eq %struct.hil_dev* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.hil_dev*, %struct.hil_dev** %7, align 8
  %17 = getelementptr inbounds %struct.hil_dev, %struct.hil_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = load i32, i32* @HIL_PACKET_MAX_LENGTH, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = icmp uge i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load %struct.hil_dev*, %struct.hil_dev** %7, align 8
  %26 = call i32 @hil_dev_process_err(%struct.hil_dev* %25)
  br label %114

27:                                               ; preds = %3
  %28 = load %struct.hil_dev*, %struct.hil_dev** %7, align 8
  %29 = getelementptr inbounds %struct.hil_dev, %struct.hil_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sdiv i32 %30, 4
  store i32 %31, i32* %9, align 4
  %32 = load %struct.hil_dev*, %struct.hil_dev** %7, align 8
  %33 = getelementptr inbounds %struct.hil_dev, %struct.hil_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = srem i32 %34, 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %27
  %38 = load %struct.hil_dev*, %struct.hil_dev** %7, align 8
  %39 = getelementptr inbounds %struct.hil_dev, %struct.hil_dev* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %37, %27
  %45 = load %struct.hil_dev*, %struct.hil_dev** %7, align 8
  %46 = getelementptr inbounds %struct.hil_dev, %struct.hil_dev* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  %52 = load i8, i8* %5, align 1
  %53 = zext i8 %52 to i32
  %54 = load %struct.hil_dev*, %struct.hil_dev** %7, align 8
  %55 = getelementptr inbounds %struct.hil_dev, %struct.hil_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = srem i32 %56, 4
  %58 = sub nsw i32 3, %57
  %59 = mul nsw i32 %58, 8
  %60 = shl i32 %53, %59
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.hil_dev*, %struct.hil_dev** %7, align 8
  %65 = getelementptr inbounds %struct.hil_dev, %struct.hil_dev* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  %70 = load %struct.hil_dev*, %struct.hil_dev** %7, align 8
  %71 = getelementptr inbounds %struct.hil_dev, %struct.hil_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = srem i32 %73, 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %113

76:                                               ; preds = %44
  %77 = load i32, i32* %8, align 4
  %78 = and i32 %77, -65536
  %79 = load i32, i32* @HIL_ERR_INT, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.hil_dev*, %struct.hil_dev** %7, align 8
  %83 = call i32 @hil_dev_process_err(%struct.hil_dev* %82)
  br label %112

84:                                               ; preds = %76
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @HIL_PKT_CMD, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %111

89:                                               ; preds = %84
  %90 = load i32, i32* %8, align 4
  %91 = call i64 @hil_dev_is_command_response(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load %struct.hil_dev*, %struct.hil_dev** %7, align 8
  %95 = call i32 @hil_dev_handle_command_response(%struct.hil_dev* %94)
  br label %108

96:                                               ; preds = %89
  %97 = load %struct.hil_dev*, %struct.hil_dev** %7, align 8
  %98 = getelementptr inbounds %struct.hil_dev, %struct.hil_dev* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load %struct.hil_dev*, %struct.hil_dev** %7, align 8
  %103 = call i32 @hil_dev_handle_ptr_events(%struct.hil_dev* %102)
  br label %107

104:                                              ; preds = %96
  %105 = load %struct.hil_dev*, %struct.hil_dev** %7, align 8
  %106 = call i32 @hil_dev_handle_kbd_events(%struct.hil_dev* %105)
  br label %107

107:                                              ; preds = %104, %101
  br label %108

108:                                              ; preds = %107, %93
  %109 = load %struct.hil_dev*, %struct.hil_dev** %7, align 8
  %110 = getelementptr inbounds %struct.hil_dev, %struct.hil_dev* %109, i32 0, i32 0
  store i32 0, i32* %110, align 8
  br label %111

111:                                              ; preds = %108, %84
  br label %112

112:                                              ; preds = %111, %81
  br label %113

113:                                              ; preds = %112, %44
  br label %114

114:                                              ; preds = %113, %24
  %115 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %115
}

declare dso_local %struct.hil_dev* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @hil_dev_process_err(%struct.hil_dev*) #1

declare dso_local i64 @hil_dev_is_command_response(i32) #1

declare dso_local i32 @hil_dev_handle_command_response(%struct.hil_dev*) #1

declare dso_local i32 @hil_dev_handle_ptr_events(%struct.hil_dev*) #1

declare dso_local i32 @hil_dev_handle_kbd_events(%struct.hil_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
