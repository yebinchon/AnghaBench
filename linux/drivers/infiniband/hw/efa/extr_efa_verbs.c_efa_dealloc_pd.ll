; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_dealloc_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_dealloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.efa_dev = type { i32 }
%struct.efa_pd = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Dealloc pd[%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efa_dealloc_pd(%struct.ib_pd* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_pd*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.efa_dev*, align 8
  %6 = alloca %struct.efa_pd*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %7 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %8 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.efa_dev* @to_edev(i32 %9)
  store %struct.efa_dev* %10, %struct.efa_dev** %5, align 8
  %11 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %12 = call %struct.efa_pd* @to_epd(%struct.ib_pd* %11)
  store %struct.efa_pd* %12, %struct.efa_pd** %6, align 8
  %13 = load %struct.efa_dev*, %struct.efa_dev** %5, align 8
  %14 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %13, i32 0, i32 0
  %15 = load %struct.efa_pd*, %struct.efa_pd** %6, align 8
  %16 = getelementptr inbounds %struct.efa_pd, %struct.efa_pd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ibdev_dbg(i32* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.efa_dev*, %struct.efa_dev** %5, align 8
  %20 = load %struct.efa_pd*, %struct.efa_pd** %6, align 8
  %21 = getelementptr inbounds %struct.efa_pd, %struct.efa_pd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @efa_pd_dealloc(%struct.efa_dev* %19, i32 %22)
  ret void
}

declare dso_local %struct.efa_dev* @to_edev(i32) #1

declare dso_local %struct.efa_pd* @to_epd(%struct.ib_pd*) #1

declare dso_local i32 @ibdev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @efa_pd_dealloc(%struct.efa_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
