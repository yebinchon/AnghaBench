; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-adnp.c_adnp_irq_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-adnp.c_adnp_irq_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adnp = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_2__*, i32, %struct.gpio_chip }
%struct.TYPE_2__ = type { i32 }
%struct.gpio_chip = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@adnp_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"can't request IRQ#%d: %d\0A\00", align 1
@adnp_irq_chip = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"could not connect irqchip to gpiochip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adnp*)* @adnp_irq_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adnp_irq_setup(%struct.adnp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adnp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca i32, align 4
  store %struct.adnp* %0, %struct.adnp** %3, align 8
  %8 = load %struct.adnp*, %struct.adnp** %3, align 8
  %9 = getelementptr inbounds %struct.adnp, %struct.adnp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = shl i32 1, %10
  store i32 %11, i32* %4, align 4
  %12 = load %struct.adnp*, %struct.adnp** %3, align 8
  %13 = getelementptr inbounds %struct.adnp, %struct.adnp* %12, i32 0, i32 9
  store %struct.gpio_chip* %13, %struct.gpio_chip** %6, align 8
  %14 = load %struct.adnp*, %struct.adnp** %3, align 8
  %15 = getelementptr inbounds %struct.adnp, %struct.adnp* %14, i32 0, i32 8
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %18 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32* @devm_kcalloc(i32 %19, i32 %20, i32 6, i32 %21)
  %23 = load %struct.adnp*, %struct.adnp** %3, align 8
  %24 = getelementptr inbounds %struct.adnp, %struct.adnp* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  %25 = load %struct.adnp*, %struct.adnp** %3, align 8
  %26 = getelementptr inbounds %struct.adnp, %struct.adnp* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %176

32:                                               ; preds = %1
  %33 = load %struct.adnp*, %struct.adnp** %3, align 8
  %34 = getelementptr inbounds %struct.adnp, %struct.adnp* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = mul i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load %struct.adnp*, %struct.adnp** %3, align 8
  %41 = getelementptr inbounds %struct.adnp, %struct.adnp* %40, i32 0, i32 2
  store i32* %39, i32** %41, align 8
  %42 = load %struct.adnp*, %struct.adnp** %3, align 8
  %43 = getelementptr inbounds %struct.adnp, %struct.adnp* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = mul i32 %45, 2
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load %struct.adnp*, %struct.adnp** %3, align 8
  %50 = getelementptr inbounds %struct.adnp, %struct.adnp* %49, i32 0, i32 3
  store i32* %48, i32** %50, align 8
  %51 = load %struct.adnp*, %struct.adnp** %3, align 8
  %52 = getelementptr inbounds %struct.adnp, %struct.adnp* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = mul i32 %54, 3
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load %struct.adnp*, %struct.adnp** %3, align 8
  %59 = getelementptr inbounds %struct.adnp, %struct.adnp* %58, i32 0, i32 4
  store i32* %57, i32** %59, align 8
  %60 = load %struct.adnp*, %struct.adnp** %3, align 8
  %61 = getelementptr inbounds %struct.adnp, %struct.adnp* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = mul i32 %63, 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load %struct.adnp*, %struct.adnp** %3, align 8
  %68 = getelementptr inbounds %struct.adnp, %struct.adnp* %67, i32 0, i32 5
  store i32* %66, i32** %68, align 8
  %69 = load %struct.adnp*, %struct.adnp** %3, align 8
  %70 = getelementptr inbounds %struct.adnp, %struct.adnp* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = mul i32 %72, 5
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load %struct.adnp*, %struct.adnp** %3, align 8
  %77 = getelementptr inbounds %struct.adnp, %struct.adnp* %76, i32 0, i32 6
  store i32* %75, i32** %77, align 8
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %119, %32
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %122

