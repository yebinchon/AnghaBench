; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-switch.c_switch_dtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-switch.c_switch_dtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.switch_ctx* }
%struct.switch_ctx = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*)* @switch_dtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switch_dtr(%struct.dm_target* %0) #0 {
  %2 = alloca %struct.dm_target*, align 8
  %3 = alloca %struct.switch_ctx*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %2, align 8
  %4 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %5 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %4, i32 0, i32 0
  %6 = load %struct.switch_ctx*, %struct.switch_ctx** %5, align 8
  store %struct.switch_ctx* %6, %struct.switch_ctx** %3, align 8
  br label %7

7:                                                ; preds = %13, %1
  %8 = load %struct.switch_ctx*, %struct.switch_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add i64 %10, -1
  store i64 %11, i64* %9, align 8
  %12 = icmp ne i64 %10, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %7
  %14 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %15 = load %struct.switch_ctx*, %struct.switch_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load %struct.switch_ctx*, %struct.switch_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dm_put_device(%struct.dm_target* %14, i32 %23)
  br label %7

25:                                               ; preds = %7
  %26 = load %struct.switch_ctx*, %struct.switch_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @vfree(i32 %28)
  %30 = load %struct.switch_ctx*, %struct.switch_ctx** %3, align 8
  %31 = call i32 @kfree(%struct.switch_ctx* %30)
  ret void
}

declare dso_local i32 @dm_put_device(%struct.dm_target*, i32) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @kfree(%struct.switch_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
