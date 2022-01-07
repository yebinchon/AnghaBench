; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-au1550.c_wait_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-au1550.c_wait_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_au1550_data = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@PSC_SMBEVNT = common dso_local global i32 0, align 4
@PSC_SMBEVNT_DN = common dso_local global i64 0, align 8
@PSC_SMBEVNT_AN = common dso_local global i64 0, align 8
@PSC_SMBEVNT_AL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_au1550_data*)* @wait_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_ack(%struct.i2c_au1550_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_au1550_data*, align 8
  %4 = alloca i64, align 8
  store %struct.i2c_au1550_data* %0, %struct.i2c_au1550_data** %3, align 8
  %5 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %3, align 8
  %6 = call i64 @wait_xfer_done(%struct.i2c_au1550_data* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @ETIMEDOUT, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %27

11:                                               ; preds = %1
  %12 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %3, align 8
  %13 = load i32, i32* @PSC_SMBEVNT, align 4
  %14 = call i64 @RD(%struct.i2c_au1550_data* %12, i32 %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @PSC_SMBEVNT_DN, align 8
  %17 = load i64, i64* @PSC_SMBEVNT_AN, align 8
  %18 = or i64 %16, %17
  %19 = load i64, i64* @PSC_SMBEVNT_AL, align 8
  %20 = or i64 %18, %19
  %21 = and i64 %15, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %11
  %24 = load i32, i32* @ETIMEDOUT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %23, %8
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @wait_xfer_done(%struct.i2c_au1550_data*) #1

declare dso_local i64 @RD(%struct.i2c_au1550_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
