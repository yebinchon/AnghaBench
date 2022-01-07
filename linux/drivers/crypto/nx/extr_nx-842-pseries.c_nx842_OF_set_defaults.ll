; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842-pseries.c_nx842_OF_set_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842-pseries.c_nx842_OF_set_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nx842_devdata = type { i64, i64, i64 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nx842_devdata*)* @nx842_OF_set_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nx842_OF_set_defaults(%struct.nx842_devdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nx842_devdata*, align 8
  store %struct.nx842_devdata* %0, %struct.nx842_devdata** %3, align 8
  %4 = load %struct.nx842_devdata*, %struct.nx842_devdata** %3, align 8
  %5 = icmp ne %struct.nx842_devdata* %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load %struct.nx842_devdata*, %struct.nx842_devdata** %3, align 8
  %8 = getelementptr inbounds %struct.nx842_devdata, %struct.nx842_devdata* %7, i32 0, i32 2
  store i64 0, i64* %8, align 8
  %9 = load %struct.nx842_devdata*, %struct.nx842_devdata** %3, align 8
  %10 = getelementptr inbounds %struct.nx842_devdata, %struct.nx842_devdata* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load %struct.nx842_devdata*, %struct.nx842_devdata** %3, align 8
  %12 = getelementptr inbounds %struct.nx842_devdata, %struct.nx842_devdata* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  store i32 0, i32* %2, align 4
  br label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %13, %6
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
