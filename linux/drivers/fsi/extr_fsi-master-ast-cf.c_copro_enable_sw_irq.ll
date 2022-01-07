; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_copro_enable_sw_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_copro_enable_sw_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master_acf = type { i32, i64 }

@CVIC_EN_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Failed to enable coprocessor interrupt !\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_master_acf*)* @copro_enable_sw_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copro_enable_sw_irq(%struct.fsi_master_acf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsi_master_acf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fsi_master_acf* %0, %struct.fsi_master_acf** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %28, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 10
  br i1 %8, label %9, label %31

9:                                                ; preds = %6
  %10 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %11 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CVIC_EN_REG, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @iowrite32(i32 2, i64 %14)
  %16 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %17 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CVIC_EN_REG, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @ioread32(i64 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 2
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %9
  br label %31

26:                                               ; preds = %9
  %27 = call i32 @msleep(i32 1)
  br label %28

28:                                               ; preds = %26
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %6

31:                                               ; preds = %25, %6
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, 2
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %37 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %43

42:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %35
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
