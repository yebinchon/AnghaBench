; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_control.c_gb_control_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_control.c_gb_control_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.gb_control = type { %struct.gb_control*, %struct.gb_control*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @gb_control_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_control_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.gb_control*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.gb_control* @to_gb_control(%struct.device* %4)
  store %struct.gb_control* %5, %struct.gb_control** %3, align 8
  %6 = load %struct.gb_control*, %struct.gb_control** %3, align 8
  %7 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @gb_connection_destroy(i32 %8)
  %10 = load %struct.gb_control*, %struct.gb_control** %3, align 8
  %11 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %10, i32 0, i32 1
  %12 = load %struct.gb_control*, %struct.gb_control** %11, align 8
  %13 = call i32 @kfree(%struct.gb_control* %12)
  %14 = load %struct.gb_control*, %struct.gb_control** %3, align 8
  %15 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %14, i32 0, i32 0
  %16 = load %struct.gb_control*, %struct.gb_control** %15, align 8
  %17 = call i32 @kfree(%struct.gb_control* %16)
  %18 = load %struct.gb_control*, %struct.gb_control** %3, align 8
  %19 = call i32 @kfree(%struct.gb_control* %18)
  ret void
}

declare dso_local %struct.gb_control* @to_gb_control(%struct.device*) #1

declare dso_local i32 @gb_connection_destroy(i32) #1

declare dso_local i32 @kfree(%struct.gb_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
