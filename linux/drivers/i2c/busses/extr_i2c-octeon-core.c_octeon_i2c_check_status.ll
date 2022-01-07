; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-octeon-core.c_octeon_i2c_check_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-octeon-core.c_octeon_i2c_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_i2c = type { i32, i64, i64 }

@EIO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unhandled state: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_i2c*, i32)* @octeon_i2c_check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_i2c_check_status(%struct.octeon_i2c* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.octeon_i2c*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.octeon_i2c* %0, %struct.octeon_i2c** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %8 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %13 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %16 = call i64 @SW_TWSI(%struct.octeon_i2c* %15)
  %17 = add nsw i64 %14, %16
  %18 = call i32 @__raw_readq(i64 %17)
  store i32 %18, i32* %6, align 4
  br label %22

19:                                               ; preds = %2
  %20 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %21 = call i32 @octeon_i2c_stat_read(%struct.octeon_i2c* %20)
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %19, %11
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %54 [
    i32 149, label %24
    i32 154, label %24
    i32 144, label %24
    i32 131, label %24
    i32 129, label %24
    i32 142, label %25
    i32 141, label %32
    i32 148, label %39
    i32 147, label %39
    i32 146, label %39
    i32 145, label %39
    i32 140, label %42
    i32 139, label %42
    i32 151, label %42
    i32 150, label %42
    i32 138, label %45
    i32 137, label %45
    i32 136, label %45
    i32 135, label %45
    i32 133, label %45
    i32 132, label %45
    i32 134, label %45
    i32 128, label %48
    i32 152, label %48
    i32 130, label %51
    i32 143, label %51
    i32 153, label %51
  ]

24:                                               ; preds = %22, %22, %22, %22, %22
  store i32 0, i32* %3, align 4
  br label %62

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %62

29:                                               ; preds = %25
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %62

32:                                               ; preds = %22
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %62

36:                                               ; preds = %32
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %62

39:                                               ; preds = %22, %22, %22, %22
  %40 = load i32, i32* @EAGAIN, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %62

42:                                               ; preds = %22, %22, %22, %22
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %62

45:                                               ; preds = %22, %22, %22, %22, %22, %22, %22
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %62

48:                                               ; preds = %22, %22
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %62

51:                                               ; preds = %22, %22, %22
  %52 = load i32, i32* @ENXIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %62

54:                                               ; preds = %22
  %55 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %56 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %54, %51, %48, %45, %42, %39, %36, %35, %29, %28, %24
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @__raw_readq(i64) #1

declare dso_local i64 @SW_TWSI(%struct.octeon_i2c*) #1

declare dso_local i32 @octeon_i2c_stat_read(%struct.octeon_i2c*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
