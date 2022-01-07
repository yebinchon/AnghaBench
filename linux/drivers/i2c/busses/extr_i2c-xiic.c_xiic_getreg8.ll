; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xiic.c_xiic_getreg8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xiic.c_xiic_getreg8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xiic_i2c = type { i64, i64 }

@LITTLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xiic_i2c*, i32)* @xiic_getreg8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xiic_getreg8(%struct.xiic_i2c* %0, i32 %1) #0 {
  %3 = alloca %struct.xiic_i2c*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xiic_i2c* %0, %struct.xiic_i2c** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.xiic_i2c*, %struct.xiic_i2c** %3, align 8
  %7 = getelementptr inbounds %struct.xiic_i2c, %struct.xiic_i2c* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @LITTLE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.xiic_i2c*, %struct.xiic_i2c** %3, align 8
  %13 = getelementptr inbounds %struct.xiic_i2c, %struct.xiic_i2c* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = call i32 @ioread8(i64 %17)
  store i32 %18, i32* %5, align 4
  br label %28

19:                                               ; preds = %2
  %20 = load %struct.xiic_i2c*, %struct.xiic_i2c** %3, align 8
  %21 = getelementptr inbounds %struct.xiic_i2c, %struct.xiic_i2c* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = add nsw i64 %25, 3
  %27 = call i32 @ioread8(i64 %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %19, %11
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @ioread8(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
