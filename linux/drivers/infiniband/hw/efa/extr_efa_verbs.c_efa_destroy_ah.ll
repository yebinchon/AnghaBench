; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_destroy_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_destroy_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.efa_dev = type { i32 }
%struct.efa_ah = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Destroy ah[%d]\0A\00", align 1
@RDMA_DESTROY_AH_SLEEPABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Destroy address handle is not supported in atomic context\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efa_destroy_ah(%struct.ib_ah* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_ah*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.efa_dev*, align 8
  %6 = alloca %struct.efa_ah*, align 8
  store %struct.ib_ah* %0, %struct.ib_ah** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ib_ah*, %struct.ib_ah** %3, align 8
  %8 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.efa_dev* @to_edev(i32 %11)
  store %struct.efa_dev* %12, %struct.efa_dev** %5, align 8
  %13 = load %struct.ib_ah*, %struct.ib_ah** %3, align 8
  %14 = call %struct.efa_ah* @to_eah(%struct.ib_ah* %13)
  store %struct.efa_ah* %14, %struct.efa_ah** %6, align 8
  %15 = load %struct.efa_dev*, %struct.efa_dev** %5, align 8
  %16 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %15, i32 0, i32 0
  %17 = load %struct.efa_ah*, %struct.efa_ah** %6, align 8
  %18 = getelementptr inbounds %struct.efa_ah, %struct.efa_ah* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i32*, i8*, ...) @ibdev_dbg(i32* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @RDMA_DESTROY_AH_SLEEPABLE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = load %struct.efa_dev*, %struct.efa_dev** %5, align 8
  %27 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %26, i32 0, i32 0
  %28 = call i32 (i32*, i8*, ...) @ibdev_dbg(i32* %27, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  br label %33

29:                                               ; preds = %2
  %30 = load %struct.efa_dev*, %struct.efa_dev** %5, align 8
  %31 = load %struct.efa_ah*, %struct.efa_ah** %6, align 8
  %32 = call i32 @efa_ah_destroy(%struct.efa_dev* %30, %struct.efa_ah* %31)
  br label %33

33:                                               ; preds = %29, %25
  ret void
}

declare dso_local %struct.efa_dev* @to_edev(i32) #1

declare dso_local %struct.efa_ah* @to_eah(%struct.ib_ah*) #1

declare dso_local i32 @ibdev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @efa_ah_destroy(%struct.efa_dev*, %struct.efa_ah*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
