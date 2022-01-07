; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c___sca3000_unlock_reg_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c___sca3000_unlock_reg_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sca3000_state = type { i32*, i32 }
%struct.spi_transfer = type { i32, i32, i32* }

@SCA3000_REG_UNLOCK_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sca3000_state*)* @__sca3000_unlock_reg_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sca3000_unlock_reg_lock(%struct.sca3000_state* %0) #0 {
  %2 = alloca %struct.sca3000_state*, align 8
  %3 = alloca [3 x %struct.spi_transfer], align 16
  store %struct.sca3000_state* %0, %struct.sca3000_state** %2, align 8
  %4 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %3, i64 0, i64 0
  %5 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %4, i32 0, i32 0
  store i32 2, i32* %5, align 16
  %6 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %4, i32 0, i32 1
  store i32 1, i32* %6, align 4
  %7 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %4, i32 0, i32 2
  %8 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %9 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %7, align 8
  %11 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %4, i64 1
  %12 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 0
  store i32 2, i32* %12, align 16
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 1
  store i32 1, i32* %13, align 4
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 2
  %15 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %16 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  store i32* %18, i32** %14, align 8
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i64 1
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 0
  store i32 2, i32* %20, align 16
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 2
  %23 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %24 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  store i32* %26, i32** %22, align 8
  %27 = load i32, i32* @SCA3000_REG_UNLOCK_ADDR, align 4
  %28 = call i8* @SCA3000_WRITE_REG(i32 %27)
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %31 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %29, i32* %33, align 4
  %34 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %35 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* @SCA3000_REG_UNLOCK_ADDR, align 4
  %39 = call i8* @SCA3000_WRITE_REG(i32 %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %42 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  store i32 %40, i32* %44, align 4
  %45 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %46 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  store i32 80, i32* %48, align 4
  %49 = load i32, i32* @SCA3000_REG_UNLOCK_ADDR, align 4
  %50 = call i8* @SCA3000_WRITE_REG(i32 %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %53 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  store i32 %51, i32* %55, align 4
  %56 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %57 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 5
  store i32 160, i32* %59, align 4
  %60 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %61 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %3, i64 0, i64 0
  %64 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %3, i64 0, i64 0
  %65 = call i32 @ARRAY_SIZE(%struct.spi_transfer* %64)
  %66 = call i32 @spi_sync_transfer(i32 %62, %struct.spi_transfer* %63, i32 %65)
  ret i32 %66
}

declare dso_local i8* @SCA3000_WRITE_REG(i32) #1

declare dso_local i32 @spi_sync_transfer(i32, %struct.spi_transfer*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.spi_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
