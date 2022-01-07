; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mv64xxx.c_mv64xxx_i2c_wait_for_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mv64xxx.c_mv64xxx_i2c_wait_for_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv64xxx_i2c_data = type { i64, i32, i32, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ETIMEDOUT = common dso_local global i64 0, align 8
@MV64XXX_I2C_STATE_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"mv64xxx: I2C bus locked, block: %d, time_left: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv64xxx_i2c_data*)* @mv64xxx_i2c_wait_for_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv64xxx_i2c_wait_for_completion(%struct.mv64xxx_i2c_data* %0) #0 {
  %2 = alloca %struct.mv64xxx_i2c_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store %struct.mv64xxx_i2c_data* %0, %struct.mv64xxx_i2c_data** %2, align 8
  store i8 0, i8* %5, align 1
  %6 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %7 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %10 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %16 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @wait_event_timeout(i32 %8, i32 %14, i32 %18)
  store i64 %19, i64* %3, align 8
  %20 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %21 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %20, i32 0, i32 2
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load i64, i64* %3, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %1
  %27 = load i64, i64* @ETIMEDOUT, align 8
  %28 = sub nsw i64 0, %27
  %29 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %30 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  store i8 1, i8* %5, align 1
  br label %39

31:                                               ; preds = %1
  %32 = load i64, i64* %3, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i64, i64* %3, align 8
  %36 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %37 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  store i8 1, i8* %5, align 1
  br label %38

38:                                               ; preds = %34, %31
  br label %39

39:                                               ; preds = %38, %26
  %40 = load i8, i8* %5, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %92

43:                                               ; preds = %39
  %44 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %45 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %92

48:                                               ; preds = %43
  %49 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %50 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %49, i32 0, i32 1
  store i32 1, i32* %50, align 8
  %51 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %52 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %51, i32 0, i32 2
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %56 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %59 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %65 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @wait_event_timeout(i32 %57, i32 %63, i32 %67)
  store i64 %68, i64* %3, align 8
  %69 = load i64, i64* %3, align 8
  %70 = icmp sle i64 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %48
  %72 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %73 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %71
  %77 = load i32, i32* @MV64XXX_I2C_STATE_IDLE, align 4
  %78 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %79 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 8
  %80 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %81 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %84 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %3, align 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 @dev_err(i32* %82, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %85, i32 %87)
  %89 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %90 = call i32 @mv64xxx_i2c_hw_init(%struct.mv64xxx_i2c_data* %89)
  br label %91

91:                                               ; preds = %76, %71, %48
  br label %97

92:                                               ; preds = %43, %39
  %93 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %94 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %93, i32 0, i32 2
  %95 = load i64, i64* %4, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  br label %97

97:                                               ; preds = %92, %91
  ret void
}

declare dso_local i64 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i32) #1

declare dso_local i32 @mv64xxx_i2c_hw_init(%struct.mv64xxx_i2c_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
