; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-synquacer.c_synquacer_i2c_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-synquacer.c_synquacer_i2c_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synquacer_i2c = type { i32, i32, i64, i32*, i64, i32, i64 }

@SYNQUACER_I2C_REG_BCR = common dso_local global i64 0, align 8
@STATE_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.synquacer_i2c*, i32)* @synquacer_i2c_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synquacer_i2c_stop(%struct.synquacer_i2c* %0, i32 %1) #0 {
  %3 = alloca %struct.synquacer_i2c*, align 8
  %4 = alloca i32, align 4
  store %struct.synquacer_i2c* %0, %struct.synquacer_i2c** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %3, align 8
  %6 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %5, i32 0, i32 6
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SYNQUACER_I2C_REG_BCR, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @writeb(i32 0, i64 %9)
  %11 = load i32, i32* @STATE_IDLE, align 4
  %12 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %3, align 8
  %13 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 8
  %14 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %3, align 8
  %15 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %3, align 8
  %17 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %16, i32 0, i32 3
  store i32* null, i32** %17, align 8
  %18 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %3, align 8
  %19 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %3, align 8
  %23 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %3, align 8
  %29 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %26, %2
  %31 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %3, align 8
  %32 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %31, i32 0, i32 1
  %33 = call i32 @complete(i32* %32)
  ret void
}

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
