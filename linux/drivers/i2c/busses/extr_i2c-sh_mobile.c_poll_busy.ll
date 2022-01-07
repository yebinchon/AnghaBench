; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh_mobile.c_poll_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh_mobile.c_poll_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_i2c_data = type { i32, i32 }

@ICSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"val 0x%02x pd->sr 0x%02x\0A\00", align 1
@ICSR_BUSY = common dso_local global i32 0, align 4
@ICSR_TACK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ICSR_AL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_mobile_i2c_data*)* @poll_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poll_busy(%struct.sh_mobile_i2c_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh_mobile_i2c_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sh_mobile_i2c_data* %0, %struct.sh_mobile_i2c_data** %3, align 8
  store i32 1000, i32* %4, align 4
  br label %6

6:                                                ; preds = %49, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %52

9:                                                ; preds = %6
  %10 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %11 = load i32, i32* @ICSR, align 4
  %12 = call i32 @iic_rd(%struct.sh_mobile_i2c_data* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %14 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %18 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_dbg(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ICSR_BUSY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %47, label %25

25:                                               ; preds = %9
  %26 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %27 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @ICSR_TACK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load i32, i32* @ENXIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %61

38:                                               ; preds = %25
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @ICSR_AL, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %61

46:                                               ; preds = %38
  br label %52

47:                                               ; preds = %9
  %48 = call i32 @udelay(i32 10)
  br label %49

49:                                               ; preds = %47
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %4, align 4
  br label %6

52:                                               ; preds = %46, %6
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @ETIMEDOUT, align 4
  %58 = sub nsw i32 0, %57
  br label %59

59:                                               ; preds = %56, %55
  %60 = phi i32 [ 0, %55 ], [ %58, %56 ]
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %43, %35
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @iic_rd(%struct.sh_mobile_i2c_data*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
