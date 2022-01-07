; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-siox.c_gpio_siox_get_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-siox.c_gpio_siox_get_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siox_device = type { i32 }
%struct.gpio_siox_ddata = type { i32*, i32*, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.irq_domain* }
%struct.irq_domain = type { i32 }

@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siox_device*, i32*)* @gpio_siox_get_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_siox_get_data(%struct.siox_device* %0, i32* %1) #0 {
  %3 = alloca %struct.siox_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.gpio_siox_ddata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.irq_domain*, align 8
  %13 = alloca i32, align 4
  store %struct.siox_device* %0, %struct.siox_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load %struct.siox_device*, %struct.siox_device** %3, align 8
  %15 = getelementptr inbounds %struct.siox_device, %struct.siox_device* %14, i32 0, i32 0
  %16 = call %struct.gpio_siox_ddata* @dev_get_drvdata(i32* %15)
  store %struct.gpio_siox_ddata* %16, %struct.gpio_siox_ddata** %5, align 8
  %17 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %5, align 8
  %18 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %17, i32 0, i32 6
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %5, align 8
  %21 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %20, i32 0, i32 4
  %22 = call i32 @spin_lock_irq(i32* %21)
  store i64 0, i64* %6, align 8
  br label %23

23:                                               ; preds = %105, %2
  %24 = load i64, i64* %6, align 8
  %25 = icmp ult i64 %24, 12
  br i1 %25, label %26, label %108

26:                                               ; preds = %23
  %27 = load i64, i64* %6, align 8
  %28 = sub i64 11, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %8, align 4
  %32 = udiv i32 %31, 8
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = urem i32 %36, 8
  %38 = shl i32 1, %37
  %39 = and i32 %35, %38
  store i32 %39, i32* %9, align 4
  %40 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %5, align 8
  %41 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = udiv i32 %43, 8
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = urem i32 %48, 8
  %50 = shl i32 1, %49
  %51 = and i32 %47, %50
  store i32 %51, i32* %10, align 4
  %52 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %5, align 8
  %53 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %26
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %70, %60
  %74 = load i64, i64* %6, align 8
  %75 = trunc i64 %74 to i32
  %76 = shl i32 1, %75
  %77 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %5, align 8
  %78 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %73, %70, %65
  br label %104

82:                                               ; preds = %26
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %87
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %92, %82
  %96 = load i64, i64* %6, align 8
  %97 = trunc i64 %96 to i32
  %98 = shl i32 1, %97
  %99 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %5, align 8
  %100 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %95, %92, %87
  br label %104

104:                                              ; preds = %103, %81
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %6, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %6, align 8
  br label %23

108:                                              ; preds = %23
  %109 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %5, align 8
  %110 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %5, align 8
  %113 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %111, %114
  store i32 %115, i32* %7, align 4
  %116 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %5, align 8
  %117 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %116, i32 0, i32 4
  %118 = call i32 @spin_unlock_irq(i32* %117)
  %119 = load i32*, i32** %4, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %5, align 8
  %123 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  store i32 %121, i32* %125, align 4
  %126 = load i32*, i32** %4, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %5, align 8
  %130 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  store i32 %128, i32* %132, align 4
  %133 = load i32*, i32** %4, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %5, align 8
  %137 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 2
  store i32 %135, i32* %139, align 4
  %140 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %5, align 8
  %141 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %140, i32 0, i32 6
  %142 = call i32 @mutex_unlock(i32* %141)
  store i64 0, i64* %6, align 8
  br label %143

143:                                              ; preds = %179, %108
  %144 = load i64, i64* %6, align 8
  %145 = icmp ult i64 %144, 12
  br i1 %145, label %146, label %182

146:                                              ; preds = %143
  %147 = load i32, i32* %7, align 4
  %148 = load i64, i64* %6, align 8
  %149 = trunc i64 %148 to i32
  %150 = shl i32 1, %149
  %151 = and i32 %147, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %178

153:                                              ; preds = %146
  %154 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %5, align 8
  %155 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %154, i32 0, i32 5
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load %struct.irq_domain*, %struct.irq_domain** %157, align 8
  store %struct.irq_domain* %158, %struct.irq_domain** %12, align 8
  %159 = load %struct.irq_domain*, %struct.irq_domain** %12, align 8
  %160 = load i64, i64* %6, align 8
  %161 = call i32 @irq_find_mapping(%struct.irq_domain* %159, i64 %160)
  store i32 %161, i32* %13, align 4
  %162 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %5, align 8
  %163 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %162, i32 0, i32 4
  %164 = call i32 @spin_lock_irq(i32* %163)
  %165 = load i64, i64* %6, align 8
  %166 = trunc i64 %165 to i32
  %167 = shl i32 1, %166
  %168 = xor i32 %167, -1
  %169 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %5, align 8
  %170 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = and i32 %171, %168
  store i32 %172, i32* %170, align 8
  %173 = load %struct.gpio_siox_ddata*, %struct.gpio_siox_ddata** %5, align 8
  %174 = getelementptr inbounds %struct.gpio_siox_ddata, %struct.gpio_siox_ddata* %173, i32 0, i32 4
  %175 = call i32 @spin_unlock_irq(i32* %174)
  %176 = load i32, i32* %13, align 4
  %177 = call i32 @handle_nested_irq(i32 %176)
  br label %178

178:                                              ; preds = %153, %146
  br label %179

179:                                              ; preds = %178
  %180 = load i64, i64* %6, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %6, align 8
  br label %143

182:                                              ; preds = %143
  ret i32 0
}

declare dso_local %struct.gpio_siox_ddata* @dev_get_drvdata(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @irq_find_mapping(%struct.irq_domain*, i64) #1

declare dso_local i32 @handle_nested_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
