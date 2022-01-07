; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_master_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_master_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_i2c = type { i32, i32, i32, i64, i32*, i64, i32 }

@.str = private unnamed_addr constant [20 x i8] c"master_complete %d\0A\00", align 1
@QUIRK_POLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c24xx_i2c*, i32)* @s3c24xx_i2c_master_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_i2c_master_complete(%struct.s3c24xx_i2c* %0, i32 %1) #0 {
  %3 = alloca %struct.s3c24xx_i2c*, align 8
  %4 = alloca i32, align 4
  store %struct.s3c24xx_i2c* %0, %struct.s3c24xx_i2c** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %6 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @dev_dbg(i32 %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %11 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %10, i32 0, i32 5
  store i64 0, i64* %11, align 8
  %12 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %13 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %12, i32 0, i32 4
  store i32* null, i32** %13, align 8
  %14 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %15 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %19 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %25 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  br label %26

26:                                               ; preds = %22, %2
  %27 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %28 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @QUIRK_POLL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %35 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %34, i32 0, i32 2
  %36 = call i32 @wake_up(i32* %35)
  br label %37

37:                                               ; preds = %33, %26
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
