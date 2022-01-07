; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pl061.c_pl061_irq_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pl061.c_pl061_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.pl061 = type { i32, i64 }

@PL061_GPIO_NR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"trying to configure line %d for both level and edge detection, choose one!\0A\00", align 1
@GPIOIEV = common dso_local global i64 0, align 8
@GPIOIS = common dso_local global i64 0, align 8
@GPIOIBE = common dso_local global i64 0, align 8
@handle_level_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"line %d: IRQ on %s level\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"HIGH\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"LOW\00", align 1
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"line %d: IRQ on both edges\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"line %d: IRQ on %s edge\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"RISING\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"FALLING\00", align 1
@handle_bad_irq = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"no trigger selected for line %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @pl061_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl061_irq_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca %struct.pl061*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %17 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %16)
  store %struct.gpio_chip* %17, %struct.gpio_chip** %6, align 8
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %19 = call %struct.pl061* @gpiochip_get_data(%struct.gpio_chip* %18)
  store %struct.pl061* %19, %struct.pl061** %7, align 8
  %20 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %21 = call i32 @irqd_to_hwirq(%struct.irq_data* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @BIT(i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @PL061_GPIO_NR, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %236

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %36 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %43 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %49 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %236

55:                                               ; preds = %40, %33
  %56 = load %struct.pl061*, %struct.pl061** %7, align 8
  %57 = getelementptr inbounds %struct.pl061, %struct.pl061* %56, i32 0, i32 0
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @raw_spin_lock_irqsave(i32* %57, i64 %58)
  %60 = load %struct.pl061*, %struct.pl061** %7, align 8
  %61 = getelementptr inbounds %struct.pl061, %struct.pl061* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @GPIOIEV, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @readb(i64 %64)
  store i32 %65, i32* %12, align 4
  %66 = load %struct.pl061*, %struct.pl061** %7, align 8
  %67 = getelementptr inbounds %struct.pl061, %struct.pl061* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @GPIOIS, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @readb(i64 %70)
  store i32 %71, i32* %10, align 4
  %72 = load %struct.pl061*, %struct.pl061** %7, align 8
  %73 = getelementptr inbounds %struct.pl061, %struct.pl061* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @GPIOIBE, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @readb(i64 %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %80 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %81 = or i32 %79, %80
  %82 = and i32 %78, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %119

84:                                               ; preds = %55
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %87 = and i32 %85, %86
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %13, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %11, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %10, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %84
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %12, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %12, align 4
  br label %106

101:                                              ; preds = %84
  %102 = load i32, i32* %13, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %12, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %101, %97
  %107 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %108 = load i32, i32* @handle_level_irq, align 4
  %109 = call i32 @irq_set_handler_locked(%struct.irq_data* %107, i32 %108)
  %110 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %111 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %118 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %112, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %113, i8* %117)
  br label %210

119:                                              ; preds = %55
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %122 = and i32 %120, %121
  %123 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %141

125:                                              ; preds = %119
  %126 = load i32, i32* %13, align 4
  %127 = xor i32 %126, -1
  %128 = load i32, i32* %10, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %11, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %11, align 4
  %133 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %134 = load i32, i32* @handle_edge_irq, align 4
  %135 = call i32 @irq_set_handler_locked(%struct.irq_data* %133, i32 %134)
  %136 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %137 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %8, align 4
  %140 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %138, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %139)
  br label %209

141:                                              ; preds = %119
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %141
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %187

151:                                              ; preds = %146, %141
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %154 = and i32 %152, %153
  store i32 %154, i32* %15, align 4
  %155 = load i32, i32* %13, align 4
  %156 = xor i32 %155, -1
  %157 = load i32, i32* %10, align 4
  %158 = and i32 %157, %156
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %13, align 4
  %160 = xor i32 %159, -1
  %161 = load i32, i32* %11, align 4
  %162 = and i32 %161, %160
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %15, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %151
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %12, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %12, align 4
  br label %174

169:                                              ; preds = %151
  %170 = load i32, i32* %13, align 4
  %171 = xor i32 %170, -1
  %172 = load i32, i32* %12, align 4
  %173 = and i32 %172, %171
  store i32 %173, i32* %12, align 4
  br label %174

174:                                              ; preds = %169, %165
  %175 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %176 = load i32, i32* @handle_edge_irq, align 4
  %177 = call i32 @irq_set_handler_locked(%struct.irq_data* %175, i32 %176)
  %178 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %179 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* %15, align 4
  %183 = icmp ne i32 %182, 0
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)
  %186 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %180, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %181, i8* %185)
  br label %208

187:                                              ; preds = %146
  %188 = load i32, i32* %13, align 4
  %189 = xor i32 %188, -1
  %190 = load i32, i32* %10, align 4
  %191 = and i32 %190, %189
  store i32 %191, i32* %10, align 4
  %192 = load i32, i32* %13, align 4
  %193 = xor i32 %192, -1
  %194 = load i32, i32* %11, align 4
  %195 = and i32 %194, %193
  store i32 %195, i32* %11, align 4
  %196 = load i32, i32* %13, align 4
  %197 = xor i32 %196, -1
  %198 = load i32, i32* %12, align 4
  %199 = and i32 %198, %197
  store i32 %199, i32* %12, align 4
  %200 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %201 = load i32, i32* @handle_bad_irq, align 4
  %202 = call i32 @irq_set_handler_locked(%struct.irq_data* %200, i32 %201)
  %203 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %204 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %8, align 4
  %207 = call i32 @dev_warn(i32 %205, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %206)
  br label %208

208:                                              ; preds = %187, %174
  br label %209

209:                                              ; preds = %208, %125
  br label %210

210:                                              ; preds = %209, %106
  %211 = load i32, i32* %10, align 4
  %212 = load %struct.pl061*, %struct.pl061** %7, align 8
  %213 = getelementptr inbounds %struct.pl061, %struct.pl061* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @GPIOIS, align 8
  %216 = add nsw i64 %214, %215
  %217 = call i32 @writeb(i32 %211, i64 %216)
  %218 = load i32, i32* %11, align 4
  %219 = load %struct.pl061*, %struct.pl061** %7, align 8
  %220 = getelementptr inbounds %struct.pl061, %struct.pl061* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @GPIOIBE, align 8
  %223 = add nsw i64 %221, %222
  %224 = call i32 @writeb(i32 %218, i64 %223)
  %225 = load i32, i32* %12, align 4
  %226 = load %struct.pl061*, %struct.pl061** %7, align 8
  %227 = getelementptr inbounds %struct.pl061, %struct.pl061* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @GPIOIEV, align 8
  %230 = add nsw i64 %228, %229
  %231 = call i32 @writeb(i32 %225, i64 %230)
  %232 = load %struct.pl061*, %struct.pl061** %7, align 8
  %233 = getelementptr inbounds %struct.pl061, %struct.pl061* %232, i32 0, i32 0
  %234 = load i64, i64* %9, align 8
  %235 = call i32 @raw_spin_unlock_irqrestore(i32* %233, i64 %234)
  store i32 0, i32* %3, align 4
  br label %236

236:                                              ; preds = %210, %47, %30
  %237 = load i32, i32* %3, align 4
  ret i32 %237
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.pl061* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @irq_set_handler_locked(%struct.irq_data*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
