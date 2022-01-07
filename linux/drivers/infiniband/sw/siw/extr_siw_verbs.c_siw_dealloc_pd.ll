; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_dealloc_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_dealloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.siw_device = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"free PD\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @siw_dealloc_pd(%struct.ib_pd* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_pd*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.siw_device*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %6 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %7 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.siw_device* @to_siw_dev(i32 %8)
  store %struct.siw_device* %9, %struct.siw_device** %5, align 8
  %10 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %11 = call i32 @siw_dbg_pd(%struct.ib_pd* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.siw_device*, %struct.siw_device** %5, align 8
  %13 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %12, i32 0, i32 0
  %14 = call i32 @atomic_dec(i32* %13)
  ret void
}

declare dso_local %struct.siw_device* @to_siw_dev(i32) #1

declare dso_local i32 @siw_dbg_pd(%struct.ib_pd*, i8*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
