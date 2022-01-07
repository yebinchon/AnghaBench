; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_alloc_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_alloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.siw_device = type { i32 }

@SIW_MAX_PD = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"now %d PD's(s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siw_alloc_pd(%struct.ib_pd* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca %struct.ib_udata*, align 8
  %6 = alloca %struct.siw_device*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %5, align 8
  %7 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %8 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.siw_device* @to_siw_dev(i32 %9)
  store %struct.siw_device* %10, %struct.siw_device** %6, align 8
  %11 = load %struct.siw_device*, %struct.siw_device** %6, align 8
  %12 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %11, i32 0, i32 0
  %13 = call i64 @atomic_inc_return(i32* %12)
  %14 = load i64, i64* @SIW_MAX_PD, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.siw_device*, %struct.siw_device** %6, align 8
  %18 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %17, i32 0, i32 0
  %19 = call i32 @atomic_dec(i32* %18)
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %28

22:                                               ; preds = %2
  %23 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %24 = load %struct.siw_device*, %struct.siw_device** %6, align 8
  %25 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %24, i32 0, i32 0
  %26 = call i32 @atomic_read(i32* %25)
  %27 = call i32 @siw_dbg_pd(%struct.ib_pd* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %22, %16
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.siw_device* @to_siw_dev(i32) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @siw_dbg_pd(%struct.ib_pd*, i8*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
