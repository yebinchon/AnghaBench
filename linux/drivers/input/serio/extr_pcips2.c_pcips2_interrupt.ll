; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_pcips2.c_pcips2_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_pcips2.c_pcips2_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcips2_data = type { i32, i64 }

@PS2_STATUS = common dso_local global i64 0, align 8
@PS2_STAT_RXFULL = common dso_local global i8 0, align 1
@PS2_DATA = common dso_local global i64 0, align 8
@PS2_STAT_PARITY = common dso_local global i8 0, align 1
@SERIO_PARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pcips2_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcips2_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pcips2_data*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.pcips2_data*
  store %struct.pcips2_data* %11, %struct.pcips2_data** %5, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %68, %2
  %13 = load %struct.pcips2_data*, %struct.pcips2_data** %5, align 8
  %14 = getelementptr inbounds %struct.pcips2_data, %struct.pcips2_data* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PS2_STATUS, align 8
  %17 = add nsw i64 %15, %16
  %18 = call zeroext i8 @inb(i64 %17)
  store i8 %18, i8* %6, align 1
  %19 = load i8, i8* %6, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @PS2_STAT_RXFULL, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %12
  br label %69

26:                                               ; preds = %12
  store i32 1, i32* %8, align 4
  %27 = load %struct.pcips2_data*, %struct.pcips2_data** %5, align 8
  %28 = getelementptr inbounds %struct.pcips2_data, %struct.pcips2_data* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PS2_DATA, align 8
  %31 = add nsw i64 %29, %30
  %32 = call zeroext i8 @inb(i64 %31)
  store i8 %32, i8* %7, align 1
  %33 = load i8, i8* %6, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %34, 255
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load i8, i8* %7, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, 255
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %69

41:                                               ; preds = %36, %26
  %42 = load i8, i8* %6, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* @PS2_STAT_PARITY, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @SERIO_PARITY, align 4
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i32 [ 0, %48 ], [ %50, %49 ]
  store i32 %52, i32* %9, align 4
  %53 = load i8, i8* %7, align 1
  %54 = call i32 @hweight8(i8 zeroext %53)
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* @SERIO_PARITY, align 4
  %59 = load i32, i32* %9, align 4
  %60 = xor i32 %59, %58
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %57, %51
  %62 = load %struct.pcips2_data*, %struct.pcips2_data** %5, align 8
  %63 = getelementptr inbounds %struct.pcips2_data, %struct.pcips2_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i8, i8* %7, align 1
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @serio_interrupt(i32 %64, i8 zeroext %65, i32 %66)
  br label %68

68:                                               ; preds = %61
  br i1 true, label %12, label %69

69:                                               ; preds = %68, %40, %25
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @IRQ_RETVAL(i32 %70)
  ret i32 %71
}

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @hweight8(i8 zeroext) #1

declare dso_local i32 @serio_interrupt(i32, i8 zeroext, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
