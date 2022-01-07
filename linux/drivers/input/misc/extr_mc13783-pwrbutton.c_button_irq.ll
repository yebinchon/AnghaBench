; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_mc13783-pwrbutton.c_button_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_mc13783-pwrbutton.c_button_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc13783_pwrb = type { i32, i32, i32*, i32 }

@MC13783_REG_INTERRUPT_SENSE_1 = common dso_local global i32 0, align 4
@MC13783_IRQSENSE1_ONOFD1S = common dso_local global i32 0, align 4
@MC13783_PWRB_B1_POL_INVERT = common dso_local global i32 0, align 4
@MC13783_IRQSENSE1_ONOFD2S = common dso_local global i32 0, align 4
@MC13783_PWRB_B2_POL_INVERT = common dso_local global i32 0, align 4
@MC13783_IRQSENSE1_ONOFD3S = common dso_local global i32 0, align 4
@MC13783_PWRB_B3_POL_INVERT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @button_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @button_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mc13783_pwrb*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.mc13783_pwrb*
  store %struct.mc13783_pwrb* %8, %struct.mc13783_pwrb** %5, align 8
  %9 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %5, align 8
  %10 = getelementptr inbounds %struct.mc13783_pwrb, %struct.mc13783_pwrb* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @mc13xxx_irq_ack(i32 %11, i32 %12)
  %14 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %5, align 8
  %15 = getelementptr inbounds %struct.mc13783_pwrb, %struct.mc13783_pwrb* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MC13783_REG_INTERRUPT_SENSE_1, align 4
  %18 = call i32 @mc13xxx_reg_read(i32 %16, i32 %17, i32* %6)
  %19 = load i32, i32* %3, align 4
  switch i32 %19, label %101 [
    i32 130, label %20
    i32 129, label %47
    i32 128, label %74
  ]

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @MC13783_IRQSENSE1_ONOFD1S, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  store i32 %26, i32* %6, align 4
  %27 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %5, align 8
  %28 = getelementptr inbounds %struct.mc13783_pwrb, %struct.mc13783_pwrb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MC13783_PWRB_B1_POL_INVERT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  %34 = load i32, i32* %6, align 4
  %35 = xor i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %33, %20
  %37 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %5, align 8
  %38 = getelementptr inbounds %struct.mc13783_pwrb, %struct.mc13783_pwrb* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %5, align 8
  %41 = getelementptr inbounds %struct.mc13783_pwrb, %struct.mc13783_pwrb* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @input_report_key(i32 %39, i32 %44, i32 %45)
  br label %101

47:                                               ; preds = %2
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @MC13783_IRQSENSE1_ONOFD2S, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 0
  store i32 %53, i32* %6, align 4
  %54 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %5, align 8
  %55 = getelementptr inbounds %struct.mc13783_pwrb, %struct.mc13783_pwrb* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @MC13783_PWRB_B2_POL_INVERT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %47
  %61 = load i32, i32* %6, align 4
  %62 = xor i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %60, %47
  %64 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %5, align 8
  %65 = getelementptr inbounds %struct.mc13783_pwrb, %struct.mc13783_pwrb* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %5, align 8
  %68 = getelementptr inbounds %struct.mc13783_pwrb, %struct.mc13783_pwrb* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @input_report_key(i32 %66, i32 %71, i32 %72)
  br label %101

74:                                               ; preds = %2
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @MC13783_IRQSENSE1_ONOFD3S, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 1, i32 0
  store i32 %80, i32* %6, align 4
  %81 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %5, align 8
  %82 = getelementptr inbounds %struct.mc13783_pwrb, %struct.mc13783_pwrb* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @MC13783_PWRB_B3_POL_INVERT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %74
  %88 = load i32, i32* %6, align 4
  %89 = xor i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %87, %74
  %91 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %5, align 8
  %92 = getelementptr inbounds %struct.mc13783_pwrb, %struct.mc13783_pwrb* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %5, align 8
  %95 = getelementptr inbounds %struct.mc13783_pwrb, %struct.mc13783_pwrb* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @input_report_key(i32 %93, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %2, %90, %63, %36
  %102 = load %struct.mc13783_pwrb*, %struct.mc13783_pwrb** %5, align 8
  %103 = getelementptr inbounds %struct.mc13783_pwrb, %struct.mc13783_pwrb* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @input_sync(i32 %104)
  %106 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %106
}

declare dso_local i32 @mc13xxx_irq_ack(i32, i32) #1

declare dso_local i32 @mc13xxx_reg_read(i32, i32, i32*) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
