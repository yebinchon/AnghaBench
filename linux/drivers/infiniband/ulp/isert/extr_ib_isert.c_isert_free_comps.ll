; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_free_comps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_free_comps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isert_device = type { i32, %struct.isert_comp* }
%struct.isert_comp = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isert_device*)* @isert_free_comps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isert_free_comps(%struct.isert_device* %0) #0 {
  %2 = alloca %struct.isert_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.isert_comp*, align 8
  store %struct.isert_device* %0, %struct.isert_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %28, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.isert_device*, %struct.isert_device** %2, align 8
  %8 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %5
  %12 = load %struct.isert_device*, %struct.isert_device** %2, align 8
  %13 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %12, i32 0, i32 1
  %14 = load %struct.isert_comp*, %struct.isert_comp** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.isert_comp, %struct.isert_comp* %14, i64 %16
  store %struct.isert_comp* %17, %struct.isert_comp** %4, align 8
  %18 = load %struct.isert_comp*, %struct.isert_comp** %4, align 8
  %19 = getelementptr inbounds %struct.isert_comp, %struct.isert_comp* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %11
  %23 = load %struct.isert_comp*, %struct.isert_comp** %4, align 8
  %24 = getelementptr inbounds %struct.isert_comp, %struct.isert_comp* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @ib_free_cq(i64 %25)
  br label %27

27:                                               ; preds = %22, %11
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %5

31:                                               ; preds = %5
  %32 = load %struct.isert_device*, %struct.isert_device** %2, align 8
  %33 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %32, i32 0, i32 1
  %34 = load %struct.isert_comp*, %struct.isert_comp** %33, align 8
  %35 = call i32 @kfree(%struct.isert_comp* %34)
  ret void
}

declare dso_local i32 @ib_free_cq(i64) #1

declare dso_local i32 @kfree(%struct.isert_comp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
