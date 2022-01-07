; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_fsi_master_acf_gpio_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_fsi_master_acf_gpio_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master_acf = type { i32, i64, i64, i32 }

@ARB_ARM_REQ = common dso_local global i64 0, align 8
@ARB_REG = common dso_local global i64 0, align 8
@CF_STARTED = common dso_local global i64 0, align 8
@SCU_COPRO_CTRL = common dso_local global i32 0, align 4
@SCU_COPRO_CLK_EN = common dso_local global i32 0, align 4
@CVIC_TRIG_REG = common dso_local global i64 0, align 8
@ARB_ARM_ACK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"GPIO request arbitration timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @fsi_master_acf_gpio_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_master_acf_gpio_request(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fsi_master_acf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.fsi_master_acf*
  store %struct.fsi_master_acf* %9, %struct.fsi_master_acf** %4, align 8
  %10 = load i64, i64* @ARB_ARM_REQ, align 8
  %11 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %4, align 8
  %12 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ARB_REG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @iowrite8(i64 %10, i64 %15)
  %17 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %4, align 8
  %18 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CF_STARTED, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i64 @ioread32(i64 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  %25 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %4, align 8
  %26 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SCU_COPRO_CTRL, align 4
  %29 = call i32 @regmap_read(i32 %27, i32 %28, i32* %7)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @SCU_COPRO_CLK_EN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %78

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %1
  %37 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %4, align 8
  %38 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %4, align 8
  %43 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CVIC_TRIG_REG, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @iowrite32(i32 2, i64 %46)
  br label %48

48:                                               ; preds = %41, %36
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %65, %48
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 10000
  br i1 %51, label %52, label %68

52:                                               ; preds = %49
  %53 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %4, align 8
  %54 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ARB_REG, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i64 @ioread8(i64 %57)
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* @ARB_ARM_REQ, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %68

63:                                               ; preds = %52
  %64 = call i32 @udelay(i32 1)
  br label %65

65:                                               ; preds = %63
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %49

68:                                               ; preds = %62, %49
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* @ARB_ARM_ACK, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %4, align 8
  %74 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dev_warn(i32 %75, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %72, %68
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %34
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @iowrite8(i64, i64) #1

declare dso_local i64 @ioread32(i64) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i64 @ioread8(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
