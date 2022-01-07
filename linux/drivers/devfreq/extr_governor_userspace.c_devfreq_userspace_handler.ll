; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_governor_userspace.c_devfreq_userspace_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_governor_userspace.c_devfreq_userspace_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devfreq*, i32, i8*)* @devfreq_userspace_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfreq_userspace_handler(%struct.devfreq* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.devfreq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.devfreq* %0, %struct.devfreq** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %15 [
    i32 129, label %9
    i32 128, label %12
  ]

9:                                                ; preds = %3
  %10 = load %struct.devfreq*, %struct.devfreq** %4, align 8
  %11 = call i32 @userspace_init(%struct.devfreq* %10)
  store i32 %11, i32* %7, align 4
  br label %16

12:                                               ; preds = %3
  %13 = load %struct.devfreq*, %struct.devfreq** %4, align 8
  %14 = call i32 @userspace_exit(%struct.devfreq* %13)
  br label %16

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15, %12, %9
  %17 = load i32, i32* %7, align 4
  ret i32 %17
}

declare dso_local i32 @userspace_init(%struct.devfreq*) #1

declare dso_local i32 @userspace_exit(%struct.devfreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
