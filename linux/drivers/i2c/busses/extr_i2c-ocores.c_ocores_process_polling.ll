; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ocores.c_ocores_process_polling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ocores.c_ocores_process_polling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocores_i2c = type { i64, i32 }

@STATE_ERROR = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i64 0, align 8
@OCORES_FLAG_BROKEN_IRQ = common dso_local global i32 0, align 4
@STATE_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocores_i2c*)* @ocores_process_polling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocores_process_polling(%struct.ocores_i2c* %0) #0 {
  %2 = alloca %struct.ocores_i2c*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.ocores_i2c* %0, %struct.ocores_i2c** %2, align 8
  br label %5

5:                                                ; preds = %1, %37
  %6 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %7 = call i32 @ocores_poll_wait(%struct.ocores_i2c* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load i64, i64* @STATE_ERROR, align 8
  %12 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %13 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  br label %38

14:                                               ; preds = %5
  %15 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %16 = call i64 @ocores_isr(i32 -1, %struct.ocores_i2c* %15)
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @IRQ_NONE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %38

21:                                               ; preds = %14
  %22 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %23 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @OCORES_FLAG_BROKEN_IRQ, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %30 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @STATE_DONE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %38

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %21
  br label %37

37:                                               ; preds = %36
  br label %5

38:                                               ; preds = %34, %20, %10
  ret void
}

declare dso_local i32 @ocores_poll_wait(%struct.ocores_i2c*) #1

declare dso_local i64 @ocores_isr(i32, %struct.ocores_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
