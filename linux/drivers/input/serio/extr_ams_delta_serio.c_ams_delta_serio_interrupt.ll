; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_ams_delta_serio.c_ams_delta_serio_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_ams_delta_serio.c_ams_delta_serio_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ams_delta_serio = type { i32*, i32 }

@FIQ_CIRC_BUFF = common dso_local global i64 0, align 8
@FIQ_IRQ_PEND = common dso_local global i64 0, align 8
@FIQ_KEYS_CNT = common dso_local global i64 0, align 8
@FIQ_HEAD_OFFSET = common dso_local global i64 0, align 8
@FIQ_BUF_LEN = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ams_delta_serio_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ams_delta_serio_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ams_delta_serio*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.ams_delta_serio*
  store %struct.ams_delta_serio* %11, %struct.ams_delta_serio** %5, align 8
  %12 = load %struct.ams_delta_serio*, %struct.ams_delta_serio** %5, align 8
  %13 = getelementptr inbounds %struct.ams_delta_serio, %struct.ams_delta_serio* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @FIQ_CIRC_BUFF, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32* %16, i32** %6, align 8
  %17 = load %struct.ams_delta_serio*, %struct.ams_delta_serio** %5, align 8
  %18 = getelementptr inbounds %struct.ams_delta_serio, %struct.ams_delta_serio* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @FIQ_IRQ_PEND, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %68, %2
  %23 = load %struct.ams_delta_serio*, %struct.ams_delta_serio** %5, align 8
  %24 = getelementptr inbounds %struct.ams_delta_serio, %struct.ams_delta_serio* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @FIQ_KEYS_CNT, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %83

30:                                               ; preds = %22
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.ams_delta_serio*, %struct.ams_delta_serio** %5, align 8
  %33 = getelementptr inbounds %struct.ams_delta_serio, %struct.ams_delta_serio* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @FIQ_HEAD_OFFSET, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i32, i32* %31, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %7, align 4
  %42 = load %struct.ams_delta_serio*, %struct.ams_delta_serio** %5, align 8
  %43 = getelementptr inbounds %struct.ams_delta_serio, %struct.ams_delta_serio* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @FIQ_KEYS_CNT, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.ams_delta_serio*, %struct.ams_delta_serio** %5, align 8
  %50 = getelementptr inbounds %struct.ams_delta_serio, %struct.ams_delta_serio* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @FIQ_HEAD_OFFSET, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ams_delta_serio*, %struct.ams_delta_serio** %5, align 8
  %56 = getelementptr inbounds %struct.ams_delta_serio, %struct.ams_delta_serio* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @FIQ_BUF_LEN, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %54, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %30
  %63 = load %struct.ams_delta_serio*, %struct.ams_delta_serio** %5, align 8
  %64 = getelementptr inbounds %struct.ams_delta_serio, %struct.ams_delta_serio* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @FIQ_HEAD_OFFSET, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %62, %30
  %69 = load %struct.ams_delta_serio*, %struct.ams_delta_serio** %5, align 8
  %70 = getelementptr inbounds %struct.ams_delta_serio, %struct.ams_delta_serio* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @check_data(i32 %71, i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %7, align 4
  %75 = ashr i32 %74, 1
  %76 = and i32 %75, 255
  store i32 %76, i32* %9, align 4
  %77 = load %struct.ams_delta_serio*, %struct.ams_delta_serio** %5, align 8
  %78 = getelementptr inbounds %struct.ams_delta_serio, %struct.ams_delta_serio* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @serio_interrupt(i32 %79, i32 %80, i32 %81)
  br label %22

83:                                               ; preds = %22
  %84 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %84
}

declare dso_local i32 @check_data(i32, i32) #1

declare dso_local i32 @serio_interrupt(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
