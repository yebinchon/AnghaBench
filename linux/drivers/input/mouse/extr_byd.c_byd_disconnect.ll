; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_byd.c_byd_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_byd.c_byd_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.byd_data* }
%struct.byd_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*)* @byd_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @byd_disconnect(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca %struct.byd_data*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %4 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %5 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %4, i32 0, i32 0
  %6 = load %struct.byd_data*, %struct.byd_data** %5, align 8
  store %struct.byd_data* %6, %struct.byd_data** %3, align 8
  %7 = load %struct.byd_data*, %struct.byd_data** %3, align 8
  %8 = icmp ne %struct.byd_data* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.byd_data*, %struct.byd_data** %3, align 8
  %11 = getelementptr inbounds %struct.byd_data, %struct.byd_data* %10, i32 0, i32 0
  %12 = call i32 @del_timer(i32* %11)
  %13 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %14 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %13, i32 0, i32 0
  %15 = load %struct.byd_data*, %struct.byd_data** %14, align 8
  %16 = call i32 @kfree(%struct.byd_data* %15)
  %17 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %18 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %17, i32 0, i32 0
  store %struct.byd_data* null, %struct.byd_data** %18, align 8
  br label %19

19:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @kfree(%struct.byd_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
