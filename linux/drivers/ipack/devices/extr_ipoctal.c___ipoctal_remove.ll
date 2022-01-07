; ModuleID = '/home/carl/AnghaBench/linux/drivers/ipack/devices/extr_ipoctal.c___ipoctal_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ipack/devices/extr_ipoctal.c___ipoctal_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoctal = type { i32, %struct.ipoctal_channel*, %struct.TYPE_6__* }
%struct.ipoctal_channel = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_6__*)* }

@NR_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipoctal*)* @__ipoctal_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ipoctal_remove(%struct.ipoctal* %0) #0 {
  %2 = alloca %struct.ipoctal*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipoctal_channel*, align 8
  store %struct.ipoctal* %0, %struct.ipoctal** %2, align 8
  %5 = load %struct.ipoctal*, %struct.ipoctal** %2, align 8
  %6 = getelementptr inbounds %struct.ipoctal, %struct.ipoctal* %5, i32 0, i32 2
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %12, align 8
  %14 = load %struct.ipoctal*, %struct.ipoctal** %2, align 8
  %15 = getelementptr inbounds %struct.ipoctal, %struct.ipoctal* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = call i32 %13(%struct.TYPE_6__* %16)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %40, %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @NR_CHANNELS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %18
  %23 = load %struct.ipoctal*, %struct.ipoctal** %2, align 8
  %24 = getelementptr inbounds %struct.ipoctal, %struct.ipoctal* %23, i32 0, i32 1
  %25 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %25, i64 %27
  store %struct.ipoctal_channel* %28, %struct.ipoctal_channel** %4, align 8
  %29 = load %struct.ipoctal*, %struct.ipoctal** %2, align 8
  %30 = getelementptr inbounds %struct.ipoctal, %struct.ipoctal* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @tty_unregister_device(i32 %31, i32 %32)
  %34 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %4, align 8
  %35 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %34, i32 0, i32 0
  %36 = call i32 @tty_port_free_xmit_buf(i32* %35)
  %37 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %4, align 8
  %38 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %37, i32 0, i32 0
  %39 = call i32 @tty_port_destroy(i32* %38)
  br label %40

40:                                               ; preds = %22
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %18

43:                                               ; preds = %18
  %44 = load %struct.ipoctal*, %struct.ipoctal** %2, align 8
  %45 = getelementptr inbounds %struct.ipoctal, %struct.ipoctal* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @tty_unregister_driver(i32 %46)
  %48 = load %struct.ipoctal*, %struct.ipoctal** %2, align 8
  %49 = getelementptr inbounds %struct.ipoctal, %struct.ipoctal* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @put_tty_driver(i32 %50)
  %52 = load %struct.ipoctal*, %struct.ipoctal** %2, align 8
  %53 = call i32 @kfree(%struct.ipoctal* %52)
  ret void
}

declare dso_local i32 @tty_unregister_device(i32, i32) #1

declare dso_local i32 @tty_port_free_xmit_buf(i32*) #1

declare dso_local i32 @tty_port_destroy(i32*) #1

declare dso_local i32 @tty_unregister_driver(i32) #1

declare dso_local i32 @put_tty_driver(i32) #1

declare dso_local i32 @kfree(%struct.ipoctal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
