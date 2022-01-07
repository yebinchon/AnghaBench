; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_main.c_mthca_close_hca.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_main.c_mthca_close_hca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MTHCA_FLAG_NO_LAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mthca_dev*)* @mthca_close_hca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mthca_close_hca(%struct.mthca_dev* %0) #0 {
  %2 = alloca %struct.mthca_dev*, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %2, align 8
  %3 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %4 = call i32 @mthca_CLOSE_HCA(%struct.mthca_dev* %3, i32 0)
  %5 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %6 = call i64 @mthca_is_memfree(%struct.mthca_dev* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %1
  %9 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %10 = call i32 @mthca_free_icms(%struct.mthca_dev* %9)
  %11 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %12 = call i32 @mthca_UNMAP_FA(%struct.mthca_dev* %11)
  %13 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %14 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %15 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mthca_free_icm(%struct.mthca_dev* %13, i32 %18, i32 0)
  %20 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %21 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MTHCA_FLAG_NO_LAM, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %8
  %27 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %28 = call i32 @mthca_DISABLE_LAM(%struct.mthca_dev* %27)
  br label %29

29:                                               ; preds = %26, %8
  br label %33

30:                                               ; preds = %1
  %31 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %32 = call i32 @mthca_SYS_DIS(%struct.mthca_dev* %31)
  br label %33

33:                                               ; preds = %30, %29
  ret void
}

declare dso_local i32 @mthca_CLOSE_HCA(%struct.mthca_dev*, i32) #1

declare dso_local i64 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_free_icms(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_UNMAP_FA(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_free_icm(%struct.mthca_dev*, i32, i32) #1

declare dso_local i32 @mthca_DISABLE_LAM(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_SYS_DIS(%struct.mthca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
