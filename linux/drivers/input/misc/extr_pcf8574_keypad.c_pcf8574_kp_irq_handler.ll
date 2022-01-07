; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_pcf8574_keypad.c_pcf8574_kp_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_pcf8574_keypad.c_pcf8574_kp_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kp_data = type { i8, i16*, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pcf8574_kp_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf8574_kp_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kp_data*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.kp_data*
  store %struct.kp_data* %10, %struct.kp_data** %5, align 8
  %11 = load %struct.kp_data*, %struct.kp_data** %5, align 8
  %12 = call zeroext i8 @read_state(%struct.kp_data* %11)
  store i8 %12, i8* %6, align 1
  %13 = load %struct.kp_data*, %struct.kp_data** %5, align 8
  %14 = getelementptr inbounds %struct.kp_data, %struct.kp_data* %13, i32 0, i32 0
  %15 = load i8, i8* %14, align 8
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* %6, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp ne i32 %16, %18
  br i1 %19, label %20, label %68

20:                                               ; preds = %2
  %21 = load i8, i8* %6, align 1
  %22 = zext i8 %21 to i32
  %23 = load %struct.kp_data*, %struct.kp_data** %5, align 8
  %24 = getelementptr inbounds %struct.kp_data, %struct.kp_data* %23, i32 0, i32 1
  %25 = load i16*, i16** %24, align 8
  %26 = call zeroext i8 @ARRAY_SIZE(i16* %25)
  %27 = zext i8 %26 to i32
  %28 = icmp slt i32 %22, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %20
  %33 = load %struct.kp_data*, %struct.kp_data** %5, align 8
  %34 = getelementptr inbounds %struct.kp_data, %struct.kp_data* %33, i32 0, i32 1
  %35 = load i16*, i16** %34, align 8
  %36 = load i8, i8* %6, align 1
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds i16, i16* %35, i64 %37
  %39 = load i16, i16* %38, align 2
  %40 = zext i16 %39 to i32
  br label %52

41:                                               ; preds = %20
  %42 = load %struct.kp_data*, %struct.kp_data** %5, align 8
  %43 = getelementptr inbounds %struct.kp_data, %struct.kp_data* %42, i32 0, i32 1
  %44 = load i16*, i16** %43, align 8
  %45 = load %struct.kp_data*, %struct.kp_data** %5, align 8
  %46 = getelementptr inbounds %struct.kp_data, %struct.kp_data* %45, i32 0, i32 0
  %47 = load i8, i8* %46, align 8
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds i16, i16* %44, i64 %48
  %50 = load i16, i16* %49, align 2
  %51 = zext i16 %50 to i32
  br label %52

52:                                               ; preds = %41, %32
  %53 = phi i32 [ %40, %32 ], [ %51, %41 ]
  %54 = trunc i32 %53 to i16
  store i16 %54, i16* %8, align 2
  %55 = load %struct.kp_data*, %struct.kp_data** %5, align 8
  %56 = getelementptr inbounds %struct.kp_data, %struct.kp_data* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i16, i16* %8, align 2
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @input_report_key(i32 %57, i16 zeroext %58, i32 %59)
  %61 = load %struct.kp_data*, %struct.kp_data** %5, align 8
  %62 = getelementptr inbounds %struct.kp_data, %struct.kp_data* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @input_sync(i32 %63)
  %65 = load i8, i8* %6, align 1
  %66 = load %struct.kp_data*, %struct.kp_data** %5, align 8
  %67 = getelementptr inbounds %struct.kp_data, %struct.kp_data* %66, i32 0, i32 0
  store i8 %65, i8* %67, align 8
  br label %68

68:                                               ; preds = %52, %2
  %69 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %69
}

declare dso_local zeroext i8 @read_state(%struct.kp_data*) #1

declare dso_local zeroext i8 @ARRAY_SIZE(i16*) #1

declare dso_local i32 @input_report_key(i32, i16 zeroext, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
