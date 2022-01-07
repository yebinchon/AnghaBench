; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-riic.c_riic_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-riic.c_riic_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_msg = type { i32 }
%struct.riic_dev = type { i32, i32, %struct.TYPE_3__, i32, i64, %struct.i2c_msg*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@RIIC_ICCR2 = common dso_local global i64 0, align 8
@ICCR2_BBSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@RIIC_ICSR2 = common dso_local global i64 0, align 8
@ICCR2_ST = common dso_local global i32 0, align 4
@RIIC_INIT_MSG = common dso_local global i32 0, align 4
@ICIER_NAKIE = common dso_local global i32 0, align 4
@ICIER_TIE = common dso_local global i32 0, align 4
@RIIC_ICIER = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@ICCR2_RS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @riic_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riic_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.riic_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %12 = call %struct.riic_dev* @i2c_get_adapdata(%struct.i2c_adapter* %11)
  store %struct.riic_dev* %12, %struct.riic_dev** %7, align 8
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pm_runtime_get_sync(i32 %16)
  %18 = load %struct.riic_dev*, %struct.riic_dev** %7, align 8
  %19 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @RIIC_ICCR2, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readb(i64 %22)
  %24 = load i32, i32* @ICCR2_BBSY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  %30 = load %struct.riic_dev*, %struct.riic_dev** %7, align 8
  %31 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  br label %116

32:                                               ; preds = %3
  %33 = load %struct.riic_dev*, %struct.riic_dev** %7, align 8
  %34 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %33, i32 0, i32 3
  %35 = call i32 @reinit_completion(i32* %34)
  %36 = load %struct.riic_dev*, %struct.riic_dev** %7, align 8
  %37 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.riic_dev*, %struct.riic_dev** %7, align 8
  %39 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @RIIC_ICSR2, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writeb(i32 0, i64 %42)
  store i32 0, i32* %9, align 4
  %44 = load i32, i32* @ICCR2_ST, align 4
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %112, %32
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %115

49:                                               ; preds = %45
  %50 = load i32, i32* @RIIC_INIT_MSG, align 4
  %51 = load %struct.riic_dev*, %struct.riic_dev** %7, align 8
  %52 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 4
  %53 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %53, i64 %55
  %57 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.riic_dev*, %struct.riic_dev** %7, align 8
  %60 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i64 %63
  %65 = load %struct.riic_dev*, %struct.riic_dev** %7, align 8
  %66 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %65, i32 0, i32 5
  store %struct.i2c_msg* %64, %struct.i2c_msg** %66, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %6, align 4
  %69 = sub nsw i32 %68, 1
  %70 = icmp eq i32 %67, %69
  %71 = zext i1 %70 to i32
  %72 = load %struct.riic_dev*, %struct.riic_dev** %7, align 8
  %73 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @ICIER_NAKIE, align 4
  %75 = load i32, i32* @ICIER_TIE, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.riic_dev*, %struct.riic_dev** %7, align 8
  %78 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @RIIC_ICIER, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writeb(i32 %76, i64 %81)
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.riic_dev*, %struct.riic_dev** %7, align 8
  %85 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @RIIC_ICCR2, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @writeb(i32 %83, i64 %88)
  %90 = load %struct.riic_dev*, %struct.riic_dev** %7, align 8
  %91 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %90, i32 0, i32 3
  %92 = load %struct.riic_dev*, %struct.riic_dev** %7, align 8
  %93 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @wait_for_completion_timeout(i32* %91, i32 %95)
  store i64 %96, i64* %8, align 8
  %97 = load i64, i64* %8, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %49
  %100 = load i32, i32* @ETIMEDOUT, align 4
  %101 = sub nsw i32 0, %100
  %102 = load %struct.riic_dev*, %struct.riic_dev** %7, align 8
  %103 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %99, %49
  %105 = load %struct.riic_dev*, %struct.riic_dev** %7, align 8
  %106 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %115

110:                                              ; preds = %104
  %111 = load i32, i32* @ICCR2_RS, align 4
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %110
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %45

115:                                              ; preds = %109, %45
  br label %116

116:                                              ; preds = %115, %27
  %117 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %118 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @pm_runtime_put(i32 %120)
  %122 = load %struct.riic_dev*, %struct.riic_dev** %7, align 8
  %123 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %116
  br label %129

127:                                              ; preds = %116
  %128 = load i32, i32* %6, align 4
  br label %129

129:                                              ; preds = %127, %126
  %130 = phi i32 [ %124, %126 ], [ %128, %127 ]
  ret i32 %130
}

declare dso_local %struct.riic_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
