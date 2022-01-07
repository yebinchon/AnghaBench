; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh7760.c_sh7760_i2c_msend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh7760.c_sh7760_i2c_msend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cami2c = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64, i32* }

@IDF_SEND = common dso_local global i32 0, align 4
@I2CSAR = common dso_local global i32 0, align 4
@I2CMAR = common dso_local global i32 0, align 4
@FIFO_SIZE = common dso_local global i64 0, align 8
@I2CFCR = common dso_local global i32 0, align 4
@FCR_RFRST = common dso_local global i32 0, align 4
@FCR_TFRST = common dso_local global i32 0, align 4
@I2CTFDR = common dso_local global i32 0, align 4
@I2CRXTX = common dso_local global i32 0, align 4
@I2CMSR = common dso_local global i32 0, align 4
@I2CMCR = common dso_local global i32 0, align 4
@MCR_MIE = common dso_local global i32 0, align 4
@MCR_ESG = common dso_local global i32 0, align 4
@I2CFSR = common dso_local global i32 0, align 4
@I2CMIER = common dso_local global i32 0, align 4
@MIE_MNRE = common dso_local global i32 0, align 4
@MIE_MALE = common dso_local global i32 0, align 4
@MIE_MSTE = common dso_local global i32 0, align 4
@MIE_MATE = common dso_local global i32 0, align 4
@I2CFIER = common dso_local global i32 0, align 4
@FIER_TEIE = common dso_local global i32 0, align 4
@FIER_TXIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cami2c*)* @sh7760_i2c_msend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh7760_i2c_msend(%struct.cami2c* %0) #0 {
  %2 = alloca %struct.cami2c*, align 8
  %3 = alloca i32, align 4
  store %struct.cami2c* %0, %struct.cami2c** %2, align 8
  %4 = load i32, i32* @IDF_SEND, align 4
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
  %18 = load i32, i32* %17, align 8
  %19 = shl i32 %18, 1
  %20 = call i32 @OUT32(%struct.cami2c* %12, i32 %13, i32 %19)
  %21 = load %struct.cami2c*, %struct.cami2c** %2, align 8
  %22 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @FIFO_SIZE, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 2, i32* %3, align 4
  br label %30

29:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = load %struct.cami2c*, %struct.cami2c** %2, align 8
  %32 = load i32, i32* @I2CFCR, align 4
  %33 = load i32, i32* @FCR_RFRST, align 4
  %34 = load i32, i32* @FCR_TFRST, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @OUT32(%struct.cami2c* %31, i32 %32, i32 %35)
  %37 = load %struct.cami2c*, %struct.cami2c** %2, align 8
  %38 = load i32, i32* @I2CFCR, align 4
  %39 = load i32, i32* @FCR_RFRST, align 4
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, 3
  %42 = shl i32 %41, 2
  %43 = or i32 %39, %42
  %44 = call i32 @OUT32(%struct.cami2c* %37, i32 %38, i32 %43)
  br label %45

45:                                               ; preds = %60, %30
  %46 = load %struct.cami2c*, %struct.cami2c** %2, align 8
  %47 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load %struct.cami2c*, %struct.cami2c** %2, align 8
  %54 = load i32, i32* @I2CTFDR, align 4
  %55 = call i64 @IN32(%struct.cami2c* %53, i32 %54)
  %56 = load i64, i64* @FIFO_SIZE, align 8
  %57 = icmp slt i64 %55, %56
  br label %58

58:                                               ; preds = %52, %45
  %59 = phi i1 [ false, %45 ], [ %57, %52 ]
  br i1 %59, label %60, label %82

60:                                               ; preds = %58
  %61 = load %struct.cami2c*, %struct.cami2c** %2, align 8
  %62 = load i32, i32* @I2CRXTX, align 4
  %63 = load %struct.cami2c*, %struct.cami2c** %2, align 8
  %64 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @OUT32(%struct.cami2c* %61, i32 %62, i32 %68)
  %70 = load %struct.cami2c*, %struct.cami2c** %2, align 8
  %71 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, -1
  store i64 %75, i64* %73, align 8
  %76 = load %struct.cami2c*, %struct.cami2c** %2, align 8
  %77 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %79, align 8
  br label %45

82:                                               ; preds = %58
  %83 = load %struct.cami2c*, %struct.cami2c** %2, align 8
  %84 = load i32, i32* @I2CMSR, align 4
  %85 = call i32 @OUT32(%struct.cami2c* %83, i32 %84, i32 0)
  %86 = load %struct.cami2c*, %struct.cami2c** %2, align 8
  %87 = load i32, i32* @I2CMCR, align 4
  %88 = load i32, i32* @MCR_MIE, align 4
  %89 = load i32, i32* @MCR_ESG, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @OUT32(%struct.cami2c* %86, i32 %87, i32 %90)
  %92 = load %struct.cami2c*, %struct.cami2c** %2, align 8
  %93 = load i32, i32* @I2CFSR, align 4
  %94 = call i32 @OUT32(%struct.cami2c* %92, i32 %93, i32 0)
  %95 = load %struct.cami2c*, %struct.cami2c** %2, align 8
  %96 = load i32, i32* @I2CMIER, align 4
  %97 = load i32, i32* @MIE_MNRE, align 4
  %98 = load i32, i32* @MIE_MALE, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @MIE_MSTE, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @MIE_MATE, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @OUT32(%struct.cami2c* %95, i32 %96, i32 %103)
  %105 = load %struct.cami2c*, %struct.cami2c** %2, align 8
  %106 = load i32, i32* @I2CFIER, align 4
  %107 = load i32, i32* @FIER_TEIE, align 4
  %108 = load %struct.cami2c*, %struct.cami2c** %2, align 8
  %109 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %82
  %115 = load i32, i32* @FIER_TXIE, align 4
  br label %117

116:                                              ; preds = %82
  br label %117

117:                                              ; preds = %116, %114
  %118 = phi i32 [ %115, %114 ], [ 0, %116 ]
  %119 = or i32 %107, %118
  %120 = call i32 @OUT32(%struct.cami2c* %105, i32 %106, i32 %119)
  ret void
}

declare dso_local i32 @OUT32(%struct.cami2c*, i32, i32) #1

declare dso_local i64 @IN32(%struct.cami2c*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
