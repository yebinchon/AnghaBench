; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-octeon-core.c_octeon_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-octeon-core.c_octeon_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_i2c = type { i32 }

@TWSI_CTL_ENAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_i2c*, i32, i32*, i32)* @octeon_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_i2c_write(%struct.octeon_i2c* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.octeon_i2c*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.octeon_i2c* %0, %struct.octeon_i2c** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.octeon_i2c*, %struct.octeon_i2c** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = shl i32 %13, 1
  %15 = call i32 @octeon_i2c_data_write(%struct.octeon_i2c* %12, i32 %14)
  %16 = load %struct.octeon_i2c*, %struct.octeon_i2c** %6, align 8
  %17 = load i32, i32* @TWSI_CTL_ENAB, align 4
  %18 = call i32 @octeon_i2c_ctl_write(%struct.octeon_i2c* %16, i32 %17)
  %19 = load %struct.octeon_i2c*, %struct.octeon_i2c** %6, align 8
  %20 = call i32 @octeon_i2c_wait(%struct.octeon_i2c* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %5, align 4
  br label %59

25:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %55, %25
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %26
  %31 = load %struct.octeon_i2c*, %struct.octeon_i2c** %6, align 8
  %32 = call i32 @octeon_i2c_check_status(%struct.octeon_i2c* %31, i32 0)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %5, align 4
  br label %59

37:                                               ; preds = %30
  %38 = load %struct.octeon_i2c*, %struct.octeon_i2c** %6, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @octeon_i2c_data_write(%struct.octeon_i2c* %38, i32 %43)
  %45 = load %struct.octeon_i2c*, %struct.octeon_i2c** %6, align 8
  %46 = load i32, i32* @TWSI_CTL_ENAB, align 4
  %47 = call i32 @octeon_i2c_ctl_write(%struct.octeon_i2c* %45, i32 %46)
  %48 = load %struct.octeon_i2c*, %struct.octeon_i2c** %6, align 8
  %49 = call i32 @octeon_i2c_wait(%struct.octeon_i2c* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %37
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %5, align 4
  br label %59

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %26

58:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %52, %35, %23
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @octeon_i2c_data_write(%struct.octeon_i2c*, i32) #1

declare dso_local i32 @octeon_i2c_ctl_write(%struct.octeon_i2c*, i32) #1

declare dso_local i32 @octeon_i2c_wait(%struct.octeon_i2c*) #1

declare dso_local i32 @octeon_i2c_check_status(%struct.octeon_i2c*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
