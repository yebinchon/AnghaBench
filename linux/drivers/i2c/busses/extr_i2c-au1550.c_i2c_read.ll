; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-au1550.c_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-au1550.c_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_au1550_data = type { i32 }

@PSC_SMBTXRX = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PSC_SMBTXRX_STP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_au1550_data*, i8*, i32)* @i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_read(%struct.i2c_au1550_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_au1550_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_au1550_data* %0, %struct.i2c_au1550_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %56

12:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %32, %12
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sub i32 %15, 1
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %13
  %19 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %5, align 8
  %20 = load i32, i32* @PSC_SMBTXRX, align 4
  %21 = call i32 @WR(%struct.i2c_au1550_data* %19, i32 %20, i32 0)
  %22 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = call i64 @wait_for_rx_byte(%struct.i2c_au1550_data* %22, i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %56

32:                                               ; preds = %18
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %13

35:                                               ; preds = %13
  %36 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %5, align 8
  %37 = load i32, i32* @PSC_SMBTXRX, align 4
  %38 = load i32, i32* @PSC_SMBTXRX_STP, align 4
  %39 = call i32 @WR(%struct.i2c_au1550_data* %36, i32 %37, i32 %38)
  %40 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %5, align 8
  %41 = call i64 @wait_master_done(%struct.i2c_au1550_data* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %56

46:                                               ; preds = %35
  %47 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %5, align 8
  %48 = load i32, i32* @PSC_SMBTXRX, align 4
  %49 = call i32 @RD(%struct.i2c_au1550_data* %47, i32 %48)
  %50 = and i32 %49, 255
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8 %51, i8* %55, align 1
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %46, %43, %29, %11
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @WR(%struct.i2c_au1550_data*, i32, i32) #1

declare dso_local i64 @wait_for_rx_byte(%struct.i2c_au1550_data*, i8*) #1

declare dso_local i64 @wait_master_done(%struct.i2c_au1550_data*) #1

declare dso_local i32 @RD(%struct.i2c_au1550_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
