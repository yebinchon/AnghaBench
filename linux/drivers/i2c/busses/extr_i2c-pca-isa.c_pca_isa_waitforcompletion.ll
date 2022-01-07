; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pca-isa.c_pca_isa_waitforcompletion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pca-isa.c_pca_isa_waitforcompletion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@irq = common dso_local global i32 0, align 4
@pca_wait = common dso_local global i32 0, align 4
@I2C_PCA_CON = common dso_local global i32 0, align 4
@I2C_PCA_CON_SI = common dso_local global i32 0, align 4
@pca_isa_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pca_isa_waitforcompletion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca_isa_waitforcompletion(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @irq, align 4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load i32, i32* @pca_wait, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = load i32, i32* @I2C_PCA_CON, align 4
  %11 = call i32 @pca_isa_readbyte(i8* %9, i32 %10)
  %12 = load i32, i32* @I2C_PCA_CON_SI, align 4
  %13 = and i32 %11, %12
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pca_isa_ops, i32 0, i32 0), align 8
  %15 = call i64 @wait_event_timeout(i32 %8, i32 %13, i64 %14)
  store i64 %15, i64* %4, align 8
  br label %37

16:                                               ; preds = %1
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pca_isa_ops, i32 0, i32 0), align 8
  %19 = add i64 %17, %18
  store i64 %19, i64* %3, align 8
  br label %20

20:                                               ; preds = %33, %16
  %21 = load i64, i64* @jiffies, align 8
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @time_before(i64 %21, i64 %22)
  store i64 %23, i64* %4, align 8
  %24 = load i8*, i8** %2, align 8
  %25 = load i32, i32* @I2C_PCA_CON, align 4
  %26 = call i32 @pca_isa_readbyte(i8* %24, i32 %25)
  %27 = load i32, i32* @I2C_PCA_CON_SI, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %36

31:                                               ; preds = %20
  %32 = call i32 @udelay(i32 100)
  br label %33

33:                                               ; preds = %31
  %34 = load i64, i64* %4, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %20, label %36

36:                                               ; preds = %33, %30
  br label %37

37:                                               ; preds = %36, %7
  %38 = load i64, i64* %4, align 8
  %39 = icmp sgt i64 %38, 0
  %40 = zext i1 %39 to i32
  ret i32 %40
}

declare dso_local i64 @wait_event_timeout(i32, i32, i64) #1

declare dso_local i32 @pca_isa_readbyte(i8*, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
