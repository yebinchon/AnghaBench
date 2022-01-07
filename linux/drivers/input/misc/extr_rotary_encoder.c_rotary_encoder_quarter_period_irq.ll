; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_rotary_encoder.c_rotary_encoder_quarter_period_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_rotary_encoder.c_rotary_encoder_quarter_period_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rotary_encoder = type { i32, i32, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rotary_encoder_quarter_period_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rotary_encoder_quarter_period_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rotary_encoder*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.rotary_encoder*
  store %struct.rotary_encoder* %8, %struct.rotary_encoder** %5, align 8
  %9 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %10 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %9, i32 0, i32 2
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %13 = call i32 @rotary_encoder_get_state(%struct.rotary_encoder* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %15 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  %18 = srem i32 %17, 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %23 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  br label %37

24:                                               ; preds = %2
  %25 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %26 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add i32 %28, 1
  %30 = urem i32 %29, 4
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %34 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %33, i32 0, i32 1
  store i32 -1, i32* %34, align 4
  br label %36

35:                                               ; preds = %24
  br label %40

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %36, %21
  %38 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %39 = call i32 @rotary_encoder_report_event(%struct.rotary_encoder* %38)
  br label %40

40:                                               ; preds = %37, %35
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %43 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %45 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %44, i32 0, i32 2
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %47
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rotary_encoder_get_state(%struct.rotary_encoder*) #1

declare dso_local i32 @rotary_encoder_report_event(%struct.rotary_encoder*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
