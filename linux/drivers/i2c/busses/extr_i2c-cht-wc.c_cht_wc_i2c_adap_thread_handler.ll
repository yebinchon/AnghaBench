; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cht-wc.c_cht_wc_i2c_adap_thread_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cht-wc.c_cht_wc_i2c_adap_thread_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cht_wc_i2c_adap = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@CHT_WC_EXTCHGRIRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error reading extchgrirq reg\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@CHT_WC_I2C_RDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Error writing extchgrirq reg\0A\00", align 1
@CHT_WC_EXTCHGRIRQ_ADAP_IRQMASK = common dso_local global i32 0, align 4
@CHT_WC_EXTCHGRIRQ_NACK_IRQ = common dso_local global i32 0, align 4
@CHT_WC_EXTCHGRIRQ_CLIENT_IRQ = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cht_wc_i2c_adap_thread_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cht_wc_i2c_adap_thread_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cht_wc_i2c_adap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.cht_wc_i2c_adap*
  store %struct.cht_wc_i2c_adap* %10, %struct.cht_wc_i2c_adap** %6, align 8
  %11 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %6, align 8
  %12 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %11, i32 0, i32 6
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %6, align 8
  %15 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CHT_WC_EXTCHGRIRQ, align 4
  %18 = call i32 @regmap_read(i32 %16, i32 %17, i32* %8)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %6, align 8
  %23 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %22, i32 0, i32 7
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %6, align 8
  %27 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %26, i32 0, i32 6
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load i32, i32* @IRQ_NONE, align 4
  store i32 %29, i32* %3, align 4
  br label %108

30:                                               ; preds = %2
  %31 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %6, align 8
  %32 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %6, align 8
  %38 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CHT_WC_I2C_RDDATA, align 4
  %41 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %6, align 8
  %42 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %41, i32 0, i32 1
  %43 = call i32 @regmap_read(i32 %39, i32 %40, i32* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %30
  %47 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %6, align 8
  %48 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %47, i32 0, i32 2
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %30
  %50 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %6, align 8
  %51 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CHT_WC_EXTCHGRIRQ, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @regmap_write(i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %49
  %59 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %6, align 8
  %60 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %59, i32 0, i32 7
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %58, %49
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @CHT_WC_EXTCHGRIRQ_ADAP_IRQMASK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %63
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @CHT_WC_EXTCHGRIRQ_NACK_IRQ, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %6, align 8
  %77 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %6, align 8
  %81 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %80, i32 0, i32 3
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %68, %63
  %83 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %6, align 8
  %84 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %83, i32 0, i32 6
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @CHT_WC_EXTCHGRIRQ_ADAP_IRQMASK, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %6, align 8
  %92 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %91, i32 0, i32 5
  %93 = call i32 @wake_up(i32* %92)
  br label %94

94:                                               ; preds = %90, %82
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @CHT_WC_EXTCHGRIRQ_CLIENT_IRQ, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = call i32 (...) @local_irq_disable()
  %101 = load %struct.cht_wc_i2c_adap*, %struct.cht_wc_i2c_adap** %6, align 8
  %102 = getelementptr inbounds %struct.cht_wc_i2c_adap, %struct.cht_wc_i2c_adap* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @generic_handle_irq(i32 %103)
  %105 = call i32 (...) @local_irq_enable()
  br label %106

106:                                              ; preds = %99, %94
  %107 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %21
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
