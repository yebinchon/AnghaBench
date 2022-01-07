; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_applespi_msg_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_applespi_msg_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.applespi_data = type { i32, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.applespi_data*, i32, i32)* @applespi_msg_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @applespi_msg_complete(%struct.applespi_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.applespi_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.applespi_data* %0, %struct.applespi_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.applespi_data*, %struct.applespi_data** %4, align 8
  %9 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %8, i32 0, i32 3
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.applespi_data*, %struct.applespi_data** %4, align 8
  %16 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  br label %17

17:                                               ; preds = %14, %3
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.applespi_data*, %struct.applespi_data** %4, align 8
  %22 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load %struct.applespi_data*, %struct.applespi_data** %4, align 8
  %25 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.applespi_data*, %struct.applespi_data** %4, align 8
  %30 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load %struct.applespi_data*, %struct.applespi_data** %4, align 8
  %35 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %34, i32 0, i32 4
  %36 = call i32 @wake_up_all(i32* %35)
  br label %37

37:                                               ; preds = %33, %28, %23
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.applespi_data*, %struct.applespi_data** %4, align 8
  %42 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %41, i32 0, i32 2
  store i32 0, i32* %42, align 8
  %43 = load %struct.applespi_data*, %struct.applespi_data** %4, align 8
  %44 = call i32 @applespi_send_cmd_msg(%struct.applespi_data* %43)
  br label %45

45:                                               ; preds = %40, %37
  %46 = load %struct.applespi_data*, %struct.applespi_data** %4, align 8
  %47 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %46, i32 0, i32 3
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @applespi_send_cmd_msg(%struct.applespi_data*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
