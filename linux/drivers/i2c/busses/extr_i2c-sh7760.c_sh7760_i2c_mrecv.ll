; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh7760.c_sh7760_i2c_mrecv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh7760.c_sh7760_i2c_mrecv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cami2c = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@IDF_RECV = common dso_local global i32 0, align 4
@I2CSAR = common dso_local global i32 0, align 4
@I2CMAR = common dso_local global i32 0, align 4
@FIFO_SIZE = common dso_local global i32 0, align 4
@I2CFCR = common dso_local global i32 0, align 4
@FCR_RFRST = common dso_local global i32 0, align 4
@FCR_TFRST = common dso_local global i32 0, align 4
@I2CMSR = common dso_local global i32 0, align 4
@I2CMCR = common dso_local global i32 0, align 4
@MCR_MIE = common dso_local global i32 0, align 4
@MCR_ESG = common dso_local global i32 0, align 4
@I2CMIER = common dso_local global i32 0, align 4
@MIE_MNRE = common dso_local global i32 0, align 4
@MIE_MALE = common dso_local global i32 0, align 4
@MIE_MSTE = common dso_local global i32 0, align 4
@MIE_MATE = common dso_local global i32 0, align 4
@I2CFIER = common dso_local global i32 0, align 4
@FIER_RXIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cami2c*)* @sh7760_i2c_mrecv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh7760_i2c_mrecv(%struct.cami2c* %0) #0 {
  %2 = alloca %struct.cami2c*, align 8
  %3 = alloca i32, align 4
  store %struct.cami2c* %0, %struct.cami2c** %2, align 8
  %4 = load i32, i32* @IDF_RECV, align 4
  %5 = load %struct.cami2c*, %struct.cami2c** %2, align 8
  %6 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = or i32 %7, %4
  store i32 %8, i32* %6, align 8
  %9 = load %struct.cami2c*, %struct.cami2c** %2, align 8
  %10 = load i32, i32* @I2CSAR, align 4
  %11 = call i32 @OUT32(%struct.cami2c* %9, i32 %10, i32 254)
  %12 = load %struct.cami2c*, %struct.cami2c** %2, align 8
  %13 = load i32, i32* @I2CMAR, align 4
  %14 = load %struct.cami2c*, %struct.cami2c** %2, align 8
  %15 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 1
  %20 = or i32 %19, 1
  %21 = call i32 @OUT32(%struct.cami2c* %12, i32 %13, i32 %20)
  %22 = load %struct.cami2c*, %struct.cami2c** %2, align 8
  %23 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @FIFO_SIZE, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i32, i32* @FIFO_SIZE, align 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %39

32:                                               ; preds = %1
  %33 = load %struct.cami2c*, %struct.cami2c** %2, align 8
  %34 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %32, %29
  %40 = load %struct.cami2c*, %struct.cami2c** %2, align 8
  %41 = load i32, i32* @I2CFCR, align 4
  %42 = load i32, i32* @FCR_RFRST, align 4
  %43 = load i32, i32* @FCR_TFRST, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @OUT32(%struct.cami2c* %40, i32 %41, i32 %44)
  %46 = load %struct.cami2c*, %struct.cami2c** %2, align 8
  %47 = load i32, i32* @I2CFCR, align 4
  %48 = load i32, i32* @FCR_TFRST, align 4
  %49 = load i32, i32* %3, align 4
  %50 = and i32 %49, 15
  %51 = shl i32 %50, 4
  %52 = or i32 %48, %51
  %53 = call i32 @OUT32(%struct.cami2c* %46, i32 %47, i32 %52)
  %54 = load %struct.cami2c*, %struct.cami2c** %2, align 8
  %55 = load i32, i32* @I2CMSR, align 4
  %56 = call i32 @OUT32(%struct.cami2c* %54, i32 %55, i32 0)
  %57 = load %struct.cami2c*, %struct.cami2c** %2, align 8
  %58 = load i32, i32* @I2CMCR, align 4
  %59 = load i32, i32* @MCR_MIE, align 4
  %60 = load i32, i32* @MCR_ESG, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @OUT32(%struct.cami2c* %57, i32 %58, i32 %61)
  %63 = load %struct.cami2c*, %struct.cami2c** %2, align 8
  %64 = load i32, i32* @I2CMIER, align 4
  %65 = load i32, i32* @MIE_MNRE, align 4
  %66 = load i32, i32* @MIE_MALE, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @MIE_MSTE, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @MIE_MATE, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @OUT32(%struct.cami2c* %63, i32 %64, i32 %71)
  %73 = load %struct.cami2c*, %struct.cami2c** %2, align 8
  %74 = load i32, i32* @I2CFIER, align 4
  %75 = load i32, i32* @FIER_RXIE, align 4
  %76 = call i32 @OUT32(%struct.cami2c* %73, i32 %74, i32 %75)
  ret void
}

declare dso_local i32 @OUT32(%struct.cami2c*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
