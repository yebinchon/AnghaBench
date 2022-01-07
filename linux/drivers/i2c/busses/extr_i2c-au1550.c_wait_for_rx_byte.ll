; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-au1550.c_wait_for_rx_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-au1550.c_wait_for_rx_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_au1550_data = type { i32 }

@EIO = common dso_local global i32 0, align 4
@PSC_SMBSTAT = common dso_local global i32 0, align 4
@PSC_SMBSTAT_RE = common dso_local global i8 0, align 1
@PSC_SMBTXRX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_au1550_data*, i8*)* @wait_for_rx_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_rx_byte(%struct.i2c_au1550_data* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_au1550_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_au1550_data* %0, %struct.i2c_au1550_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %4, align 8
  %8 = call i64 @wait_xfer_done(%struct.i2c_au1550_data* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %47

13:                                               ; preds = %2
  %14 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_au1550_data, %struct.i2c_au1550_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 100
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %39, %13
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %47

26:                                               ; preds = %18
  %27 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %4, align 8
  %28 = load i32, i32* @PSC_SMBSTAT, align 4
  %29 = call zeroext i8 @RD(%struct.i2c_au1550_data* %27, i32 %28)
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @PSC_SMBSTAT_RE, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %30, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %38

36:                                               ; preds = %26
  %37 = call i32 @udelay(i32 1)
  br label %38

38:                                               ; preds = %36, %35
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %18, label %42

42:                                               ; preds = %39
  %43 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %4, align 8
  %44 = load i32, i32* @PSC_SMBTXRX, align 4
  %45 = call zeroext i8 @RD(%struct.i2c_au1550_data* %43, i32 %44)
  %46 = load i8*, i8** %5, align 8
  store i8 %45, i8* %46, align 1
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %42, %23, %10
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @wait_xfer_done(%struct.i2c_au1550_data*) #1

declare dso_local zeroext i8 @RD(%struct.i2c_au1550_data*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
