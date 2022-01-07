; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-grgpio.c_grgpio_irq_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-grgpio.c_grgpio_irq_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.grgpio_priv* }
%struct.grgpio_priv = type { %struct.TYPE_2__, i32, %struct.grgpio_uirq*, %struct.grgpio_lirq* }
%struct.TYPE_2__ = type { i32 }
%struct.grgpio_uirq = type { i64, i32 }
%struct.grgpio_lirq = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Mapping irq %d for gpio line %d\0A\00", align 1
@grgpio_irq_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Could not request underlying irq %d\0A\00", align 1
@grgpio_irq_chip = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32)* @grgpio_irq_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grgpio_irq_map(%struct.irq_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.grgpio_priv*, align 8
  %9 = alloca %struct.grgpio_lirq*, align 8
  %10 = alloca %struct.grgpio_uirq*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %15 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %14, i32 0, i32 0
  %16 = load %struct.grgpio_priv*, %struct.grgpio_priv** %15, align 8
  store %struct.grgpio_priv* %16, %struct.grgpio_priv** %8, align 8
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %18 = load %struct.grgpio_priv*, %struct.grgpio_priv** %8, align 8
  %19 = icmp ne %struct.grgpio_priv* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %110

23:                                               ; preds = %3
  %24 = load %struct.grgpio_priv*, %struct.grgpio_priv** %8, align 8
  %25 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %24, i32 0, i32 3
  %26 = load %struct.grgpio_lirq*, %struct.grgpio_lirq** %25, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.grgpio_lirq, %struct.grgpio_lirq* %26, i64 %28
  store %struct.grgpio_lirq* %29, %struct.grgpio_lirq** %9, align 8
  %30 = load %struct.grgpio_lirq*, %struct.grgpio_lirq** %9, align 8
  %31 = getelementptr inbounds %struct.grgpio_lirq, %struct.grgpio_lirq* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %110

37:                                               ; preds = %23
  %38 = load %struct.grgpio_priv*, %struct.grgpio_priv** %8, align 8
  %39 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @dev_dbg(i32 %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load %struct.grgpio_priv*, %struct.grgpio_priv** %8, align 8
  %45 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.grgpio_lirq*, %struct.grgpio_lirq** %9, align 8
  %51 = getelementptr inbounds %struct.grgpio_lirq, %struct.grgpio_lirq* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.grgpio_priv*, %struct.grgpio_priv** %8, align 8
  %53 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %52, i32 0, i32 2
  %54 = load %struct.grgpio_uirq*, %struct.grgpio_uirq** %53, align 8
  %55 = load %struct.grgpio_lirq*, %struct.grgpio_lirq** %9, align 8
  %56 = getelementptr inbounds %struct.grgpio_lirq, %struct.grgpio_lirq* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.grgpio_uirq, %struct.grgpio_uirq* %54, i64 %57
  store %struct.grgpio_uirq* %58, %struct.grgpio_uirq** %10, align 8
  %59 = load %struct.grgpio_uirq*, %struct.grgpio_uirq** %10, align 8
  %60 = getelementptr inbounds %struct.grgpio_uirq, %struct.grgpio_uirq* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %91

63:                                               ; preds = %37
  %64 = load %struct.grgpio_uirq*, %struct.grgpio_uirq** %10, align 8
  %65 = getelementptr inbounds %struct.grgpio_uirq, %struct.grgpio_uirq* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @grgpio_irq_handler, align 4
  %68 = load %struct.grgpio_priv*, %struct.grgpio_priv** %8, align 8
  %69 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_name(i32 %70)
  %72 = load %struct.grgpio_priv*, %struct.grgpio_priv** %8, align 8
  %73 = call i32 @request_irq(i32 %66, i32 %67, i32 0, i32 %71, %struct.grgpio_priv* %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %63
  %77 = load %struct.grgpio_priv*, %struct.grgpio_priv** %8, align 8
  %78 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.grgpio_uirq*, %struct.grgpio_uirq** %10, align 8
  %81 = getelementptr inbounds %struct.grgpio_uirq, %struct.grgpio_uirq* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load %struct.grgpio_priv*, %struct.grgpio_priv** %8, align 8
  %85 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  %89 = load i32, i32* %13, align 4
  store i32 %89, i32* %4, align 4
  br label %110

90:                                               ; preds = %63
  br label %91

91:                                               ; preds = %90, %37
  %92 = load %struct.grgpio_uirq*, %struct.grgpio_uirq** %10, align 8
  %93 = getelementptr inbounds %struct.grgpio_uirq, %struct.grgpio_uirq* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %93, align 8
  %96 = load %struct.grgpio_priv*, %struct.grgpio_priv** %8, align 8
  %97 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %11, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.grgpio_priv*, %struct.grgpio_priv** %8, align 8
  %103 = call i32 @irq_set_chip_data(i32 %101, %struct.grgpio_priv* %102)
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @handle_simple_irq, align 4
  %106 = call i32 @irq_set_chip_and_handler(i32 %104, i32* @grgpio_irq_chip, i32 %105)
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @irq_set_noprobe(i32 %107)
  %109 = load i32, i32* %13, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %91, %76, %34, %20
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.grgpio_priv*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @irq_set_chip_data(i32, %struct.grgpio_priv*) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32) #1

declare dso_local i32 @irq_set_noprobe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
