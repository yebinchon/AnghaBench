; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii902x.c_sii902x_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii902x.c_sii902x_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii902x = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sii902x*)* @sii902x_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sii902x_reset(%struct.sii902x* %0) #0 {
  %2 = alloca %struct.sii902x*, align 8
  store %struct.sii902x* %0, %struct.sii902x** %2, align 8
  %3 = load %struct.sii902x*, %struct.sii902x** %2, align 8
  %4 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %18

8:                                                ; preds = %1
  %9 = load %struct.sii902x*, %struct.sii902x** %2, align 8
  %10 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @gpiod_set_value(i32 %11, i32 1)
  %13 = call i32 @usleep_range(i32 150, i32 200)
  %14 = load %struct.sii902x*, %struct.sii902x** %2, align 8
  %15 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @gpiod_set_value(i32 %16, i32 0)
  br label %18

18:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
