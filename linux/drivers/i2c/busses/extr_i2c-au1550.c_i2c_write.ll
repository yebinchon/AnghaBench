; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-au1550.c_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-au1550.c_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_au1550_data = type { i32 }

@PSC_SMBTXRX = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PSC_SMBTXRX_STP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_au1550_data*, i8*, i32)* @i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_write(%struct.i2c_au1550_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_au1550_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.i2c_au1550_data* %0, %struct.i2c_au1550_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %60

13:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %36, %13
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = sub i32 %16, 1
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %14
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i64
  store i64 %25, i64* %9, align 8
  %26 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %5, align 8
  %27 = load i32, i32* @PSC_SMBTXRX, align 4
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @WR(%struct.i2c_au1550_data* %26, i32 %27, i64 %28)
  %30 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %5, align 8
  %31 = call i64 @wait_ack(%struct.i2c_au1550_data* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %19
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %60

36:                                               ; preds = %19
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %14

39:                                               ; preds = %14
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i64
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* @PSC_SMBTXRX_STP, align 8
  %47 = load i64, i64* %9, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %9, align 8
  %49 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %5, align 8
  %50 = load i32, i32* @PSC_SMBTXRX, align 4
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @WR(%struct.i2c_au1550_data* %49, i32 %50, i64 %51)
  %53 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %5, align 8
  %54 = call i64 @wait_master_done(%struct.i2c_au1550_data* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %39
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %60

59:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %56, %33, %12
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @WR(%struct.i2c_au1550_data*, i32, i64) #1

declare dso_local i64 @wait_ack(%struct.i2c_au1550_data*) #1

declare dso_local i64 @wait_master_done(%struct.i2c_au1550_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
