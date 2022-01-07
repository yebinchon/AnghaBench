; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_core.c_interrupt_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_core.c_interrupt_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { i64, i32, i32, i32 (%struct.saa7146_dev*, i32)*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (%struct.saa7146_dev*, i32*)* }

@ISR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@MASK_27 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"irq: RPS0 (0x%08x)\0A\00", align 1
@MASK_28 = common dso_local global i32 0, align 4
@MASK_16 = common dso_local global i32 0, align 4
@MASK_17 = common dso_local global i32 0, align 4
@PSR = common dso_local global i32 0, align 4
@SSR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"%s: unexpected i2c irq: isr %08x psr %08x ssr %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"warning: interrupt enabled, but not handled properly.(0x%08x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"disabling interrupt source(s)!\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @interrupt_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interrupt_hw(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.saa7146_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.saa7146_dev*
  store %struct.saa7146_dev* %12, %struct.saa7146_dev** %6, align 8
  %13 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %14 = load i32, i32* @ISR, align 4
  %15 = call i32 @saa7146_read(%struct.saa7146_dev* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 0, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %175

20:                                               ; preds = %2
  %21 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %22 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %21, i32 0, i32 5
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %25, label %59

25:                                               ; preds = %20
  %26 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %27 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %26, i32 0, i32 5
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %25
  %35 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %36 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %35, i32 0, i32 5
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32 (%struct.saa7146_dev*, i32*)*, i32 (%struct.saa7146_dev*, i32*)** %38, align 8
  %40 = icmp ne i32 (%struct.saa7146_dev*, i32*)* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %43 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %42, i32 0, i32 5
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32 (%struct.saa7146_dev*, i32*)*, i32 (%struct.saa7146_dev*, i32*)** %45, align 8
  %47 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %48 = call i32 %46(%struct.saa7146_dev* %47, i32* %7)
  br label %49

49:                                               ; preds = %41, %34
  %50 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %51 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %50, i32 0, i32 5
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %49, %25
  br label %59

59:                                               ; preds = %58, %20
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @MASK_27, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 0, %62
  br i1 %63, label %64, label %88

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @DEB_INT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %68 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %64
  %72 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %73 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %72, i32 0, i32 3
  %74 = load i32 (%struct.saa7146_dev*, i32)*, i32 (%struct.saa7146_dev*, i32)** %73, align 8
  %75 = icmp ne i32 (%struct.saa7146_dev*, i32)* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %78 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %77, i32 0, i32 3
  %79 = load i32 (%struct.saa7146_dev*, i32)*, i32 (%struct.saa7146_dev*, i32)** %78, align 8
  %80 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 %79(%struct.saa7146_dev* %80, i32 %81)
  br label %83

83:                                               ; preds = %76, %71, %64
  %84 = load i32, i32* @MASK_27, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %7, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %83, %59
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @MASK_28, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 0, %91
  br i1 %92, label %93, label %115

93:                                               ; preds = %88
  %94 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %95 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %93
  %99 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %100 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %99, i32 0, i32 3
  %101 = load i32 (%struct.saa7146_dev*, i32)*, i32 (%struct.saa7146_dev*, i32)** %100, align 8
  %102 = icmp ne i32 (%struct.saa7146_dev*, i32)* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %105 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %104, i32 0, i32 3
  %106 = load i32 (%struct.saa7146_dev*, i32)*, i32 (%struct.saa7146_dev*, i32)** %105, align 8
  %107 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 %106(%struct.saa7146_dev* %107, i32 %108)
  br label %110

110:                                              ; preds = %103, %98, %93
  %111 = load i32, i32* @MASK_28, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %7, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %110, %88
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @MASK_16, align 4
  %118 = load i32, i32* @MASK_17, align 4
  %119 = or i32 %117, %118
  %120 = and i32 %116, %119
  %121 = icmp ne i32 0, %120
  br i1 %121, label %122, label %159

122:                                              ; preds = %115
  %123 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %124 = load i32, i32* @MASK_16, align 4
  %125 = load i32, i32* @MASK_17, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @SAA7146_IER_DISABLE(%struct.saa7146_dev* %123, i32 %126)
  %128 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %129 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 0, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %122
  %133 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %134 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %133, i32 0, i32 0
  store i64 0, i64* %134, align 8
  %135 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %136 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %135, i32 0, i32 2
  %137 = call i32 @wake_up(i32* %136)
  br label %152

138:                                              ; preds = %122
  %139 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %140 = load i32, i32* @PSR, align 4
  %141 = call i32 @saa7146_read(%struct.saa7146_dev* %139, i32 %140)
  store i32 %141, i32* %9, align 4
  %142 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %143 = load i32, i32* @SSR, align 4
  %144 = call i32 @saa7146_read(%struct.saa7146_dev* %142, i32 %143)
  store i32 %144, i32* %10, align 4
  %145 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %146 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @pr_warn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %147, i32 %148, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %138, %132
  %153 = load i32, i32* @MASK_16, align 4
  %154 = load i32, i32* @MASK_17, align 4
  %155 = or i32 %153, %154
  %156 = xor i32 %155, -1
  %157 = load i32, i32* %7, align 4
  %158 = and i32 %157, %156
  store i32 %158, i32* %7, align 4
  br label %159

159:                                              ; preds = %152, %115
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 0, %160
  br i1 %161, label %162, label %169

162:                                              ; preds = %159
  %163 = load i32, i32* %7, align 4
  %164 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %163)
  %165 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %166 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @SAA7146_IER_DISABLE(%struct.saa7146_dev* %166, i32 %167)
  br label %169

169:                                              ; preds = %162, %159
  %170 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %171 = load i32, i32* @ISR, align 4
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @saa7146_write(%struct.saa7146_dev* %170, i32 %171, i32 %172)
  %174 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %169, %18
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32 @saa7146_read(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @DEB_INT(i8*, i32) #1

declare dso_local i32 @SAA7146_IER_DISABLE(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
