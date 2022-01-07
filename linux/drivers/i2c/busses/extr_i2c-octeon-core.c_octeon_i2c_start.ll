; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-octeon-core.c_octeon_i2c_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-octeon-core.c_octeon_i2c_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_i2c = type { i32 }

@TWSI_CTL_ENAB = common dso_local global i32 0, align 4
@TWSI_CTL_STA = common dso_local global i32 0, align 4
@STAT_START = common dso_local global i64 0, align 8
@STAT_REP_START = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_i2c*)* @octeon_i2c_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_i2c_start(%struct.octeon_i2c* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_i2c*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.octeon_i2c* %0, %struct.octeon_i2c** %3, align 8
  %6 = load %struct.octeon_i2c*, %struct.octeon_i2c** %3, align 8
  %7 = call i32 @octeon_i2c_hlc_disable(%struct.octeon_i2c* %6)
  %8 = load %struct.octeon_i2c*, %struct.octeon_i2c** %3, align 8
  %9 = load i32, i32* @TWSI_CTL_ENAB, align 4
  %10 = load i32, i32* @TWSI_CTL_STA, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @octeon_i2c_ctl_write(%struct.octeon_i2c* %8, i32 %11)
  %13 = load %struct.octeon_i2c*, %struct.octeon_i2c** %3, align 8
  %14 = call i32 @octeon_i2c_wait(%struct.octeon_i2c* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %30

18:                                               ; preds = %1
  %19 = load %struct.octeon_i2c*, %struct.octeon_i2c** %3, align 8
  %20 = call i64 @octeon_i2c_stat_read(%struct.octeon_i2c* %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @STAT_START, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @STAT_REP_START, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %18
  store i32 0, i32* %2, align 4
  br label %42

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29, %17
  %31 = load %struct.octeon_i2c*, %struct.octeon_i2c** %3, align 8
  %32 = call i32 @octeon_i2c_recovery(%struct.octeon_i2c* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  br label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @EAGAIN, align 4
  %39 = sub nsw i32 0, %38
  br label %40

40:                                               ; preds = %37, %35
  %41 = phi i32 [ %36, %35 ], [ %39, %37 ]
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %28
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @octeon_i2c_hlc_disable(%struct.octeon_i2c*) #1

declare dso_local i32 @octeon_i2c_ctl_write(%struct.octeon_i2c*, i32) #1

declare dso_local i32 @octeon_i2c_wait(%struct.octeon_i2c*) #1

declare dso_local i64 @octeon_i2c_stat_read(%struct.octeon_i2c*) #1

declare dso_local i32 @octeon_i2c_recovery(%struct.octeon_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
