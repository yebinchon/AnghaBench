; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842.c_check_constraints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842.c_check_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nx842_constraints = type { i64 }

@BOUNCE_BUFFER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nx842_constraints*)* @check_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_constraints(%struct.nx842_constraints* %0) #0 {
  %2 = alloca %struct.nx842_constraints*, align 8
  store %struct.nx842_constraints* %0, %struct.nx842_constraints** %2, align 8
  %3 = load %struct.nx842_constraints*, %struct.nx842_constraints** %2, align 8
  %4 = getelementptr inbounds %struct.nx842_constraints, %struct.nx842_constraints* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @BOUNCE_BUFFER_SIZE, align 8
  %7 = icmp sgt i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i64, i64* @BOUNCE_BUFFER_SIZE, align 8
  %10 = load %struct.nx842_constraints*, %struct.nx842_constraints** %2, align 8
  %11 = getelementptr inbounds %struct.nx842_constraints, %struct.nx842_constraints* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  br label %12

12:                                               ; preds = %8, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
