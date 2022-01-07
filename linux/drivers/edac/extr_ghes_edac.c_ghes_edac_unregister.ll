; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_ghes_edac.c_ghes_edac_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_ghes_edac.c_ghes_edac_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mem_ctl_info* }
%struct.mem_ctl_info = type { i32 }
%struct.ghes = type { i32 }

@ghes_pvt = common dso_local global %struct.TYPE_2__* null, align 8
@ghes_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghes_edac_unregister(%struct.ghes* %0) #0 {
  %2 = alloca %struct.ghes*, align 8
  %3 = alloca %struct.mem_ctl_info*, align 8
  store %struct.ghes* %0, %struct.ghes** %2, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ghes_pvt, align 8
  %5 = icmp ne %struct.TYPE_2__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %21

7:                                                ; preds = %1
  %8 = call i64 @atomic_dec_return(i32* @ghes_init)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %21

11:                                               ; preds = %7
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ghes_pvt, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %13, align 8
  store %struct.mem_ctl_info* %14, %struct.mem_ctl_info** %3, align 8
  store %struct.TYPE_2__* null, %struct.TYPE_2__** @ghes_pvt, align 8
  %15 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %16 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @edac_mc_del_mc(i32 %17)
  %19 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %20 = call i32 @edac_mc_free(%struct.mem_ctl_info* %19)
  br label %21

21:                                               ; preds = %11, %10, %6
  ret void
}

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @edac_mc_del_mc(i32) #1

declare dso_local i32 @edac_mc_free(%struct.mem_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