82:                                               ; preds = %78
  %83 = load %struct.adnp*, %struct.adnp** %3, align 8
  %84 = load %struct.adnp*, %struct.adnp** %3, align 8
  %85 = call i64 @GPIO_PLR(%struct.adnp* %84)
  %86 = load i32, i32* %5, align 4
  %87 = zext i32 %86 to i64
  %88 = add nsw i64 %85, %87
  %89 = load %struct.adnp*, %struct.adnp** %3, align 8
  %90 = getelementptr inbounds %struct.adnp, %struct.adnp* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = call i32 @adnp_read(%struct.adnp* %83, i64 %88, i32* %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %82
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %2, align 4
  br label %176

100:                                              ; preds = %82
  %101 = load %struct.adnp*, %struct.adnp** %3, align 8
  %102 = load %struct.adnp*, %struct.adnp** %3, align 8
  %103 = call i64 @GPIO_IER(%struct.adnp* %102)
  %104 = load i32, i32* %5, align 4
  %105 = zext i32 %104 to i64
  %106 = add nsw i64 %103, %105
  %107 = call i32 @adnp_write(%struct.adnp* %101, i64 %106, i32 0)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %100
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %2, align 4
  br label %176

112:                                              ; preds = %100
  %113 = load %struct.adnp*, %struct.adnp** %3, align 8
  %114 = getelementptr inbounds %struct.adnp, %struct.adnp* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 0, i32* %118, align 4
  br label %119

119:                                              ; preds = %112
  %120 = load i32, i32* %5, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %5, align 4
  br label %78

122:                                              ; preds = %78
  %123 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %124 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.adnp*, %struct.adnp** %3, align 8
  %127 = getelementptr inbounds %struct.adnp, %struct.adnp* %126, i32 0, i32 7
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @adnp_irq, align 4
  %132 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %133 = load i32, i32* @IRQF_ONESHOT, align 4
  %134 = or i32 %132, %133
  %135 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %136 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @dev_name(i32 %137)
  %139 = load %struct.adnp*, %struct.adnp** %3, align 8
  %140 = call i32 @devm_request_threaded_irq(i32 %125, i32 %130, i32* null, i32 %131, i32 %134, i32 %138, %struct.adnp* %139)
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %122
  %144 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %145 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.adnp*, %struct.adnp** %3, align 8
  %148 = getelementptr inbounds %struct.adnp, %struct.adnp* %147, i32 0, i32 7
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %7, align 4
  %153 = call i32 (i32, i8*, ...) @dev_err(i32 %146, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %151, i32 %152)
  %154 = load i32, i32* %7, align 4
  store i32 %154, i32* %2, align 4
  br label %176

155:                                              ; preds = %122
  %156 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %157 = load i32, i32* @handle_simple_irq, align 4
  %158 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %159 = call i32 @gpiochip_irqchip_add_nested(%struct.gpio_chip* %156, i32* @adnp_irq_chip, i32 0, i32 %157, i32 %158)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %155
  %163 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %164 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (i32, i8*, ...) @dev_err(i32 %165, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %167 = load i32, i32* %7, align 4
  store i32 %167, i32* %2, align 4
  br label %176

168:                                              ; preds = %155
  %169 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %170 = load %struct.adnp*, %struct.adnp** %3, align 8
  %171 = getelementptr inbounds %struct.adnp, %struct.adnp* %170, i32 0, i32 7
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @gpiochip_set_nested_irqchip(%struct.gpio_chip* %169, i32* @adnp_irq_chip, i32 %174)
  store i32 0, i32* %2, align 4
  br label %176

176:                                              ; preds = %168, %162, %143, %110, %98, %29
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @adnp_read(%struct.adnp*, i64, i32*) #1

declare dso_local i64 @GPIO_PLR(%struct.adnp*) #1

declare dso_local i32 @adnp_write(%struct.adnp*, i64, i32) #1

declare dso_local i64 @GPIO_IER(%struct.adnp*) #1

declare dso_local i32 @devm_request_threaded_irq(i32, i32, i32*, i32, i32, i32, %struct.adnp*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @gpiochip_irqchip_add_nested(%struct.gpio_chip*, i32*, i32, i32, i32) #1

declare dso_local i32 @gpiochip_set_nested_irqchip(%struct.gpio_chip*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
