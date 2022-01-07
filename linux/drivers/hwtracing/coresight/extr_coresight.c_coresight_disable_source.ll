; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight.c_coresight_disable_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight.c_coresight_disable_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.coresight_device*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coresight_device*)* @coresight_disable_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coresight_disable_source(%struct.coresight_device* %0) #0 {
  %2 = alloca %struct.coresight_device*, align 8
  store %struct.coresight_device* %0, %struct.coresight_device** %2, align 8
  %3 = load %struct.coresight_device*, %struct.coresight_device** %2, align 8
  %4 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @atomic_dec_return(i32 %5)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load %struct.coresight_device*, %struct.coresight_device** %2, align 8
  %10 = call %struct.TYPE_2__* @source_ops(%struct.coresight_device* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.coresight_device*, i32*)*, i32 (%struct.coresight_device*, i32*)** %11, align 8
  %13 = icmp ne i32 (%struct.coresight_device*, i32*)* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = load %struct.coresight_device*, %struct.coresight_device** %2, align 8
  %16 = call %struct.TYPE_2__* @source_ops(%struct.coresight_device* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.coresight_device*, i32*)*, i32 (%struct.coresight_device*, i32*)** %17, align 8
  %19 = load %struct.coresight_device*, %struct.coresight_device** %2, align 8
  %20 = call i32 %18(%struct.coresight_device* %19, i32* null)
  br label %21

21:                                               ; preds = %14, %8
  %22 = load %struct.coresight_device*, %struct.coresight_device** %2, align 8
  %23 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.coresight_device*, %struct.coresight_device** %2, align 8
  %26 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  ret i32 %30
}

declare dso_local i64 @atomic_dec_return(i32) #1

declare dso_local %struct.TYPE_2__* @source_ops(%struct.coresight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
