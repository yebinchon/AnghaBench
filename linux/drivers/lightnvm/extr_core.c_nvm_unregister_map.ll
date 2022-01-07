; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_unregister_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_unregister_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_dev = type { %struct.TYPE_2__, %struct.nvm_dev_map* }
%struct.TYPE_2__ = type { i32 }
%struct.nvm_dev_map = type { %struct.nvm_dev_map*, %struct.nvm_dev_map* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvm_dev*)* @nvm_unregister_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvm_unregister_map(%struct.nvm_dev* %0) #0 {
  %2 = alloca %struct.nvm_dev*, align 8
  %3 = alloca %struct.nvm_dev_map*, align 8
  %4 = alloca i32, align 4
  store %struct.nvm_dev* %0, %struct.nvm_dev** %2, align 8
  %5 = load %struct.nvm_dev*, %struct.nvm_dev** %2, align 8
  %6 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %5, i32 0, i32 1
  %7 = load %struct.nvm_dev_map*, %struct.nvm_dev_map** %6, align 8
  store %struct.nvm_dev_map* %7, %struct.nvm_dev_map** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %25, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.nvm_dev*, %struct.nvm_dev** %2, align 8
  %11 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %8
  %16 = load %struct.nvm_dev_map*, %struct.nvm_dev_map** %3, align 8
  %17 = getelementptr inbounds %struct.nvm_dev_map, %struct.nvm_dev_map* %16, i32 0, i32 0
  %18 = load %struct.nvm_dev_map*, %struct.nvm_dev_map** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.nvm_dev_map, %struct.nvm_dev_map* %18, i64 %20
  %22 = getelementptr inbounds %struct.nvm_dev_map, %struct.nvm_dev_map* %21, i32 0, i32 1
  %23 = load %struct.nvm_dev_map*, %struct.nvm_dev_map** %22, align 8
  %24 = call i32 @kfree(%struct.nvm_dev_map* %23)
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %8

28:                                               ; preds = %8
  %29 = load %struct.nvm_dev_map*, %struct.nvm_dev_map** %3, align 8
  %30 = getelementptr inbounds %struct.nvm_dev_map, %struct.nvm_dev_map* %29, i32 0, i32 0
  %31 = load %struct.nvm_dev_map*, %struct.nvm_dev_map** %30, align 8
  %32 = call i32 @kfree(%struct.nvm_dev_map* %31)
  %33 = load %struct.nvm_dev_map*, %struct.nvm_dev_map** %3, align 8
  %34 = call i32 @kfree(%struct.nvm_dev_map* %33)
  ret void
}

declare dso_local i32 @kfree(%struct.nvm_dev_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
