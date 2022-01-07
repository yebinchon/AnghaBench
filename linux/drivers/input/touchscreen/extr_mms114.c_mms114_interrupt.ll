; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mms114.c_mms114_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mms114.c_mms114_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mms114_data = type { %struct.input_dev* }
%struct.input_dev = type { i32, i32 }
%struct.mms114_touch = type { i32 }

@MMS114_MAX_TOUCH = common dso_local global i32 0, align 4
@MMS114_PACKET_SIZE = common dso_local global i32 0, align 4
@MMS114_PACKET_NUM = common dso_local global i32 0, align 4
@MMS114_INFORMATION = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mms114_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mms114_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mms114_data*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.mms114_data*
  store %struct.mms114_data* %14, %struct.mms114_data** %5, align 8
  %15 = load %struct.mms114_data*, %struct.mms114_data** %5, align 8
  %16 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %15, i32 0, i32 0
  %17 = load %struct.input_dev*, %struct.input_dev** %16, align 8
  store %struct.input_dev* %17, %struct.input_dev** %6, align 8
  %18 = load i32, i32* @MMS114_MAX_TOUCH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca %struct.mms114_touch, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %22 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %23 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %26 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %2
  %30 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %31 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  br label %78

33:                                               ; preds = %2
  %34 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %35 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load %struct.mms114_data*, %struct.mms114_data** %5, align 8
  %38 = load i32, i32* @MMS114_PACKET_SIZE, align 4
  %39 = call i32 @mms114_read_reg(%struct.mms114_data* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %78

43:                                               ; preds = %33
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @MMS114_PACKET_NUM, align 4
  %46 = sdiv i32 %44, %45
  store i32 %46, i32* %10, align 4
  %47 = load %struct.mms114_data*, %struct.mms114_data** %5, align 8
  %48 = load i32, i32* @MMS114_INFORMATION, align 4
  %49 = load i32, i32* %9, align 4
  %50 = bitcast %struct.mms114_touch* %21 to i32*
  %51 = call i32 @__mms114_read_reg(%struct.mms114_data* %47, i32 %48, i32 %49, i32* %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %78

55:                                               ; preds = %43
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %66, %55
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load %struct.mms114_data*, %struct.mms114_data** %5, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.mms114_touch, %struct.mms114_touch* %21, i64 %63
  %65 = call i32 @mms114_process_mt(%struct.mms114_data* %61, %struct.mms114_touch* %64)
  br label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %56

69:                                               ; preds = %56
  %70 = load %struct.mms114_data*, %struct.mms114_data** %5, align 8
  %71 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %70, i32 0, i32 0
  %72 = load %struct.input_dev*, %struct.input_dev** %71, align 8
  %73 = call i32 @input_mt_report_pointer_emulation(%struct.input_dev* %72, i32 1)
  %74 = load %struct.mms114_data*, %struct.mms114_data** %5, align 8
  %75 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %74, i32 0, i32 0
  %76 = load %struct.input_dev*, %struct.input_dev** %75, align 8
  %77 = call i32 @input_sync(%struct.input_dev* %76)
  br label %78

78:                                               ; preds = %69, %54, %42, %29
  %79 = load i32, i32* @IRQ_HANDLED, align 4
  %80 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %80)
  ret i32 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @mms114_read_reg(%struct.mms114_data*, i32) #2

declare dso_local i32 @__mms114_read_reg(%struct.mms114_data*, i32, i32, i32*) #2

declare dso_local i32 @mms114_process_mt(%struct.mms114_data*, %struct.mms114_touch*) #2

declare dso_local i32 @input_mt_report_pointer_emulation(%struct.input_dev*, i32) #2

declare dso_local i32 @input_sync(%struct.input_dev*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
