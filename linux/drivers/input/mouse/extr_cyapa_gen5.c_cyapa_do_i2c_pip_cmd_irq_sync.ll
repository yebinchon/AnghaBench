; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_do_i2c_pip_cmd_irq_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_do_i2c_pip_cmd_irq_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cyapa_pip_cmd_states }
%struct.cyapa_pip_cmd_states = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*, i32*, i64, i64)* @cyapa_do_i2c_pip_cmd_irq_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_do_i2c_pip_cmd_irq_sync(%struct.cyapa* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cyapa*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cyapa_pip_cmd_states*, align 8
  %11 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %13 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.cyapa_pip_cmd_states* %14, %struct.cyapa_pip_cmd_states** %10, align 8
  %15 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %10, align 8
  %16 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %15, i32 0, i32 1
  %17 = call i32 @init_completion(i32* %16)
  %18 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %10, align 8
  %19 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %18, i32 0, i32 0
  %20 = call i32 @atomic_inc(i32* %19)
  %21 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @cyapa_i2c_pip_write(%struct.cyapa* %21, i32* %22, i64 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %4
  %28 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %10, align 8
  %29 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %28, i32 0, i32 0
  %30 = call i32 @atomic_dec(i32* %29)
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %11, align 4
  br label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  br label %38

38:                                               ; preds = %35, %33
  %39 = phi i32 [ %34, %33 ], [ %37, %35 ]
  store i32 %39, i32* %5, align 4
  br label %55

40:                                               ; preds = %4
  %41 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %10, align 8
  %42 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %41, i32 0, i32 1
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @msecs_to_jiffies(i64 %43)
  %45 = call i64 @wait_for_completion_timeout(i32* %42, i32 %44)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %10, align 8
  %50 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %49, i32 0, i32 0
  %51 = call i32 @atomic_dec(i32* %50)
  %52 = load i32, i32* @ETIMEDOUT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %55

54:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %48, %38
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @cyapa_i2c_pip_write(%struct.cyapa*, i32*, i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
