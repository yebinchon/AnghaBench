; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda9950.c_tda9950_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda9950.c_tda9950_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda9950_priv = type { %struct.TYPE_4__*, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@REG_CSR = common dso_local global i32 0, align 4
@CSR_INT = common dso_local global i32 0, align 4
@REG_CCONR = common dso_local global i32 0, align 4
@CCONR_RETRY_MASK = common dso_local global i32 0, align 4
@REG_CDR0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"interrupt pending, but no message?\0A\00", align 1
@CEC_TX_STATUS_OK = common dso_local global i32 0, align 4
@CEC_TX_STATUS_ARB_LOST = common dso_local global i32 0, align 4
@CEC_TX_STATUS_NACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"CNF reply error 0x%02x\0A\00", align 1
@CEC_TX_STATUS_ERROR = common dso_local global i32 0, align 4
@CEC_TX_STATUS_MAX_RETRIES = common dso_local global i32 0, align 4
@CEC_MAX_MSG_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"unknown service id 0x%02x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tda9950_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda9950_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tda9950_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [19 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.tda9950_priv*
  store %struct.tda9950_priv* %15, %struct.tda9950_priv** %6, align 8
  %16 = load %struct.tda9950_priv*, %struct.tda9950_priv** %6, align 8
  %17 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %3, align 4
  br label %145

22:                                               ; preds = %2
  %23 = load %struct.tda9950_priv*, %struct.tda9950_priv** %6, align 8
  %24 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* @REG_CSR, align 4
  %27 = call i32 @tda9950_read(%struct.TYPE_4__* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @CSR_INT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %22
  %33 = load i32, i32* @IRQ_NONE, align 4
  store i32 %33, i32* %3, align 4
  br label %145

34:                                               ; preds = %22
  %35 = load %struct.tda9950_priv*, %struct.tda9950_priv** %6, align 8
  %36 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* @REG_CCONR, align 4
  %39 = call i32 @tda9950_read(%struct.TYPE_4__* %37, i32 %38)
  %40 = load i32, i32* @CCONR_RETRY_MASK, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %9, align 4
  %42 = load %struct.tda9950_priv*, %struct.tda9950_priv** %6, align 8
  %43 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* @REG_CDR0, align 4
  %46 = getelementptr inbounds [19 x i32], [19 x i32]* %10, i64 0, i64 0
  %47 = call i32 @tda9950_read_range(%struct.TYPE_4__* %44, i32 %45, i32* %46, i32 76)
  %48 = getelementptr inbounds [19 x i32], [19 x i32]* %10, i64 0, i64 0
  %49 = load i32, i32* %48, align 16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %34
  %52 = load %struct.tda9950_priv*, %struct.tda9950_priv** %6, align 8
  %53 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 @dev_warn(i32* %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @IRQ_NONE, align 4
  store i32 %57, i32* %3, align 4
  br label %145

58:                                               ; preds = %34
  %59 = getelementptr inbounds [19 x i32], [19 x i32]* %10, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %135 [
    i32 132, label %61
    i32 131, label %99
  ]

61:                                               ; preds = %58
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %62 = getelementptr inbounds [19 x i32], [19 x i32]* %10, i64 0, i64 2
  %63 = load i32, i32* %62, align 8
  switch i32 %63, label %72 [
    i32 128, label %64
    i32 130, label %66
    i32 129, label %69
  ]

64:                                               ; preds = %61
  %65 = load i32, i32* @CEC_TX_STATUS_OK, align 4
  store i32 %65, i32* %7, align 4
  br label %82

66:                                               ; preds = %61
  %67 = load i32, i32* @CEC_TX_STATUS_ARB_LOST, align 4
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %11, align 4
  br label %82

69:                                               ; preds = %61
  %70 = load i32, i32* @CEC_TX_STATUS_NACK, align 4
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %12, align 4
  br label %82

72:                                               ; preds = %61
  %73 = load %struct.tda9950_priv*, %struct.tda9950_priv** %6, align 8
  %74 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds [19 x i32], [19 x i32]* %10, i64 0, i64 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @dev_err(i32* %76, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @CEC_TX_STATUS_ERROR, align 4
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %72, %69, %66, %64
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @CEC_TX_STATUS_OK, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32, i32* @CEC_TX_STATUS_MAX_RETRIES, align 4
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %86, %82
  %91 = load %struct.tda9950_priv*, %struct.tda9950_priv** %6, align 8
  %92 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @cec_transmit_done(i32 %93, i32 %94, i32 %95, i32 %96, i32 0, i32 %97)
  br label %143

99:                                               ; preds = %58
  %100 = getelementptr inbounds [19 x i32], [19 x i32]* %10, i64 0, i64 0
  %101 = load i32, i32* %100, align 16
  %102 = sub nsw i32 %101, 2
  %103 = load %struct.tda9950_priv*, %struct.tda9950_priv** %6, align 8
  %104 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 8
  %106 = load %struct.tda9950_priv*, %struct.tda9950_priv** %6, align 8
  %107 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @CEC_MAX_MSG_SIZE, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %99
  %113 = load i32, i32* @CEC_MAX_MSG_SIZE, align 4
  %114 = load %struct.tda9950_priv*, %struct.tda9950_priv** %6, align 8
  %115 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  br label %117

117:                                              ; preds = %112, %99
  %118 = load %struct.tda9950_priv*, %struct.tda9950_priv** %6, align 8
  %119 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds [19 x i32], [19 x i32]* %10, i64 0, i64 0
  %123 = getelementptr inbounds i32, i32* %122, i64 2
  %124 = load %struct.tda9950_priv*, %struct.tda9950_priv** %6, align 8
  %125 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @memcpy(i32 %121, i32* %123, i32 %127)
  %129 = load %struct.tda9950_priv*, %struct.tda9950_priv** %6, align 8
  %130 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.tda9950_priv*, %struct.tda9950_priv** %6, align 8
  %133 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %132, i32 0, i32 1
  %134 = call i32 @cec_received_msg(i32 %131, %struct.TYPE_5__* %133)
  br label %143

135:                                              ; preds = %58
  %136 = load %struct.tda9950_priv*, %struct.tda9950_priv** %6, align 8
  %137 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %136, i32 0, i32 0
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = getelementptr inbounds [19 x i32], [19 x i32]* %10, i64 0, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @dev_err(i32* %139, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %135, %117, %90
  %144 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %143, %51, %32, %20
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @tda9950_read(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @tda9950_read_range(%struct.TYPE_4__*, i32, i32*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @cec_transmit_done(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @cec_received_msg(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
