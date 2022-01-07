; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max197.c_max197_set_unipolarity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max197.c_max197_set_unipolarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max197_data = type { i32* }

@MAX197_BIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max197_data*, i32)* @max197_set_unipolarity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max197_set_unipolarity(%struct.max197_data* %0, i32 %1) #0 {
  %3 = alloca %struct.max197_data*, align 8
  %4 = alloca i32, align 4
  store %struct.max197_data* %0, %struct.max197_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @MAX197_BIP, align 4
  %6 = xor i32 %5, -1
  %7 = load %struct.max197_data*, %struct.max197_data** %3, align 8
  %8 = getelementptr inbounds %struct.max197_data, %struct.max197_data* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %6
  store i32 %14, i32* %12, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
